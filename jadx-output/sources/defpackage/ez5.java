package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class ez5 extends gj6<ez5, a> implements Object {
    public static final int ACTION_BUTTON_FIELD_NUMBER = 4;
    public static final int ACTION_FIELD_NUMBER = 5;
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 6;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final ez5 DEFAULT_INSTANCE;
    public static final int IMAGE_URL_FIELD_NUMBER = 3;
    private static volatile ik6<ez5> PARSER = null;
    public static final int TITLE_FIELD_NUMBER = 1;
    private az5 actionButton_;
    private yy5 action_;
    private fz5 body_;
    private fz5 title_;
    private String imageUrl_ = "";
    private String backgroundHexColor_ = "";

    public static final class a extends gj6.a<ez5, a> implements Object {
        public a(xy5 xy5Var) {
            super(ez5.DEFAULT_INSTANCE);
        }
    }

    static {
        ez5 ez5Var = new ez5();
        DEFAULT_INSTANCE = ez5Var;
        gj6.z(ez5.class, ez5Var);
    }

    public static ez5 G() {
        return DEFAULT_INSTANCE;
    }

    public yy5 C() {
        yy5 yy5Var = this.action_;
        return yy5Var == null ? yy5.D() : yy5Var;
    }

    public az5 D() {
        az5 az5Var = this.actionButton_;
        return az5Var == null ? az5.D() : az5Var;
    }

    public String E() {
        return this.backgroundHexColor_;
    }

    public fz5 F() {
        fz5 fz5Var = this.body_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public String H() {
        return this.imageUrl_;
    }

    public fz5 I() {
        fz5 fz5Var = this.title_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public boolean J() {
        return this.action_ != null;
    }

    public boolean K() {
        return this.body_ != null;
    }

    public boolean L() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0006\u0000\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001\t\u0002\t\u0003Ȉ\u0004\t\u0005\t\u0006Ȉ", new Object[]{"title_", "body_", "imageUrl_", "actionButton_", "action_", "backgroundHexColor_"});
            case NEW_MUTABLE_INSTANCE:
                return new ez5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ez5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ez5.class) {
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
