//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Tue, Sep 18, 2012  09:39:35 AM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

class AstMult extends ArithmeticNode {
    AstMult(int id)
        : super(id);

    //@Override
    Object getValue(EvaluationContext ctx) {
        Object obj0 = this.children_[0].getValue(ctx);
        Object obj1 = this.children_[1].getValue(ctx);
        return ELArithmetic.multiply(obj0, obj1);
    }
}
