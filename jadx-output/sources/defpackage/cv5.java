package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cv5 extends gj6<cv5, b> implements Object {
    private static final cv5 DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 2;
    public static final int HAS_COMMITTED_MUTATIONS_FIELD_NUMBER = 4;
    public static final int NO_DOCUMENT_FIELD_NUMBER = 1;
    private static volatile ik6<cv5> PARSER = null;
    public static final int UNKNOWN_DOCUMENT_FIELD_NUMBER = 3;
    private int documentTypeCase_ = 0;
    private Object documentType_;
    private boolean hasCommittedMutations_;

    public static final class b extends gj6.a<cv5, b> implements Object {
        public b() {
            super(cv5.DEFAULT_INSTANCE);
        }

        public b r(boolean z) {
            o();
            cv5.C((cv5) this.f, z);
            return this;
        }

        public b(a aVar) {
            super(cv5.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        NO_DOCUMENT(1),
        DOCUMENT(2),
        UNKNOWN_DOCUMENT(3),
        DOCUMENTTYPE_NOT_SET(0);

        c(int i2) {
        }
    }

    static {
        cv5 cv5Var = new cv5();
        DEFAULT_INSTANCE = cv5Var;
        gj6.z(cv5.class, cv5Var);
    }

    public static void C(cv5 cv5Var, boolean z) {
        cv5Var.hasCommittedMutations_ = z;
    }

    public static void D(cv5 cv5Var, dv5 dv5Var) {
        Objects.requireNonNull(cv5Var);
        dv5Var.getClass();
        cv5Var.documentType_ = dv5Var;
        cv5Var.documentTypeCase_ = 1;
    }

    public static void E(cv5 cv5Var, mc6 mc6Var) {
        Objects.requireNonNull(cv5Var);
        mc6Var.getClass();
        cv5Var.documentType_ = mc6Var;
        cv5Var.documentTypeCase_ = 2;
    }

    public static void F(cv5 cv5Var, fv5 fv5Var) {
        Objects.requireNonNull(cv5Var);
        fv5Var.getClass();
        cv5Var.documentType_ = fv5Var;
        cv5Var.documentTypeCase_ = 3;
    }

    public static b L() {
        return DEFAULT_INSTANCE.q();
    }

    public static cv5 M(byte[] bArr) throws kj6 {
        return (cv5) gj6.x(DEFAULT_INSTANCE, bArr);
    }

    public mc6 G() {
        return this.documentTypeCase_ == 2 ? (mc6) this.documentType_ : mc6.F();
    }

    public c H() {
        int i = this.documentTypeCase_;
        if (i == 0) {
            return c.DOCUMENTTYPE_NOT_SET;
        }
        if (i == 1) {
            return c.NO_DOCUMENT;
        }
        if (i == 2) {
            return c.DOCUMENT;
        }
        if (i != 3) {
            return null;
        }
        return c.UNKNOWN_DOCUMENT;
    }

    public boolean I() {
        return this.hasCommittedMutations_;
    }

    public dv5 J() {
        return this.documentTypeCase_ == 1 ? (dv5) this.documentType_ : dv5.E();
    }

    public fv5 K() {
        return this.documentTypeCase_ == 3 ? (fv5) this.documentType_ : fv5.E();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0001\u0000\u0001\u0004\u0004\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000\u0004\u0007", new Object[]{"documentType_", "documentTypeCase_", dv5.class, mc6.class, fv5.class, "hasCommittedMutations_"});
            case NEW_MUTABLE_INSTANCE:
                return new cv5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<cv5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (cv5.class) {
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
