package defpackage;

import defpackage.gj6;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class uc6 extends gj6<uc6, b> implements Object {
    public static final int ADD_TARGET_FIELD_NUMBER = 2;
    public static final int DATABASE_FIELD_NUMBER = 1;
    private static final uc6 DEFAULT_INSTANCE;
    public static final int LABELS_FIELD_NUMBER = 4;
    private static volatile ik6<uc6> PARSER = null;
    public static final int REMOVE_TARGET_FIELD_NUMBER = 3;
    private Object targetChange_;
    private int targetChangeCase_ = 0;
    private uj6<String, String> labels_ = uj6.f;
    private String database_ = "";

    public static final class b extends gj6.a<uc6, b> implements Object {
        public b() {
            super(uc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(uc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c {
        public static final tj6<String, String> a;

        static {
            fl6 fl6Var = fl6.o;
            a = new tj6<>(fl6Var, "", fl6Var, "");
        }
    }

    static {
        uc6 uc6Var = new uc6();
        DEFAULT_INSTANCE = uc6Var;
        gj6.z(uc6.class, uc6Var);
    }

    public static Map C(uc6 uc6Var) {
        uj6<String, String> uj6Var = uc6Var.labels_;
        if (!uj6Var.e) {
            uc6Var.labels_ = uj6Var.d();
        }
        return uc6Var.labels_;
    }

    public static void D(uc6 uc6Var, String str) {
        Objects.requireNonNull(uc6Var);
        str.getClass();
        uc6Var.database_ = str;
    }

    public static void E(uc6 uc6Var, zc6 zc6Var) {
        Objects.requireNonNull(uc6Var);
        zc6Var.getClass();
        uc6Var.targetChange_ = zc6Var;
        uc6Var.targetChangeCase_ = 2;
    }

    public static void F(uc6 uc6Var, int i) {
        uc6Var.targetChangeCase_ = 3;
        uc6Var.targetChange_ = Integer.valueOf(i);
    }

    public static uc6 G() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001Ȉ\u0002<\u0000\u00037\u0000\u00042", new Object[]{"targetChange_", "targetChangeCase_", "database_", zc6.class, "labels_", c.a});
            case NEW_MUTABLE_INSTANCE:
                return new uc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<uc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (uc6.class) {
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
