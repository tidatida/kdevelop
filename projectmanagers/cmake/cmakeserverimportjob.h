/* KDevelop CMake Support
 *
 * Copyright 2014 Kevin Funk <kfunk@kde.org>
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

#ifndef CMAKESERVERIMPORTJOB_H
#define CMAKESERVERIMPORTJOB_H

#include <KJob>
#include "cmakeprojectdata.h"

namespace KDevelop
{
class IProject;
}

class CMakeServerImportJob : public KJob
{
    Q_OBJECT
    public:
        CMakeServerImportJob(KDevelop::IProject* project, QObject* parent);
        void start() override;

        KDevelop::IProject* project() const { return m_project; }

        CMakeProjectData projectData() const { return m_data; }

    private:
        QPointer<CMakeServer> m_server;
        KDevelop::IProject* m_project;

        CMakeProjectData m_data;
};

#endif // CMAKESERVERIMPORTJOB_H
