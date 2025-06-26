package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class vc6 extends gj6<vc6, b> implements Object {
    private static final vc6 DEFAULT_INSTANCE;
    public static final int DOCUMENT_CHANGE_FIELD_NUMBER = 3;
    public static final int DOCUMENT_DELETE_FIELD_NUMBER = 4;
    public static final int DOCUMENT_REMOVE_FIELD_NUMBER = 6;
    public static final int FILTER_FIELD_NUMBER = 5;
    private static volatile ik6<vc6> PARSER = null;
    public static final int TARGET_CHANGE_FIELD_NUMBER = 2;
    private int responseTypeCase_ = 0;
    private Object responseType_;

    public static final class b extends gj6.a<vc6, b> implements Object {
        public b(a aVar) {
            super(vc6.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        TARGET_CHANGE(2),
        DOCUMENT_CHANGE(3),
        DOCUMENT_DELETE(4),
        DOCUMENT_REMOVE(6),
        FILTER(5),
        RESPONSETYPE_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        vc6 vc6Var = new vc6();
        DEFAULT_INSTANCE = vc6Var;
        gj6.z(vc6.class, vc6Var);
    }

    public static vc6 C() {
        return DEFAULT_INSTANCE;
    }

    public nc6 D() {
        return this.responseTypeCase_ == 3 ? (nc6) this.responseType_ : nc6.C();
    }

    public oc6 E() {
        return this.responseTypeCase_ == 4 ? (oc6) this.responseType_ : oc6.C();
    }

    public qc6 F() {
        return this.responseTypeCase_ == 6 ? (qc6) this.responseType_ : qc6.C();
    }

    public sc6 G() {
        return this.responseTypeCase_ == 5 ? (sc6) this.responseType_ : sc6.D();
    }

    public c H() {
        int i = this.responseTypeCase_;
        if (i == 0) {
            return c.RESPONSETYPE_NOT_SET;
        }
        if (i == 2) {
            return c.TARGET_CHANGE;
        }
        if (i == 3) {
            return c.DOCUMENT_CHANGE;
        }
        if (i == 4) {
            return c.DOCUMENT_DELETE;
        }
        if (i == 5) {
            return c.FILTER;
        }
        if (i != 6) {
            return null;
        }
        return c.DOCUMENT_REMOVE;
    }

    public ad6 I() {
        return this.responseTypeCase_ == 2 ? (ad6) this.responseType_ : ad6.D();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0001\u0000\u0002\u0006\u0005\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000", new Object[]{"responseType_", "responseTypeCase_", ad6.class, nc6.class, oc6.class, sc6.class, qc6.class});
            case NEW_MUTABLE_INSTANCE:
                return new vc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<vc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (vc6.class) {
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
