package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class jl6 extends gj6<jl6, b> implements Object {
    private static final jl6 DEFAULT_INSTANCE;
    public static final int LATITUDE_FIELD_NUMBER = 1;
    public static final int LONGITUDE_FIELD_NUMBER = 2;
    private static volatile ik6<jl6> PARSER;
    private double latitude_;
    private double longitude_;

    public static final class b extends gj6.a<jl6, b> implements Object {
        public b() {
            super(jl6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(jl6.DEFAULT_INSTANCE);
        }
    }

    static {
        jl6 jl6Var = new jl6();
        DEFAULT_INSTANCE = jl6Var;
        gj6.z(jl6.class, jl6Var);
    }

    public static void C(jl6 jl6Var, double d) {
        jl6Var.latitude_ = d;
    }

    public static void D(jl6 jl6Var, double d) {
        jl6Var.longitude_ = d;
    }

    public static jl6 E() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
        return DEFAULT_INSTANCE.q();
    }

    public double F() {
        return this.latitude_;
    }

    public double G() {
        return this.longitude_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0000\u0002\u0000", new Object[]{"latitude_", "longitude_"});
            case NEW_MUTABLE_INSTANCE:
                return new jl6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<jl6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (jl6.class) {
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
