/*
  Copyright (C) 2013 John McCutchan

  This software is provided 'as-is', without any express or implied
  warranty.  In no event will the authors be held liable for any damages
  arising from the use of this software.

  Permission is granted to anyone to use this software for any purpose,
  including commercial applications, and to alter it and redistribute it
  freely, subject to the following restrictions:

  1. The origin of this software must not be misrepresented; you must not
     claim that you wrote the original software. If you use this software
     in a product, an acknowledgment in the product documentation would be
     appreciated but is not required.
  2. Altered source versions must be plainly marked as such, and must not be
     misrepresented as being the original software.
  3. This notice may not be removed or altered from any source distribution.
*/

part of spectre;

class PrimitiveTopology extends Enum {
  /// Three vertex triangle primitive toplogy.
  static const int Triangles = WebGL.TRIANGLES;
  /// Two vertex line primitive topology.
  static const int Lines = WebGL.LINES;
  /// One vertex point primitive topology.
  static const int Points = WebGL.POINTS;

  static Map<String, int> _values = {
    'PrimitiveTopology.Triangles' : Triangles,
    'PrimitiveTopology.Lines' : Lines,
    'PrimitiveTopology.Points' : Points
  };

  /// Convert a [String] to a [PrimitiveTopology].
  static int parse(String name) => Enum._parse(_values, name);
  /// Convert a [PrimitiveTopology] to a [String].
  static String stringify(int value) => Enum._stringify(_values, value);
  /// Checks whether the value is a valid enumeration.
  static bool isValid(int value) => Enum._isValid(_values, value);
}