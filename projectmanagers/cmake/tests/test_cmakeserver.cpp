/* KDevelop CMake Support
 *
 * Copyright 2006 Matt Rogers <mattr@kde.org>
 *
 * This program is free software; you can redistribute it and/or
 * modify it under the terms of the GNU General Public License
 * as published by the Free Software Foundation; either version 2
 * of the License, or (at your option) any later version.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 * You should have received a copy of the GNU General Public License
 * along with this program; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA
 * 02110-1301, USA.
 */

#include <cmakeserver.h>
#include "testhelpers.h"
#include <QtTest>

using namespace KDevelop;

class CMakeServerTest : public QObject
{
Q_OBJECT
private slots:
    void testRun()
    {
        CMakeServer server(this);
        QSignalSpy spyConnected(&server, &CMakeServer::connected);
        QVERIFY(server.isServerAvailable() || spyConnected.wait());

        QSignalSpy spy(&server, &CMakeServer::response);
        server.hello();
        QVERIFY(spy.wait());

        QJsonObject codeModel;
        int errors = 0;
        connect(&server, &CMakeServer::response, this, [&errors, &codeModel, &server](const QJsonObject &response) {
            qDebug() << "received..." << response;
            if (response.value("inReplyTo") == QLatin1String("configure") && response.value("type") == QLatin1String("reply"))
                server.compute();
            else if (response.value("inReplyTo") == QLatin1String("compute") && response.value("type") == QLatin1String("reply"))
                server.codemodel();
            else if(response.value("inReplyTo") == QLatin1String("codemodel") && response.value("type") == QLatin1String("reply"))
                codeModel = response;
            else if(response.value("type") == QLatin1String("error"))
                ++errors;
        });

        const QString name = "single_subdirectory";
        const auto paths = projectPaths(name);
        const QString builddir = QStringLiteral(CMAKE_TESTS_BINARY_DIR "/cmake-server-test-builddir/") + name;
        QVERIFY(QDir(builddir).removeRecursively());
        QVERIFY(QDir(builddir).mkpath(builddir));

        QVERIFY(spy.wait());
        server.handshake(paths.sourceDir, Path(builddir));
        QVERIFY(spy.wait());
        server.configure({});
        while(codeModel.isEmpty())
            QVERIFY(spy.wait());
        QCOMPARE(errors, 1);
        QVERIFY(!codeModel.isEmpty());
        qDebug() << "codemodel" << codeModel;
    }
};

QTEST_MAIN( CMakeServerTest )

#include "test_cmakeserver.moc"
