package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class mg6 extends gj6<mg6, b> implements Object {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    private static final mg6 DEFAULT_INSTANCE;
    public static final int IMPRESSION_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    private static volatile ik6<mg6> PARSER;
    private String campaignId_ = "";
    private long impressionTimestampMillis_;

    public static final class b extends gj6.a<mg6, b> implements Object {
        public b() {
            super(mg6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(mg6.DEFAULT_INSTANCE);
        }
    }

    static {
        mg6 mg6Var = new mg6();
        DEFAULT_INSTANCE = mg6Var;
        gj6.z(mg6.class, mg6Var);
    }

    public static void C(mg6 mg6Var, String str) {
        Objects.requireNonNull(mg6Var);
        str.getClass();
        mg6Var.campaignId_ = str;
    }

    public static void D(mg6 mg6Var, long j) {
        mg6Var.impressionTimestampMillis_ = j;
    }

    public static b F() {
        return DEFAULT_INSTANCE.q();
    }

    public String E() {
        return this.campaignId_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\u0002", new Object[]{"campaignId_", "impressionTimestampMillis_"});
            case NEW_MUTABLE_INSTANCE:
                return new mg6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<mg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (mg6.class) {
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
