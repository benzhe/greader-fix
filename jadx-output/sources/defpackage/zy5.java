package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class zy5 extends gj6<zy5, a> implements Object {
    public static final int ACTION_FIELD_NUMBER = 4;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final zy5 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    private static volatile ik6<zy5> PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private yy5 action_;
    private fz5 body_;
    private fz5 title_;
    private String imageUrl_ = "";
    private String backgroundHexColor_ = "";

    public static final class a extends gj6.a<zy5, a> implements Object {
        public a(xy5 xy5Var) {
            super(zy5.DEFAULT_INSTANCE);
        }
    }

    static {
        zy5 zy5Var = new zy5();
        DEFAULT_INSTANCE = zy5Var;
        gj6.z(zy5.class, zy5Var);
    }

    public static zy5 F() {
        return DEFAULT_INSTANCE;
    }

    public yy5 C() {
        yy5 yy5Var = this.action_;
        return yy5Var == null ? yy5.D() : yy5Var;
    }

    public String D() {
        return this.backgroundHexColor_;
    }

    public fz5 E() {
        fz5 fz5Var = this.body_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public String G() {
        return this.imageUrl_;
    }

    public fz5 H() {
        fz5 fz5Var = this.title_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public boolean I() {
        return this.action_ != null;
    }

    public boolean J() {
        return this.body_ != null;
    }

    public boolean K() {
        return this.title_ != null;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0005\u0005\u0000\u0000\u0000\u0001\t\u0002\t\u0003Ȉ\u0004\t\u0005Ȉ", new Object[]{"title_", "body_", "imageUrl_", "action_", "backgroundHexColor_"});
            case NEW_MUTABLE_INSTANCE:
                return new zy5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<zy5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (zy5.class) {
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
