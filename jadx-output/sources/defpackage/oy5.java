package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class oy5 extends gj6<oy5, a> implements Object {
    private static final oy5 DEFAULT_INSTANCE;
    public static final int EXPERIMENT_ID_FIELD_NUMBER = 1;
    private static volatile ik6<oy5> PARSER;
    private String experimentId_ = "";

    public static final class a extends gj6.a<oy5, a> implements Object {
        public a(ny5 ny5Var) {
            super(oy5.DEFAULT_INSTANCE);
        }
    }

    static {
        oy5 oy5Var = new oy5();
        DEFAULT_INSTANCE = oy5Var;
        gj6.z(oy5.class, oy5Var);
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"experimentId_"});
            case NEW_MUTABLE_INSTANCE:
                return new oy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<oy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (oy5.class) {
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
