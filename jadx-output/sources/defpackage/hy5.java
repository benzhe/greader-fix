package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class hy5 extends gj6<hy5, a> implements Object {
    private static final hy5 DEFAULT_INSTANCE;
    private static volatile ik6<hy5> PARSER = null;
    public static final int VALUE_FIELD_NUMBER = 1;
    private int value_;

    public static final class a extends gj6.a<hy5, a> implements Object {
        public a(fy5 fy5Var) {
            super(hy5.DEFAULT_INSTANCE);
        }
    }

    static {
        hy5 hy5Var = new hy5();
        DEFAULT_INSTANCE = hy5Var;
        gj6.z(hy5.class, hy5Var);
    }

    public static hy5 C() {
        return DEFAULT_INSTANCE;
    }

    public int D() {
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
                return new hy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<hy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (hy5.class) {
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
