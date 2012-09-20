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
/* Generated By:JJTree: Do not edit this line. AstChoice.java */

//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Mon, Sep 17, 2012  07:27:41 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)


/**
 * @author Jacob Hookom [jacob@hookom.net]
 * @version $Id: AstChoice.java 939311 2010-04-29 14:01:02Z kkolinko $
 */
class AstChoice extends SimpleNode {
    AstChoice(int id)
        : super(id);

    //@Override
    ClassMirror getType(EvaluationContext ctx) {
        Object val = this.getValue(ctx);
        return (val != null) ? reflect(val).type : null;
    }

    //@Override
    Object getValue(EvaluationContext ctx) {
        Object obj0 = this.children_[0].getValue(ctx);
        bool b0 = coerceToBoolean(obj0);
        return this.children_[b0 ? 1 : 2].getValue(ctx);
    }
}
