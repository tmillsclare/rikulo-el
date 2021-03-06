//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, Sep 17, 2012  03:28:41 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

/**
 * This exception is thrown when parse errors are encountered.
 * You can explicitly create objects of this exception type by
 * calling the method generateParseException in the generated
 * parser.
 *
 * You can modify this class to customize your error reporting
 * mechanisms so long as you retain the fields.
 */
class ParseException extends ExceptionImplementation {

  /**
   * This constructor is used by the method "generateParseException"
   * in the generated parser.  Calling this constructor generates
   * a new object of this type with the fields "currentToken_",
   * "expectedTokenSequences_", and "tokenImage_" set.
   */
  ParseException.fromToken(Token currentTokenVal,
                        List<List<int>> expectedTokenSequencesVal,
                        List<String> tokenImageVal)
      : super(_initialise(currentTokenVal, expectedTokenSequencesVal, tokenImageVal)) {

    this.currentToken_ = currentTokenVal;
    this.expectedTokenSequences_ = expectedTokenSequencesVal;
    this.tokenImage_ = tokenImageVal;
  }

  /** Constructor with message. */
  ParseException([String message])
      : super(message);

  /**
   * This is the last token that has been consumed successfully.  If
   * this object has been created due to a parse error, the token
   * followng this token will (therefore) be the first error token.
   */
  Token currentToken_;

  /**
   * Each entry in this array is an array of integers.  Each array
   * of integers represents a sequence of tokens (by their ordinal
   * values) that is expected at this point of the parse.
   */
  List<List<int>> expectedTokenSequences_;

  /**
   * This is a reference to the "tokenImage_" array of the generated
   * parser within which the parse error occurred.  This array is
   * defined in the generated ...Constants interface.
   */
  List<String> tokenImage_;

  String getMessage() => toString();

  /**
   * It uses "currentToken_" and "expectedTokenSequences_" to generate a parse
   * error message and returns it.  If this object has been created
   * due to a parse error, and you do not catch it (it gets thrown
   * from the parser) the correct error message
   * gets displayed.
   */
  static String _initialise(Token currentToken_,
                           List<List<int>> expectedTokenSequences_,
                           List<String> tokenImage) {
    String eol = "\n"; //String eol = System.getProperty("line.separator", "\n");
    StringBuffer expected = new StringBuffer();
    int maxSize = 0;
    for (int i = 0; i < expectedTokenSequences_.length; i++) {
      if (maxSize < expectedTokenSequences_[i].length) {
        maxSize = expectedTokenSequences_[i].length;
      }
      for (int j = 0; j < expectedTokenSequences_[i].length; j++) {
        expected.add(tokenImage[expectedTokenSequences_[i][j]]).add(' ');
      }
      if (expectedTokenSequences_[i][expectedTokenSequences_[i].length - 1] != 0) {
        expected.add("...");
      }
      expected.add(eol).add("    ");
    }
    StringBuffer retval = new StringBuffer("Encountered \"");
    Token tok = currentToken_.next_;
    for (int i = 0; i < maxSize; i++) {
      if (i != 0) retval.add(" ");
      if (tok.kind_ == 0) {
        retval.add(tokenImage[0]);
        break;
      }
      retval.add(" ").add(tokenImage[tok.kind_]);
      retval.add(" \"");
      retval.add(add_escapes(tok.image_));
      retval.add("\" ");
      tok = tok.next_;
    }
    retval.add("\" at line ").add(currentToken_.next_.beginLine_).add(", column ").add(currentToken_.next_.beginColumn_);
    retval.add(".").add(eol);
    if (expectedTokenSequences_.length == 1) {
      retval.add("Was expecting:").add(eol).add("    ");
    } else {
      retval.add("Was expecting one of:").add(eol).add("    ");
    }
    retval.add(expected.toString());
    return retval.toString();
  }

  /**
   * The end of line string for this machine.
   */
  String eol_ = "\n"; //System.getProperty("line.separator", "\n");

  /**
   * Used to convert raw characters to their escaped version
   * when these raw version cannot be used as part of an ASCII
   * string literal.
   */
  static String add_escapes(String str) {
      StringBuffer retval = new StringBuffer();
      int ch;
      for (int i = 0; i < str.length; i++) {
        switch (str.substring(i, i+1))
        {
//           case 0:
//              continue;
           case '\b':
              retval.add("\\b");
              continue;
           case '\t':
              retval.add("\\t");
              continue;
           case '\n':
              retval.add("\\n");
              continue;
           case '\f':
              retval.add("\\f");
              continue;
           case '\r':
              retval.add("\\r");
              continue;
           case '\"':
              retval.add("\\\"");
              continue;
           case '\'':
              retval.add("\\\'");
              continue;
           case '\\':
              retval.add("\\\\");
              continue;
           default:
              if ((ch = str.charCodeAt(i)) < 0x20 || ch > 0x7e) {
                 String s = "0000${ch.toRadixString(16)}";
                 retval.add("\\u${s.substring(s.length - 4, s.length)}");
              } else if (ch != 0) {
                 retval.add(new String.fromCharCodes([ch])).add("(").add(ch).add(")");
              }
              continue;
        }
      }
      return retval.toString();
   }
}

/* JavaCC - OriginalChecksum=87586a39aa89f164889cc59bc6a7e7ad (do not edit this line) */
