/***************************************************************************
                          cfinddoctextdlg.cpp  -  description                              
                             -------------------                                         
    begin                : Thu Feb 25 1999                                           
    copyright            : (C) 1999 by Ralf Nolden
    email                : Ralf.Nolden@post.rwth-aachen.de

    Adapted from finddlg.h  and finddlg.cpp of khelp
    Copyright (C) 1998 Martin Jones (mjones@kde.org)

 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   * 
 *                                                                         *
 ***************************************************************************/

#include <qpushbutton.h>
#include <qcheckbox.h>
#include <qlabel.h>
#include <qlineedit.h>
#include <qlayout.h>

#include <kapp.h>

#include "cfinddoctextdlg.h"

CFindDocTextDlg::CFindDocTextDlg(QWidget *parent, const char *name ) : QDialog(parent,name,this) {
    // mimimise initial size of dialog
//    resize( 0, 0 );
    icon_loader = KApplication::getKApplication()->getIconLoader();
    resize(250,120);
    setCaption(i18n("Search for Help on..."));
    QPixmap question_pix = icon_loader->loadMiniIcon("contents.xpm");
    setIcon(question_pix);
    QVBoxLayout *vl = new QVBoxLayout( this, 15 );

    QHBoxLayout *hl = new QHBoxLayout( 15 );
    vl->addLayout( hl );

    QLabel *label = new QLabel( i18n( "Search for:" ), this );
    label->setFixedSize( label->sizeHint() );

    QLineEdit *edit = new QLineEdit( this );
    edit->setFixedHeight( edit->sizeHint().height() );
    edit->setFocus();
    connect( edit, SIGNAL( textChanged( const char * ) ),
		    SLOT( slotTextChanged( const char * ) ) );

    hl->addWidget( label );
    hl->addWidget( edit );

    hl = new QHBoxLayout;
    vl->addLayout( hl );

    hl->addStretch();

    hl = new QHBoxLayout( 15 );
    vl->addLayout( hl );

    QPushButton *btn = new QPushButton( i18n( "&Search" ), this );
    btn->setFixedSize( btn->sizeHint() );
    btn->setDefault( true );
    connect( btn, SIGNAL( clicked() ), this, SLOT( slotFind() ) );
    hl->addWidget( btn );

    hl->addStretch();

    btn = new QPushButton( i18n( "&Close" ), this );
    btn->setFixedSize( btn->sizeHint() );
    connect( btn, SIGNAL( clicked() ), this, SLOT( slotClose() ) );
    hl->addWidget( btn );

    vl->activate();
}
CFindDocTextDlg::~CFindDocTextDlg(){
}



void CFindDocTextDlg::slotTextChanged( const char *t )
{
    text = t;
}

void CFindDocTextDlg::slotClose()
{
    close();
}

void CFindDocTextDlg::slotFind()
{
    emit signalFind( text );
}













