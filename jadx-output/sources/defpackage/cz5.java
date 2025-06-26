package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class cz5 extends gj6<cz5, a> implements Object {
    public static final int BANNER_FIELD_NUMBER = 1;
    public static final int CARD_FIELD_NUMBER = 4;
    private static final cz5 DEFAULT_INSTANCE;
    public static final int IMAGE_ONLY_FIELD_NUMBER = 3;
    public static final int MODAL_FIELD_NUMBER = 2;
    private static volatile ik6<cz5> PARSER;
    private int messageDetailsCase_ = 0;
    private Object messageDetails_;

    public static final class a extends gj6.a<cz5, a> implements Object {
        public a(xy5 xy5Var) {
            super(cz5.DEFAULT_INSTANCE);
        }
    }

    public enum b {
        BANNER(1),
        MODAL(2),
        IMAGE_ONLY(3),
        CARD(4),
        MESSAGEDETAILS_NOT_SET(0);

        b(int i) {
        }
    }

    static {
        cz5 cz5Var = new cz5();
        DEFAULT_INSTANCE = cz5Var;
        gj6.z(cz5.class, cz5Var);
    }

    public static cz5 E() {
        return DEFAULT_INSTANCE;
    }

    public zy5 C() {
        return this.messageDetailsCase_ == 1 ? (zy5) this.messageDetails_ : zy5.F();
    }

    public bz5 D() {
        return this.messageDetailsCase_ == 4 ? (bz5) this.messageDetails_ : bz5.E();
    }

    public dz5 F() {
        return this.messageDetailsCase_ == 3 ? (dz5) this.messageDetails_ : dz5.D();
    }

    public b G() {
        int i = this.messageDetailsCase_;
        if (i == 0) {
            return b.MESSAGEDETAILS_NOT_SET;
        }
        if (i == 1) {
            return b.BANNER;
        }
        if (i == 2) {
            return b.MODAL;
        }
        if (i == 3) {
            return b.IMAGE_ONLY;
        }
        if (i != 4) {
            return null;
        }
        return b.CARD;
    }

    public ez5 H() {
        return this.messageDetailsCase_ == 2 ? (ez5) this.messageDetails_ : ez5.G();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000", new Object[]{"messageDetails_", "messageDetailsCase_", zy5.class, ez5.class, dz5.class, bz5.class});
            case NEW_MUTABLE_INSTANCE:
                return new cz5();
            case NEW_BUILDER:
                return new a(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<cz5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (cz5.class) {
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
