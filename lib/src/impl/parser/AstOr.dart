//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, Sep 17, 2012  07:11:14 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

class AstOr extends BooleanNode {
    AstOr(int id)
        : super(id);

    //@Override
    Object getValue(EvaluationContext ctx) {
        Object obj = this.children_[0].getValue(ctx);
        bool b = ELSupport.coerceToBoolean(obj);
        if (b) {
            return b;
        }
        obj = this.children_[1].getValue(ctx);
        b = ELSupport.coerceToBoolean(obj);
        return b;
    }
}
