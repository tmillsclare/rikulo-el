//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Wed, Sep 12, 2012  11:08:35 AM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

abstract class Expression {
    String getExpressionString();

    bool isLiteralText();
}
