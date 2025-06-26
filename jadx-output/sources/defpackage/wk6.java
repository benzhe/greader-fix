package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class wk6 extends gj6<wk6, b> implements Object {
    private static final wk6 DEFAULT_INSTANCE;
    public static final int NANOS_FIELD_NUMBER = 2;
    private static volatile ik6<wk6> PARSER = null;
    public static final int SECONDS_FIELD_NUMBER = 1;
    private int nanos_;
    private long seconds_;

    public static final class b extends gj6.a<wk6, b> implements Object {
        public b() {
            super(wk6.DEFAULT_INSTANCE);
        }

        public b r(int i) {
            o();
            wk6.D((wk6) this.f, i);
            return this;
        }

        public b s(long j) {
            o();
            wk6.C((wk6) this.f, j);
            return this;
        }

        public b(a aVar) {
            super(wk6.DEFAULT_INSTANCE);
        }
    }

    static {
        wk6 wk6Var = new wk6();
        DEFAULT_INSTANCE = wk6Var;
        gj6.z(wk6.class, wk6Var);
    }

    public static void C(wk6 wk6Var, long j) {
        wk6Var.seconds_ = j;
    }

    public static void D(wk6 wk6Var, int i) {
        wk6Var.nanos_ = i;
    }

    public static wk6 E() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
        return DEFAULT_INSTANCE.q();
    }

    public int F() {
        return this.nanos_;
    }

    public long G() {
        return this.seconds_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0004", new Object[]{"seconds_", "nanos_"});
            case NEW_MUTABLE_INSTANCE:
                return new wk6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<wk6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (wk6.class) {
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
