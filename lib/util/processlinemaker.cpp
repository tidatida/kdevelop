/* This file is part of the KDE project
   Copyright (C) 2002 John Firebaugh <jfirebaugh@kde.org>

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Library General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Library General Public License for more details.

   You should have received a copy of the GNU Library General Public License
   along with this library; see the file COPYING.LIB.  If not, write to
   the Free Software Foundation, Inc., 59 Temple Place - Suite 330,
   Boston, MA 02111-1307, USA.
*/

#include "processlinemaker.h"

#include <k3process.h>
#include <QString>

ProcessLineMaker::ProcessLineMaker()
{
}

ProcessLineMaker::ProcessLineMaker( const K3Process* proc )
{
    connect(proc, SIGNAL(receivedStdout(K3Process*,char*,int)),
            this, SLOT(slotReceivedStdout(K3Process*,char*,int)) );
    
    connect(proc, SIGNAL(receivedStderr(K3Process*,char*,int)),
            this, SLOT(slotReceivedStderr(K3Process*,char*,int)) );
}

void ProcessLineMaker::slotReceivedStdout( const QString& s )
{
    // Flush stderr buffer
    if (!stderrbuf.isEmpty()) {
        emit receivedStderrLine(stderrbuf);
        stderrbuf = "";
    }
    
    stdoutbuf += s;
    int pos;
    while ( (pos = stdoutbuf.indexOf('\n')) != -1) {
        QString line = stdoutbuf.left(pos);
        emit receivedStdoutLine(line);
        stdoutbuf.remove(0, pos+1);
    }
}

void ProcessLineMaker::slotReceivedStdout( K3Process*, char *buffer, int buflen )
{
    slotReceivedStdout( QString::fromLocal8Bit( buffer, buflen ) );
}

void ProcessLineMaker::slotReceivedStdout( const char* buffer )
{
    slotReceivedStdout( QString::fromLocal8Bit( buffer ) );
}

void ProcessLineMaker::slotReceivedStderr( const QString& s )
{
    // Flush stdout buffer
    if (!stdoutbuf.isEmpty()) {
        emit receivedStdoutLine(stdoutbuf);
        stdoutbuf = "";
    }
    
    stderrbuf += s;
    int pos;
    while ( (pos = stderrbuf.indexOf('\n')) != -1) {
        QString line = stderrbuf.left(pos);
        emit receivedStderrLine(line);
        stderrbuf.remove(0, pos+1);
    }
}

void ProcessLineMaker::slotReceivedStderr( K3Process*, char *buffer, int buflen )
{
    slotReceivedStderr( QString::fromLocal8Bit( buffer, buflen ) );
}

void ProcessLineMaker::slotReceivedStderr( const char* buffer )
{
    slotReceivedStderr( QString::fromLocal8Bit( buffer ) );
}

void ProcessLineMaker::clearBuffers( )
{
	stderrbuf = "";
	stdoutbuf = "";
}

#include "processlinemaker.moc"
