package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class yy5 extends gj6<yy5, a> implements Object {
    public static final int ACTION_URL_FIELD_NUMBER = 1;
    private static final yy5 DEFAULT_INSTANCE;
    private static volatile ik6<yy5> PARSER;
    private String actionUrl_ = "";

    public static final class a extends gj6.a<yy5, a> implements Object {
        public a(xy5 xy5Var) {
            super(yy5.DEFAULT_INSTANCE);
        }
    }

    static {
        yy5 yy5Var = new yy5();
        DEFAULT_INSTANCE = yy5Var;
        gj6.z(yy5.class, yy5Var);
    }

    public static yy5 D() {
        return DEFAULT_INSTANCE;
    }

    public String C() {
        return this.actionUrl_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001Ȉ", new Object[]{"actionUrl_"});
            case NEW_MUTABLE_INSTANCE:
                return new yy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<yy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (yy5.class) {
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
