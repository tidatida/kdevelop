/***************************************************************************
                          parsedattribute.cpp  -  description
                             -------------------
    begin                : Mon Mar 15 1999
    copyright            : (C) 1999 by Jonas Nordin
    email                : jonas.nordin@syncom.se
   
 ***************************************************************************/

/***************************************************************************
 *                                                                         *
 *   This program is free software; you can redistribute it and/or modify  *
 *   it under the terms of the GNU General Public License as published by  *
 *   the Free Software Foundation; either version 2 of the License, or     *
 *   (at your option) any later version.                                   * 
 *                                                                         *
 ***************************************************************************/

#include <stdio.h>
#include <iostream.h>
#include <qstring.h>
#include "parsedattribute.h"
#include "programmingbycontract.h"

/*********************************************************************
 *                                                                   *
 *                     CREATION RELATED METHODS                      *
 *                                                                   *
 ********************************************************************/

/*------------------------------- ParsedAttribute::ParsedAttribute()
 * ParsedAttribute()
 *   Constructor.
 *
 * Parameters:
 *   -
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
ParsedAttribute::ParsedAttribute()
{
  setItemType( PIT_ATTRIBUTE );
  isConst = false;
  isStatic = false;
  isInHFile = true;
  posName=-1; // place it at the end
}

/*----------------------------- ParsedAttribute::~ParsedAttribute()
 * ~ParsedAttribute()
 *   Destructor.
 *
 * Parameters:
 *   -
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
ParsedAttribute::~ParsedAttribute()
{
}

/*********************************************************************
 *                                                                   *
 *                    METHODS TO SET ATTRIBUTE VALUES                *
 *                                                                   *
 ********************************************************************/

/*--------------------------------------- ParsedAttribute::setType()
 * setType()
 *   Set the name of the class.
 *
 * Parameters:
 *   aName            The new name.
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::setType( const QString &aType )
{
  REQUIRE( "Valid type", aType != NULL );

  type = aType;
  type = type.stripWhiteSpace();
}

/*------------------------------------ ParsedAttribute::setNamePos()
 * setNamePos()
 *   Set the name of the class.
 *
 * Parameters:
 *   pos            The new name.
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::setNamePos( int pos )
{
  posName = pos;
}

/*---------------------------------- ParsedAttribute::setIsInHFile()
 * setIsInHFile()
 *   Set the name of the class.
 *
 * Parameters:
 *   aName            The new name.
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::setIsInHFile( bool aState )
{
  isInHFile = aState;
}

/*---------------------------------- ParsedAttribute::setIsStatic()
 * setIsStatic()
 *   Set the attributes static status.
 *
 * Parameters:
 *   aState           Is the attribute static?
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::setIsStatic( bool aState )
{
  isStatic = aState;
}

/*------------------------------------- ParsedAttribute::setIsConst()
 * setIsConst()
 *   Set the attributes const status.
 *
 * Parameters:
 *   aState           Is the attribute const?
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::setIsConst( bool aState )
{
  isConst = aState;
}

/*********************************************************************
 *                                                                   *
 *                           PUBLIC METHODS                          *
 *                                                                   *
 ********************************************************************/

/*------------------------------------------- ParsedAttribute::copy()
 * copy()
 *   Make this object a copy of the supplied object. 
 *
 * Parameters:
 *   anAttribute      Attribute to copy.
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::copy( ParsedAttribute *anAttribute )
{
  ParsedItem::copy( anAttribute );

  setNamePos( anAttribute->posName );
  setType( anAttribute->type );
  setIsStatic( anAttribute->isStatic );
  setIsConst( anAttribute->isConst );
}

/*-------------------------------------- ParsedAttribute::asString()
 * asString()
 *   Return the object as a string(for tooltips etc).
 *
 * Parameters:
 *   str              String to store the result in.
 *
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
QString ParsedAttribute::asString()
{
  QString str = type;

  if (posName>=0 && ((unsigned)posName)<type.length())
    str = str.left(posName);
  else
    str += " ";

  if (!name.isEmpty())
  {
    str += name;
  }

  if (posName>=0 && ((unsigned)posName)<type.length())
    str += type.mid(posName, type.length()-posName);

  return str;
}

/*------------------------------------------- ParsedAttribute::out()
 * out()
 *   Output this object to stdout.
 *
 * Parameters:
 *   -
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
void ParsedAttribute::out()
{
  QString buf;
  QString attrString;

  if( !comment.isEmpty() )
    cout << "    " << comment << "\n";

  cout << "    ";

  switch( exportScope )
  {
    case PIE_PUBLIC:
      cout << "public ";
      break;
    case PIE_PROTECTED:
      cout << "protected ";
      break;
    case PIE_PRIVATE:
      cout << "private ";
      break;
    case PIE_GLOBAL:
      cout << "";
      break;
  }

  // cout << ( type.isEmpty() ? " " : type.data() ) << " " << name;
  cout << asString();
  buf.sprintf("%d", declaredOnLine );
  cout << " @ line " << buf << " - ";
  buf.sprintf("%d", declarationEndsOnLine );
  cout << buf << "\n";
}

/*********************************************************************
 *                                                                   *
 *                           PUBLIC QUERIES                          *
 *                                                                   *
 ********************************************************************/

/*--------------------------------------- ParsedAttribute::isEqual()
 * isEqual()
 *   Is the supplied attribute equal to this one(regarding type and 
 *   name)?
 *
 * Parameters:
 *   attr           Attribute to compare.
 *
 * Returns:
 *   bool           Are they equal?
 *-----------------------------------------------------------------*/
bool ParsedAttribute::isEqual( ParsedAttribute &attr )
{
  return (name == attr.name && type == attr.type );
}

/*--------------------------------- ParsedAttribute::asPersistantString()
 * asPersistantString()
 *   Return a string made for persistant storage.
 *
 * Parameters:
 *   -
 * Returns:
 *   -
 *-----------------------------------------------------------------*/
QString ParsedAttribute::asPersistantString()
{
  QString str = name;
  str += "\n";
  str += type;
  str += "\n";
  str += definedInFile;
  str += "\n";
  str += declaredInScope;
  str += "\n";
  str += QString::number(definedOnLine);
  str += "\n";
  str += QString::number(posName);
  str += "\n";
  str += ( isInHFile ? "true" : "false" );
  str += "\n";
  str += ( isStatic ? "true" : "false" );
  str += "\n";
  str += ( isConst ? "true" : "false" );
  str += "\n";
  str += QString::number((int)exportScope);
  str += "\n";
  str += comment.find( "\n", false );
  str += "\n";
  str += comment;

  return str;
}
