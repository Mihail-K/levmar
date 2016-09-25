/*
////////////////////////////////////////////////////////////////////////////////////
//
//  Prototypes and definitions for the Levenberg - Marquardt minimization algorithm
//  Copyright (C) 2004  Manolis Lourakis (lourakis at ics forth gr)
//  Institute of Computer Science, Foundation for Research & Technology - Hellas
//  Heraklion, Crete, Greece.
//
//  This program is free software; you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation; either version 2 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
////////////////////////////////////////////////////////////////////////////////////
*/

module levmar;

public import dlevmar;
public import slevmar;

enum LM_OPTS_SZ     = 5; // max(4, 5)
enum LM_INFO_SZ     = 10;
enum LM_ERROR       = -1;
enum LM_INIT_MU     = 1E-03;
enum LM_STOP_THRESH = 1E-17;
enum LM_DIFF_DELTA  = 1E-06;
enum LM_VERSION     = "2.6 (November 2011)";

void levmar_PLASMA_setnbcores(int cores);
