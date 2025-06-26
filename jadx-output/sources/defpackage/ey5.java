package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ey5 extends gj6<ey5, b> implements Object {
    private static final ey5 DEFAULT_INSTANCE;
    public static final int FIREBASE_INSTANCE_ID_FIELD_NUMBER = 2;
    public static final int GOOGLE_APP_ID_FIELD_NUMBER = 1;
    private static volatile ik6<ey5> PARSER;
    private int bitField0_;
    private String googleAppId_ = "";
    private String firebaseInstanceId_ = "";

    public static final class b extends gj6.a<ey5, b> implements Object {
        public b() {
            super(ey5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(ey5.DEFAULT_INSTANCE);
        }
    }

    static {
        ey5 ey5Var = new ey5();
        DEFAULT_INSTANCE = ey5Var;
        gj6.z(ey5.class, ey5Var);
    }

    public static void C(ey5 ey5Var, String str) {
        Objects.requireNonNull(ey5Var);
        str.getClass();
        ey5Var.bitField0_ |= 1;
        ey5Var.googleAppId_ = str;
    }

    public static void D(ey5 ey5Var, String str) {
        Objects.requireNonNull(ey5Var);
        str.getClass();
        ey5Var.bitField0_ |= 2;
        ey5Var.firebaseInstanceId_ = str;
    }

    public static b E() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0001\u0002\u0000\u0001\u0001\u0002\u0002\u0000\u0000\u0000\u0001ဈ\u0000\u0002ဈ\u0001", new Object[]{"bitField0_", "googleAppId_", "firebaseInstanceId_"});
            case NEW_MUTABLE_INSTANCE:
                return new ey5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ey5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ey5.class) {
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
