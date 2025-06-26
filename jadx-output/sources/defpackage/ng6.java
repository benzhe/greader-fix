package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ng6 extends gj6<ng6, b> implements Object {
    public static final int ALREADY_SEEN_CAMPAIGNS_FIELD_NUMBER = 1;
    private static final ng6 DEFAULT_INSTANCE;
    private static volatile ik6<ng6> PARSER;
    private jj6.d<mg6> alreadySeenCampaigns_ = mk6.h;

    public static final class b extends gj6.a<ng6, b> implements Object {
        public b() {
            super(ng6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(ng6.DEFAULT_INSTANCE);
        }
    }

    static {
        ng6 ng6Var = new ng6();
        DEFAULT_INSTANCE = ng6Var;
        gj6.z(ng6.class, ng6Var);
    }

    public static void C(ng6 ng6Var, mg6 mg6Var) {
        Objects.requireNonNull(ng6Var);
        mg6Var.getClass();
        jj6.d<mg6> dVar = ng6Var.alreadySeenCampaigns_;
        if (!dVar.F0()) {
            ng6Var.alreadySeenCampaigns_ = gj6.v(dVar);
        }
        ng6Var.alreadySeenCampaigns_.add(mg6Var);
    }

    public static ng6 E() {
        return DEFAULT_INSTANCE;
    }

    public static b F() {
        return DEFAULT_INSTANCE.q();
    }

    public static b G(ng6 ng6Var) {
        b bVarQ = DEFAULT_INSTANCE.q();
        bVarQ.o();
        bVarQ.q(bVarQ.f, ng6Var);
        return bVarQ;
    }

    public static ik6<ng6> H() {
        return DEFAULT_INSTANCE.k();
    }

    public List<mg6> D() {
        return this.alreadySeenCampaigns_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"alreadySeenCampaigns_", mg6.class});
            case NEW_MUTABLE_INSTANCE:
                return new ng6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ng6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ng6.class) {
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
