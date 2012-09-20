/*
 * Licensed to the Apache Software Foundation (ASF) under one or more
 * contributor license agreements.  See the NOTICE file distributed with
 * this work for additional information regarding copyright ownership.
 * The ASF licenses this file to You under the Apache License, Version 2.0
 * (the "License"); you may not use this file except in compliance with
 * the License.  You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

//Copyright (C) 2012 Potix Corporation. All Rights Reserved.
//History: Tue, Sep 18, 2012  09:31:21 AM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

/**
 * @author Jacob Hookom [jacob@hookom.net]
 * @version $Id: ArithmeticNode.java 939311 2010-04-29 14:01:02Z kkolinko $
 */
class ArithmeticNode extends SimpleNode {

    /**
     * @param i
     */
    ArithmeticNode(int i)
        : super(i);

    //@Override
    ClassMirror getType(EvaluationContext ctx) {
        return ClassUtil.NUM_MIRROR;
    }
}
