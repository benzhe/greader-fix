package defpackage;

import defpackage.gj6;
import defpackage.jj6;

/* loaded from: classes.dex */
public final class gy5 extends gj6<gy5, a> implements Object {
    public static final int COUNT_FIELD_NUMBER = 5;
    private static final gy5 DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 2;
    private static volatile ik6<gy5> PARSER = null;
    public static final int PREVIOUS_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    public static final int TIMESTAMP_MILLIS_FIELD_NUMBER = 3;
    public static final int TRIGGER_PARAMS_FIELD_NUMBER = 1;
    private int count_;
    private long previousTimestampMillis_;
    private long timestampMillis_;
    private jj6.d<jy5> triggerParams_ = mk6.h;
    private String name_ = "";

    public static final class a extends gj6.a<gy5, a> implements Object {
        public a(fy5 fy5Var) {
            super(gy5.DEFAULT_INSTANCE);
        }
    }

    static {
        gy5 gy5Var = new gy5();
        DEFAULT_INSTANCE = gy5Var;
        gj6.z(gy5.class, gy5Var);
    }

    public static gy5 C() {
        return DEFAULT_INSTANCE;
    }

    public String D() {
        return this.name_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0001\u0000\u0001\u001b\u0002Ȉ\u0003\u0002\u0004\u0002\u0005\u0004", new Object[]{"triggerParams_", jy5.class, "name_", "timestampMillis_", "previousTimestampMillis_", "count_"});
            case NEW_MUTABLE_INSTANCE:
                return new gy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<gy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (gy5.class) {
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
