package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class az5 extends gj6<az5, a> implements Object {
    public static final int BUTTON_HEX_COLOR_FIELD_NUMBER = 2;
    private static final az5 DEFAULT_INSTANCE;
    private static volatile ik6<az5> PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private String buttonHexColor_ = "";
    private fz5 text_;

    public static final class a extends gj6.a<az5, a> implements Object {
        public a(xy5 xy5Var) {
            super(az5.DEFAULT_INSTANCE);
        }
    }

    static {
        az5 az5Var = new az5();
        DEFAULT_INSTANCE = az5Var;
        gj6.z(az5.class, az5Var);
    }

    public static az5 D() {
        return DEFAULT_INSTANCE;
    }

    public String C() {
        return this.buttonHexColor_;
    }

    public fz5 E() {
        fz5 fz5Var = this.text_;
        return fz5Var == null ? fz5.C() : fz5Var;
    }

    public boolean F() {
        return this.text_ != null;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002Ȉ", new Object[]{"text_", "buttonHexColor_"});
            case NEW_MUTABLE_INSTANCE:
                return new az5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<az5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (az5.class) {
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
