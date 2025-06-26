package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class lg6 extends gj6<lg6, a> implements Object {
    public static final int CAMPAIGN_END_TIME_MILLIS_FIELD_NUMBER = 4;
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 1;
    public static final int CAMPAIGN_NAME_FIELD_NUMBER = 5;
    public static final int CAMPAIGN_START_TIME_MILLIS_FIELD_NUMBER = 3;
    private static final lg6 DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_CAMPAIGN_ID_FIELD_NUMBER = 2;
    private static volatile ik6<lg6> PARSER;
    private long campaignEndTimeMillis_;
    private long campaignStartTimeMillis_;
    private String campaignId_ = "";
    private String experimentalCampaignId_ = "";
    private String campaignName_ = "";

    public static final class a extends gj6.a<lg6, a> implements Object {
        public a(ig6 ig6Var) {
            super(lg6.DEFAULT_INSTANCE);
        }
    }

    static {
        lg6 lg6Var = new lg6();
        DEFAULT_INSTANCE = lg6Var;
        gj6.z(lg6.class, lg6Var);
    }

    public static lg6 G() {
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

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003\u0002\u0004\u0002\u0005Ȉ", new Object[]{"campaignId_", "experimentalCampaignId_", "campaignStartTimeMillis_", "campaignEndTimeMillis_", "campaignName_"});
            case NEW_MUTABLE_INSTANCE:
                return new lg6();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<lg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (lg6.class) {
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
