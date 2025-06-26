package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class jg6 extends gj6<jg6, a> implements Object {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    private static final jg6 DEFAULT_INSTANCE;
    public static final int EXPERIMENT_PAYLOAD_FIELD_NUMBER = 2;
    private static volatile ik6<jg6> PARSER;
    private long campaignEndTimeMillis_;
    private String campaignId_ = "";
    private String campaignName_ = "";
    private long campaignStartTimeMillis_;
    private py5 experimentPayload_;

    public static final class a extends gj6.a<jg6, a> implements Object {
        public a(ig6 ig6Var) {
            super(jg6.DEFAULT_INSTANCE);
        }
    }

    static {
        jg6 jg6Var = new jg6();
        DEFAULT_INSTANCE = jg6Var;
        gj6.z(jg6.class, jg6Var);
    }

    public static jg6 G() {
        return DEFAULT_INSTANCE;
    }

    public long C() {
        return this.campaignEndTimeMillis_;
    }

    public String D() {
        return this.campaignId_;
    }

    public String E() {
        return this.campaignName_;
    }

    public long F() {
        return this.campaignStartTimeMillis_;
    }

    public py5 H() {
        py5 py5Var = this.experimentPayload_;
        return py5Var == null ? py5.C() : py5Var;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002\t\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"campaignId_", "experimentPayload_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case NEW_MUTABLE_INSTANCE:
                return new jg6();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<jg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (jg6.class) {
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
