package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class hj6 extends gj6<hj6, b> implements Object {
    private static final hj6 DEFAULT_INSTANCE;
    private static volatile ik6<hj6> PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private int value_;

    public static final class b extends gj6.a<hj6, b> implements Object {
        public b() {
            super(hj6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(hj6.DEFAULT_INSTANCE);
        }
    }

    static {
        hj6 hj6Var = new hj6();
        DEFAULT_INSTANCE = hj6Var;
        gj6.z(hj6.class, hj6Var);
    }

    public static void C(hj6 hj6Var, int i) {
        hj6Var.value_ = i;
    }

    public static hj6 D() {
        return DEFAULT_INSTANCE;
    }

    public static b F() {
        return DEFAULT_INSTANCE.q();
    }

    public int E() {
        return this.value_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\u0004", new Object[]{"value_"});
            case NEW_MUTABLE_INSTANCE:
                return new hj6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<hj6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (hj6.class) {
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
