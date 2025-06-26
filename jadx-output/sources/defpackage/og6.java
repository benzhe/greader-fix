package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class og6 extends gj6<og6, b> implements Object {
    public static final int APP_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int APP_INSTANCE_ID_TOKEN_FIELD_NUMBER = 3;
    private static final og6 DEFAULT_INSTANCE;
    public static final int GMP_APP_ID_FIELD_NUMBER = 1;
    private static volatile ik6<og6> PARSER;
    private String gmpAppId_ = "";
    private String appInstanceId_ = "";
    private String appInstanceIdToken_ = "";

    public static final class b extends gj6.a<og6, b> implements Object {
        public b() {
            super(og6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(og6.DEFAULT_INSTANCE);
        }
    }

    static {
        og6 og6Var = new og6();
        DEFAULT_INSTANCE = og6Var;
        gj6.z(og6.class, og6Var);
    }

    public static void C(og6 og6Var, String str) {
        Objects.requireNonNull(og6Var);
        str.getClass();
        og6Var.gmpAppId_ = str;
    }

    public static void D(og6 og6Var, String str) {
        Objects.requireNonNull(og6Var);
        str.getClass();
        og6Var.appInstanceId_ = str;
    }

    public static void E(og6 og6Var, String str) {
        Objects.requireNonNull(og6Var);
        str.getClass();
        og6Var.appInstanceIdToken_ = str;
    }

    public static b F() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ", new Object[]{"gmpAppId_", "appInstanceId_", "appInstanceIdToken_"});
            case NEW_MUTABLE_INSTANCE:
                return new og6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<og6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (og6.class) {
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
