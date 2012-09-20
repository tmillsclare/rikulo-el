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
//History: Fri, Aug 24, 2012  02:08:31 PM
// Author: hernichen
//Port from Tomcat 7.0.x (java -> dart)

class ArrayELResolver extends ELResolver {

    final bool _readOnly;

    ArrayELResolver([bool readOnly = false])
        : this._readOnly = readOnly;

    //@Override
    Object getValue(ELContext context, Object base, Object property) {
        if (context == null) {
            throw const NullPointerException();
        }

        if (base != null && base is List) {
            context.setPropertyResolved(true);
            int idx = _coerce(property);
            if (idx < 0 || idx >= base.length) {
                return null;
            }
            return base[idx];
        }

        return null;
    }

    //@Override
    ClassMirror getType(ELContext context, Object base, Object property) {
        if (context == null) {
            throw const NullPointerException();
        }

        if (base != null && base is List) {
            context.setPropertyResolved(true);
            int idx = _coerce(property);
            _checkBounds(base, idx);
            return ClassUtil.getElementClassMirror(reflect(base).type);
        }

        return null;
    }

    //@Override
    void setValue(ELContext context, Object base, Object property,
            Object value) {
        if (context == null) {
            throw const NullPointerException();
        }

        if (base != null && base is List) {
            context.setPropertyResolved(true);

            if (this._readOnly) {
                throw new PropertyNotWritableException(message(context,
                        "resolverNotWriteable", const [reflect(base).type.qualifiedName]));
            }

            int idx = _coerce(property);
            _checkBounds(base, idx);
            if (value != null && !ClassUtil.isInstance(ClassUtil.getElementClassMirror(reflect(base).type), value)) {
                throw new CastException();
//              throw new ClassCastException(message(context, "objectNotAssignable",
//                        [reflect(value).type.qualifiedName, ClassUtil.getElementClassMirror(reflect(base).type).qualifiedName]));
            }
            base[idx] = value;
        }
    }

    //@Override
    bool isReadOnly(ELContext context, Object base, Object property) {
        if (context == null) {
            throw const NullPointerException();
        }

        if (base != null && base is List) {
            context.setPropertyResolved(true);
            int idx = _coerce(property);
            _checkBounds(base, idx);
        }

        return this._readOnly;
    }

    //@Override
    ClassMirror getCommonPropertyType(ELContext context, Object base) {
        if (base != null && base is List) {
            return ClassUtil.INT_MIRROR;
        }
        return null;
    }

    static void _checkBounds(Object base, int idx) {
        if (idx < 0 || idx >= (base as List).length) {
            throw new PropertyNotFoundException(const IndexOutOfRangeException(idx).toString());
        }
    }

    static int _coerce(Object property) {
        if (property is num) {
            return property.toInt();
        }
        if (property is bool) {
            return property ? 1 : 0;
        }
        if (property is String) {
            return int.parse(property);
        }
        throw new IllegalArgumentException(property != null ?
                property.toString() : "null");
    }
}
