package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pg6 extends gj6<pg6, b> implements Object {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 3;
    public static final int CLIENT_SIGNALS_FIELD_NUMBER = 4;
    private static final pg6 DEFAULT_INSTANCE;
    private static volatile ik6<pg6> PARSER = null;
    public static final int PROJECT_NUMBER_FIELD_NUMBER = 1;
    public static final int REQUESTING_CLIENT_APP_FIELD_NUMBER = 2;
    private me5 clientSignals_;
    private og6 requestingClientApp_;
    private String projectNumber_ = "";
    private jj6.d<mg6> alreadySeenCampaigns_ = mk6.h;

    public static final class b extends gj6.a<pg6, b> implements Object {
        public b() {
            super(pg6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(pg6.DEFAULT_INSTANCE);
        }
    }

    static {
        pg6 pg6Var = new pg6();
        DEFAULT_INSTANCE = pg6Var;
        gj6.z(pg6.class, pg6Var);
    }

    public static void C(pg6 pg6Var, String str) {
        Objects.requireNonNull(pg6Var);
        str.getClass();
        pg6Var.projectNumber_ = str;
    }

    public static void D(pg6 pg6Var, Iterable iterable) {
        jj6.d<mg6> dVar = pg6Var.alreadySeenCampaigns_;
        if (!dVar.F0()) {
            pg6Var.alreadySeenCampaigns_ = gj6.v(dVar);
        }
        ii6.a(iterable, pg6Var.alreadySeenCampaigns_);
    }

    public static void E(pg6 pg6Var, me5 me5Var) {
        Objects.requireNonNull(pg6Var);
        me5Var.getClass();
        pg6Var.clientSignals_ = me5Var;
    }

    public static void F(pg6 pg6Var, og6 og6Var) {
        Objects.requireNonNull(pg6Var);
        og6Var.getClass();
        pg6Var.requestingClientApp_ = og6Var;
    }

    public static pg6 G() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\t\u0003\u001b\u0004\t", new Object[]{"projectNumber_", "requestingClientApp_", "alreadySeenCampaigns_", mg6.class, "clientSignals_"});
            case NEW_MUTABLE_INSTANCE:
                return new pg6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<pg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (pg6.class) {
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
