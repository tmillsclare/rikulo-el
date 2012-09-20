/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *     http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
/* Generated By:JJTree: Do not edit this line. AstCompositeExpression.java */

//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Tue, Sep 18, 2012  10:32:45 AM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)


/**
 * @author Jacob Hookom [jacob@hookom.net]
 * @version $Id: AstCompositeExpression.java 1024224 2010-10-19 13:03:01Z markt $
 */
class AstCompositeExpression extends SimpleNode {

    AstCompositeExpression(int id)
        : super(id);

    //@Override
    ClassMirror getType(EvaluationContext ctx) {
        return ClassUtil.STRING_MIRROR;
    }

    //@Override
    Object getValue(EvaluationContext ctx) {
        StringBuffer sb = new StringBuffer();
        Object obj = null;
        if (this.children_ != null) {
            for (int i = 0; i < this.children_.length; i++) {
                obj = this.children_[i].getValue(ctx);
                if (obj != null) {
                    sb.add(ELSupport.coerceToString(obj));
                }
            }
        }
        return sb.toString();
    }
}
