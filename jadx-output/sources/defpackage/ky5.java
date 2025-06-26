package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class ky5 extends gj6<ky5, a> implements Object {
    private static final ky5 DEFAULT_INSTANCE;
    public static final int EVENT_FIELD_NUMBER = 2;
    public static final int FIAM_TRIGGER_FIELD_NUMBER = 1;
    private static volatile ik6<ky5> PARSER;
    private int conditionCase_ = 0;
    private Object condition_;

    public static final class a extends gj6.a<ky5, a> implements Object {
        public a(fy5 fy5Var) {
            super(ky5.DEFAULT_INSTANCE);
        }
    }

    static {
        ky5 ky5Var = new ky5();
        DEFAULT_INSTANCE = ky5Var;
        gj6.z(ky5.class, ky5Var);
    }

    public gy5 C() {
        return this.conditionCase_ == 2 ? (gy5) this.condition_ : gy5.C();
    }

    public iy5 D() {
        if (this.conditionCase_ != 1) {
            return iy5.UNKNOWN_TRIGGER;
        }
        iy5 iy5VarI = iy5.i(((Integer) this.condition_).intValue());
        return iy5VarI == null ? iy5.UNRECOGNIZED : iy5VarI;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001?\u0000\u0002<\u0000", new Object[]{"condition_", "conditionCase_", gy5.class});
            case NEW_MUTABLE_INSTANCE:
                return new ky5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ky5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ky5.class) {
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
