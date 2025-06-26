package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class kg6 extends gj6<kg6, a> implements Object {
    public static final int CONTENT_FIELD_NUMBER = 3;
    public static final int DATA_BUNDLE_FIELD_NUMBER = 8;
    private static final kg6 DEFAULT_INSTANCE;
    public static final int EXPERIMENTAL_PAYLOAD_FIELD_NUMBER = 2;
    public static final int IS_TEST_CAMPAIGN_FIELD_NUMBER = 7;
    private static volatile ik6<kg6> PARSER = null;
    public static final int PRIORITY_FIELD_NUMBER = 4;
    public static final int TRIGGERING_CONDITIONS_FIELD_NUMBER = 5;
    public static final int VANILLA_PAYLOAD_FIELD_NUMBER = 1;
    private cz5 content_;
    private boolean isTestCampaign_;
    private Object payload_;
    private hy5 priority_;
    private int payloadCase_ = 0;
    private uj6<String, String> dataBundle_ = uj6.f;
    private jj6.d<ky5> triggeringConditions_ = mk6.h;

    public static final class a extends gj6.a<kg6, a> implements Object {
        public a(ig6 ig6Var) {
            super(kg6.DEFAULT_INSTANCE);
        }
    }

    public static final class b {
        public static final tj6<String, String> a;

        static {
            fl6 fl6Var = fl6.o;
            a = new tj6<>(fl6Var, "", fl6Var, "");
        }
    }

    public enum c {
        VANILLA_PAYLOAD(1),
        EXPERIMENTAL_PAYLOAD(2),
        PAYLOAD_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        kg6 kg6Var = new kg6();
        DEFAULT_INSTANCE = kg6Var;
        gj6.z(kg6.class, kg6Var);
    }

    public cz5 C() {
        cz5 cz5Var = this.content_;
        return cz5Var == null ? cz5.E() : cz5Var;
    }

    public Map<String, String> D() {
        return Collections.unmodifiableMap(this.dataBundle_);
    }

    public jg6 E() {
        return this.payloadCase_ == 2 ? (jg6) this.payload_ : jg6.G();
    }

    public boolean F() {
        return this.isTestCampaign_;
    }

    public c G() {
        int i = this.payloadCase_;
        if (i == 0) {
            return c.PAYLOAD_NOT_SET;
        }
        if (i == 1) {
            return c.VANILLA_PAYLOAD;
        }
        if (i != 2) {
            return null;
        }
        return c.EXPERIMENTAL_PAYLOAD;
    }

    public hy5 H() {
        hy5 hy5Var = this.priority_;
        return hy5Var == null ? hy5.C() : hy5Var;
    }

    public List<ky5> I() {
        return this.triggeringConditions_;
    }

    public lg6 J() {
        return this.payloadCase_ == 1 ? (lg6) this.payload_ : lg6.G();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\b\u0007\u0001\u0001\u0000\u0001<\u0000\u0002<\u0000\u0003\t\u0004\t\u0005\u001b\u0007\u0007\b2", new Object[]{"payload_", "payloadCase_", lg6.class, jg6.class, "content_", "priority_", "triggeringConditions_", ky5.class, "isTestCampaign_", "dataBundle_", b.a});
            case NEW_MUTABLE_INSTANCE:
                return new kg6();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<kg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (kg6.class) {
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
