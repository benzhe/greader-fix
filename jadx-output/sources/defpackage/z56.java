package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class z56 extends gj6<z56, a> implements Object {
    private static final z56 DEFAULT_INSTANCE;
    private static volatile ik6<z56> PARSER = null;
    public static final int START_TIME_EPOCH_FIELD_NUMBER = 2;
    public static final int VALUE_FIELD_NUMBER = 1;
    private long startTimeEpoch_;
    private long value_;

    public static final class a extends gj6.a<z56, a> implements Object {
        public a() {
            super(z56.DEFAULT_INSTANCE);
        }

        public a(y56 y56Var) {
            super(z56.DEFAULT_INSTANCE);
        }
    }

    static {
        z56 z56Var = new z56();
        DEFAULT_INSTANCE = z56Var;
        gj6.z(z56.class, z56Var);
    }

    public static void C(z56 z56Var, long j) {
        z56Var.value_ = j;
    }

    public static void D(z56 z56Var) {
        z56Var.value_ = 0L;
    }

    public static void E(z56 z56Var, long j) {
        z56Var.startTimeEpoch_ = j;
    }

    public static z56 F() {
        return DEFAULT_INSTANCE;
    }

    public static a I() {
        return DEFAULT_INSTANCE.q();
    }

    public static a J(z56 z56Var) {
        a aVarQ = DEFAULT_INSTANCE.q();
        aVarQ.o();
        aVarQ.q(aVarQ.f, z56Var);
        return aVarQ;
    }

    public long G() {
        return this.startTimeEpoch_;
    }

    public long H() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0002\u0002\u0002", new Object[]{"value_", "startTimeEpoch_"});
            case NEW_MUTABLE_INSTANCE:
                return new z56();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<z56> bVar = PARSER;
                if (bVar == null) {
                    synchronized (z56.class) {
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
