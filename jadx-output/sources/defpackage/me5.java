package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class me5 extends gj6<me5, a> implements Object {
    public static final int APP_VERSION_FIELD_NUMBER = 1;
    private static final me5 DEFAULT_INSTANCE;
    public static final int LANGUAGE_CODE_FIELD_NUMBER = 3;
    private static volatile ik6<me5> PARSER = null;
    public static final int PLATFORM_VERSION_FIELD_NUMBER = 2;
    public static final int TIME_ZONE_FIELD_NUMBER = 4;
    private String appVersion_ = "";
    private String platformVersion_ = "";
    private String languageCode_ = "";
    private String timeZone_ = "";

    public static final class a extends gj6.a<me5, a> implements Object {
        public a() {
            super(me5.DEFAULT_INSTANCE);
        }

        public a(le5 le5Var) {
            super(me5.DEFAULT_INSTANCE);
        }
    }

    static {
        me5 me5Var = new me5();
        DEFAULT_INSTANCE = me5Var;
        gj6.z(me5.class, me5Var);
    }

    public static void C(me5 me5Var, String str) {
        Objects.requireNonNull(me5Var);
        str.getClass();
        me5Var.appVersion_ = str;
    }

    public static void D(me5 me5Var, String str) {
        Objects.requireNonNull(me5Var);
        str.getClass();
        me5Var.timeZone_ = str;
    }

    public static void E(me5 me5Var, String str) {
        Objects.requireNonNull(me5Var);
        str.getClass();
        me5Var.platformVersion_ = str;
    }

    public static void F(me5 me5Var, String str) {
        Objects.requireNonNull(me5Var);
        str.getClass();
        me5Var.languageCode_ = str;
    }

    public static a G() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ\u0003Ȉ\u0004Ȉ", new Object[]{"appVersion_", "platformVersion_", "languageCode_", "timeZone_"});
            case NEW_MUTABLE_INSTANCE:
                return new me5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<me5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (me5.class) {
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
