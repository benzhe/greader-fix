package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.gj6;
import defpackage.gz5;
import defpackage.ly5;
import defpackage.my5;
import defpackage.qy5;
import java.util.Objects;

/* loaded from: classes.dex */
public final class dy5 extends gj6<dy5, b> implements Object {
    public static final int CAMPAIGN_ID_FIELD_NUMBER = 2;
    public static final int CLIENT_APP_FIELD_NUMBER = 3;
    public static final int CLIENT_TIMESTAMP_MILLIS_FIELD_NUMBER = 4;
    private static final dy5 DEFAULT_INSTANCE;
    public static final int DISMISS_TYPE_FIELD_NUMBER = 6;
    public static final int ENGAGEMENTMETRICS_DELIVERY_RETRY_COUNT_FIELD_NUMBER = 10;
    public static final int EVENT_TYPE_FIELD_NUMBER = 5;
    public static final int FETCH_ERROR_REASON_FIELD_NUMBER = 8;
    public static final int FIAM_SDK_VERSION_FIELD_NUMBER = 9;
    private static volatile ik6<dy5> PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int RENDER_ERROR_REASON_FIELD_NUMBER = 7;
    private int bitField0_;
    private ey5 clientApp_;
    private long clientTimestampMillis_;
    private int engagementMetricsDeliveryRetryCount_;
    private Object event_;
    private int eventCase_ = 0;
    private String projectNumber_ = "";
    private String campaignId_ = "";
    private String fiamSdkVersion_ = "";

    public static final class b extends gj6.a<dy5, b> implements Object {
        public b() {
            super(dy5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(dy5.DEFAULT_INSTANCE);
        }
    }

    static {
        dy5 dy5Var = new dy5();
        DEFAULT_INSTANCE = dy5Var;
        gj6.z(dy5.class, dy5Var);
    }

    public static void C(dy5 dy5Var, long j) {
        dy5Var.bitField0_ |= 8;
        dy5Var.clientTimestampMillis_ = j;
    }

    public static void D(dy5 dy5Var, my5 my5Var) {
        Objects.requireNonNull(dy5Var);
        dy5Var.event_ = Integer.valueOf(my5Var.e);
        dy5Var.eventCase_ = 5;
    }

    public static void E(dy5 dy5Var, ly5 ly5Var) {
        Objects.requireNonNull(dy5Var);
        dy5Var.event_ = Integer.valueOf(ly5Var.e);
        dy5Var.eventCase_ = 6;
    }

    public static void F(dy5 dy5Var, String str) {
        Objects.requireNonNull(dy5Var);
        str.getClass();
        dy5Var.bitField0_ |= 1;
        dy5Var.projectNumber_ = str;
    }

    public static void G(dy5 dy5Var, String str) {
        Objects.requireNonNull(dy5Var);
        str.getClass();
        dy5Var.bitField0_ |= RecyclerView.a0.FLAG_TMP_DETACHED;
        dy5Var.fiamSdkVersion_ = str;
    }

    public static void H(dy5 dy5Var, String str) {
        Objects.requireNonNull(dy5Var);
        str.getClass();
        dy5Var.bitField0_ |= 2;
        dy5Var.campaignId_ = str;
    }

    public static void I(dy5 dy5Var, ey5 ey5Var) {
        Objects.requireNonNull(dy5Var);
        dy5Var.clientApp_ = ey5Var;
        dy5Var.bitField0_ |= 4;
    }

    public static b J() {
        return DEFAULT_INSTANCE.q();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0001\n\u0001\u0001\u0001\n\n\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001\u0003ဉ\u0002\u0004ဂ\u0003\u0005ဿ\u0000\u0006ဿ\u0000\u0007ဿ\u0000\bဿ\u0000\tဈ\b\nင\t", new Object[]{"event_", "eventCase_", "bitField0_", "projectNumber_", "campaignId_", "clientApp_", "clientTimestampMillis_", my5.a.a, ly5.a.a, gz5.a.a, qy5.a.a, "fiamSdkVersion_", "engagementMetricsDeliveryRetryCount_"});
            case NEW_MUTABLE_INSTANCE:
                return new dy5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<dy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (dy5.class) {
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
