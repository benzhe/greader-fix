package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class fz5 extends gj6<fz5, a> implements Object {
    private static final fz5 DEFAULT_INSTANCE;
    public static final int HEX_COLOR_FIELD_NUMBER = 2;
    private static volatile ik6<fz5> PARSER = null;
    public static final int TEXT_FIELD_NUMBER = 1;
    private String text_ = "";
    private String hexColor_ = "";

    public static final class a extends gj6.a<fz5, a> implements Object {
        public a(xy5 xy5Var) {
            super(fz5.DEFAULT_INSTANCE);
        }
    }

    static {
        fz5 fz5Var = new fz5();
        DEFAULT_INSTANCE = fz5Var;
        gj6.z(fz5.class, fz5Var);
    }

    public static fz5 C() {
        return DEFAULT_INSTANCE;
    }

    public String D() {
        return this.hexColor_;
    }

    public String E() {
        return this.text_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002Ȉ", new Object[]{"text_", "hexColor_"});
            case NEW_MUTABLE_INSTANCE:
                return new fz5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<fz5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (fz5.class) {
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
