package defpackage;

import defpackage.gj6;
import java.util.Map;

/* loaded from: classes.dex */
public final class a66 extends gj6<a66, a> implements Object {
    private static final a66 DEFAULT_INSTANCE;
    public static final int LIMITS_FIELD_NUMBER = 1;
    private static volatile ik6<a66> PARSER;
    private uj6<String, z56> limits_ = uj6.f;

    public static final class a extends gj6.a<a66, a> implements Object {
        public a() {
            super(a66.DEFAULT_INSTANCE);
        }

        public a(y56 y56Var) {
            super(a66.DEFAULT_INSTANCE);
        }
    }

    public static final class b {
        public static final tj6<String, z56> a = new tj6<>(fl6.o, "", fl6.q, z56.F());
    }

    static {
        a66 a66Var = new a66();
        DEFAULT_INSTANCE = a66Var;
        gj6.z(a66.class, a66Var);
    }

    public static Map C(a66 a66Var) {
        uj6<String, z56> uj6Var = a66Var.limits_;
        if (!uj6Var.e) {
            a66Var.limits_ = uj6Var.d();
        }
        return a66Var.limits_;
    }

    public static a66 D() {
        return DEFAULT_INSTANCE;
    }

    public static a F(a66 a66Var) {
        a aVarQ = DEFAULT_INSTANCE.q();
        aVarQ.o();
        aVarQ.q(aVarQ.f, a66Var);
        return aVarQ;
    }

    public static ik6<a66> G() {
        return DEFAULT_INSTANCE.k();
    }

    public z56 E(String str, z56 z56Var) {
        str.getClass();
        uj6<String, z56> uj6Var = this.limits_;
        return uj6Var.containsKey(str) ? uj6Var.get(str) : z56Var;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"limits_", b.a});
            case NEW_MUTABLE_INSTANCE:
                return new a66();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<a66> bVar = PARSER;
                if (bVar == null) {
                    synchronized (a66.class) {
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
