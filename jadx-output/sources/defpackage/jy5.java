package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class jy5 extends gj6<jy5, a> implements Object {
    private static final jy5 DEFAULT_INSTANCE;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 5;
    public static final int FLOAT_VALUE_FIELD_NUMBER = 4;
    public static final int INT_VALUE_FIELD_NUMBER = 3;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile ik6<jy5> PARSER = null;
    public static final int STRING_VALUE_FIELD_NUMBER = 2;
    private double doubleValue_;
    private float floatValue_;
    private long intValue_;
    private String name_ = "";
    private String stringValue_ = "";

    public static final class a extends gj6.a<jy5, a> implements Object {
        public a(fy5 fy5Var) {
            super(jy5.DEFAULT_INSTANCE);
        }
    }

    static {
        jy5 jy5Var = new jy5();
        DEFAULT_INSTANCE = jy5Var;
        gj6.z(jy5.class, jy5Var);
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0001\u0005\u0000", new Object[]{"name_", "stringValue_", "intValue_", "floatValue_", "doubleValue_"});
            case NEW_MUTABLE_INSTANCE:
                return new jy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<jy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (jy5.class) {
                        bVar = PARSER;
                        if (bVar == null) {
                            bVar = new gj6.b<>(DEFAULT_INSTANCE);
                            PARSER = bVar;
                        }
                    }
                }
                return bVar;
            default:
                throw new UnsupportedOperationException();
        }
    }
}
