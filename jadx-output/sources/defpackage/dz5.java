package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class dz5 extends gj6<dz5, a> implements Object {
    public static final int ACTION_FIELD_NUMBER = 2;
    private static final dz5 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 1;
    private static volatile ik6<dz5> PARSER;
    private yy5 action_;
    private String imageUrl_ = "";

    public static final class a extends gj6.a<dz5, a> implements Object {
        public a(xy5 xy5Var) {
            super(dz5.DEFAULT_INSTANCE);
        }
    }

    static {
        dz5 dz5Var = new dz5();
        DEFAULT_INSTANCE = dz5Var;
        gj6.z(dz5.class, dz5Var);
    }

    public static dz5 D() {
        return DEFAULT_INSTANCE;
    }

    public yy5 C() {
        yy5 yy5Var = this.action_;
        return yy5Var == null ? yy5.D() : yy5Var;
    }

    public String E() {
        return this.imageUrl_;
    }

    public boolean F() {
        return this.action_ != null;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"imageUrl_", "action_"});
            case NEW_MUTABLE_INSTANCE:
                return new dz5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<dz5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (dz5.class) {
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
