//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, Sep 17, 2012  04:46:43 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

/**
 * Token literal values and constants.
 */
class ELParserConstants {

  /** End of File. */
  static const int EOF = 0;
  /** RegularExpression Id. */
  static const int LITERAL_EXPRESSION = 1;
  /** RegularExpression Id. */
  static const int START_DYNAMIC_EXPRESSION = 2;
  /** RegularExpression Id. */
  static const int START_DEFERRED_EXPRESSION = 3;
  /** RegularExpression Id. */
  static const int INTEGER_LITERAL = 8;
  /** RegularExpression Id. */
  static const int FLOATING_POINT_LITERAL = 9;
  /** RegularExpression Id. */
  static const int EXPONENT = 10;
  /** RegularExpression Id. */
  static const int STRING_LITERAL = 11;
  /** RegularExpression Id. */
  static const int TRUE = 12;
  /** RegularExpression Id. */
  static const int FALSE = 13;
  /** RegularExpression Id. */
  static const int NULL = 14;
  /** RegularExpression Id. */
  static const int END_EXPRESSION = 15;
  /** RegularExpression Id. */
  static const int DOT = 16;
  /** RegularExpression Id. */
  static const int LPAREN = 17;
  /** RegularExpression Id. */
  static const int RPAREN = 18;
  /** RegularExpression Id. */
  static const int LBRACK = 19;
  /** RegularExpression Id. */
  static const int RBRACK = 20;
  /** RegularExpression Id. */
  static const int COLON = 21;
  /** RegularExpression Id. */
  static const int COMMA = 22;
  /** RegularExpression Id. */
  static const int GT0 = 23;
  /** RegularExpression Id. */
  static const int GT1 = 24;
  /** RegularExpression Id. */
  static const int LT0 = 25;
  /** RegularExpression Id. */
  static const int LT1 = 26;
  /** RegularExpression Id. */
  static const int GE0 = 27;
  /** RegularExpression Id. */
  static const int GE1 = 28;
  /** RegularExpression Id. */
  static const int LE0 = 29;
  /** RegularExpression Id. */
  static const int LE1 = 30;
  /** RegularExpression Id. */
  static const int EQ0 = 31;
  /** RegularExpression Id. */
  static const int EQ1 = 32;
  /** RegularExpression Id. */
  static const int NE0 = 33;
  /** RegularExpression Id. */
  static const int NE1 = 34;
  /** RegularExpression Id. */
  static const int NOT0 = 35;
  /** RegularExpression Id. */
  static const int NOT1 = 36;
  /** RegularExpression Id. */
  static const int AND0 = 37;
  /** RegularExpression Id. */
  static const int AND1 = 38;
  /** RegularExpression Id. */
  static const int OR0 = 39;
  /** RegularExpression Id. */
  static const int OR1 = 40;
  /** RegularExpression Id. */
  static const int EMPTY = 41;
  /** RegularExpression Id. */
  static const int INSTANCEOF = 42;
  /** RegularExpression Id. */
  static const int MULT = 43;
  /** RegularExpression Id. */
  static const int PLUS = 44;
  /** RegularExpression Id. */
  static const int MINUS = 45;
  /** RegularExpression Id. */
  static const int QUESTIONMARK = 46;
  /** RegularExpression Id. */
  static const int DIV0 = 47;
  /** RegularExpression Id. */
  static const int DIV1 = 48;
  /** RegularExpression Id. */
  static const int MOD0 = 49;
  /** RegularExpression Id. */
  static const int MOD1 = 50;
  /** RegularExpression Id. */
  static const int IDENTIFIER = 51;
  /** RegularExpression Id. */
  static const int FUNCTIONSUFFIX = 52;
  /** RegularExpression Id. */
  static const int IMPL_OBJ_START = 53;
  /** RegularExpression Id. */
  static const int LETTER = 54;
  /** RegularExpression Id. */
  static const int DIGIT = 55;
  /** RegularExpression Id. */
  static const int ILLEGAL_CHARACTER = 56;

  //henrichen: support {k1:v1, k2:v2}
  static const int LBRACE = 57;
  static const int RBRACE = 58;

  /** Lexical state. */
  static const int DEFAULT = 0;
  /** Lexical state. */
  static const int IN_EXPRESSION = 1;

  /** Literal token values. */
  static const List<String> tokenImage = const [
    "<EOF>",
    "<LITERAL_EXPRESSION>",
    "\"\${\"",
    "\"#{\"",
    "\" \"",
    "\"\\t\"",
    "\"\\n\"",
    "\"\\r\"",
    "<INTEGER_LITERAL>",
    "<FLOATING_POINT_LITERAL>",
    "<EXPONENT>",
    "<STRING_LITERAL>",
    "\"true\"",
    "\"false\"",
    "\"null\"",
    "\"}\"",
    "\".\"",
    "\"(\"",
    "\")\"",
    "\"[\"",
    "\"]\"",
    "\":\"",
    "\",\"",
    "\">\"",
    "\"gt\"",
    "\"<\"",
    "\"lt\"",
    "\">=\"",
    "\"ge\"",
    "\"<=\"",
    "\"le\"",
    "\"==\"",
    "\"eq\"",
    "\"!=\"",
    "\"ne\"",
    "\"!\"",
    "\"not\"",
    "\"&&\"",
    "\"and\"",
    "\"||\"",
    "\"or\"",
    "\"empty\"",
    "\"instanceof\"",
    "\"*\"",
    "\"+\"",
    "\"-\"",
    "\"?\"",
    "\"/\"",
    "\"div\"",
    "\"%\"",
    "\"mod\"",
    "<IDENTIFIER>",
    "<FUNCTIONSUFFIX>",
    "\"#\"",
    "<LETTER>",
    "<DIGIT>",
    "<ILLEGAL_CHARACTER>",
    "\"{\"",
    "\"}\""
  ];

}
