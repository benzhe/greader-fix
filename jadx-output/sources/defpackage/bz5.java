package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class bz5 extends gj6<bz5, a> implements Object {
    public static final int BACKGROUND_HEX_COLOR_FIELD_NUMBER = 5;
    public static final int BODY_FIELD_NUMBER = 2;
    private static final bz5 DEFAULT_INSTANCE;
    public static final int LANDSCAPE_IMAGE_URL_FIELD_NUMBER = 4;
    private static volatile ik6<bz5> PARSER = null;
    public static final int PORTRAIT_IMAGE_URL_FIELD_NUMBER = 3;
    public static final int PRIMARY_ACTION_BUTTON_FIELD_NUMBER = 6;
    public static final int PRIMARY_ACTION_FIELD_NUMBER = 7;
    public static final int SECONDARY_ACTION_BUTTON_FIELD_NUMBER = 8;
    public static final int SECONDARY_ACTION_FIELD_NUMBER = 9;
    public static final int TITLE_FIELD_NUMBER = 1;
    private fz5 body_;
    private az5 primaryActionButton_;
    private yy5 primaryAction_;
    private az5 secondaryActionButton_;
    private yy5 secondaryAction_;
    private fz5 title_;
    private String portraitImageUrl_ = "";
    private String landscapeImageUrl_ = "";
    private String backgroundHexColor_ = "";

    public static final class a extends gj6.a<bz5, a> implements Object {
        public a(xy5 xy5Var) {
            super(bz5.DEFAULT_INSTANCE);
        }
    }

    static {
        bz5 bz5Var = new bz5();
        DEFAULT_INSTANCE = bz5Var;
        gj6.z(bz5.class, bz5Var);
    }

    public static bz5 E() {
        return DEFAULT_INSTANCE;
    }

    public String C() {
        return this.backgroundHexColor_;
    }

    public fz5 D() {
        fz5 fz5Var = this.body_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public String F() {
        return this.landscapeImageUrl_;
    }

    public String G() {
        return this.portraitImageUrl_;
    }

    public yy5 H() {
        yy5 yy5Var = this.primaryAction_;
        return yy5Var == null ? yy5.D() : yy5Var;
    }

    public az5 I() {
        az5 az5Var = this.primaryActionButton_;
        return az5Var == null ? az5.D() : az5Var;
    }

    public yy5 J() {
        yy5 yy5Var = this.secondaryAction_;
        return yy5Var == null ? yy5.D() : yy5Var;
    }

    public az5 K() {
        az5 az5Var = this.secondaryActionButton_;
        return az5Var == null ? az5.D() : az5Var;
    }

    public fz5 L() {
        fz5 fz5Var = this.title_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public boolean M() {
        return this.body_ != null;
    }

    public boolean N() {
        return this.primaryAction_ != null;
    }

    public boolean O() {
        return this.primaryActionButton_ != null;
    }

    public boolean P() {
        return this.secondaryAction_ != null;
    }

    public boolean Q() {
        return this.secondaryActionButton_ != null;
    }

    public boolean R() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\t\u0000\u0000\u0001\t\t\u0000\u0000\u0000\u0001\t\u0002\t\u0003Ȉ\u0004Ȉ\u0005Ȉ\u0006\t\u0007\t\b\t\t\t", new Object[]{"title_", "body_", "portraitImageUrl_", "landscapeImageUrl_", "backgroundHexColor_", "primaryActionButton_", "primaryAction_", "secondaryActionButton_", "secondaryAction_"});
            case NEW_MUTABLE_INSTANCE:
                return new bz5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<bz5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (bz5.class) {
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
