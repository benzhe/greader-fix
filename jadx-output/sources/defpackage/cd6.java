package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class cd6 extends gj6<cd6, b> implements Object {
    public static final int CURRENT_DOCUMENT_FIELD_NUMBER = 4;
    private static final cd6 DEFAULT_INSTANCE;
    public static final int DELETE_FIELD_NUMBER = 2;
    private static volatile ik6<cd6> PARSER = null;
    public static final int TRANSFORM_FIELD_NUMBER = 6;
    public static final int UPDATE_FIELD_NUMBER = 1;
    public static final int UPDATE_MASK_FIELD_NUMBER = 3;
    public static final int VERIFY_FIELD_NUMBER = 5;
    private xc6 currentDocument_;
    private int operationCase_ = 0;
    private Object operation_;
    private pc6 updateMask_;

    public static final class b extends gj6.a<cd6, b> implements Object {
        public b() {
            super(cd6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(cd6.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        UPDATE(1),
        DELETE(2),
        VERIFY(5),
        TRANSFORM(6),
        OPERATION_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        cd6 cd6Var = new cd6();
        DEFAULT_INSTANCE = cd6Var;
        gj6.z(cd6.class, cd6Var);
    }

    public static void C(cd6 cd6Var, rc6 rc6Var) {
        Objects.requireNonNull(cd6Var);
        cd6Var.operation_ = rc6Var;
        cd6Var.operationCase_ = 6;
    }

    public static void D(cd6 cd6Var, pc6 pc6Var) {
        Objects.requireNonNull(cd6Var);
        pc6Var.getClass();
        cd6Var.updateMask_ = pc6Var;
    }

    public static void E(cd6 cd6Var, xc6 xc6Var) {
        Objects.requireNonNull(cd6Var);
        xc6Var.getClass();
        cd6Var.currentDocument_ = xc6Var;
    }

    public static void F(cd6 cd6Var, mc6 mc6Var) {
        Objects.requireNonNull(cd6Var);
        mc6Var.getClass();
        cd6Var.operation_ = mc6Var;
        cd6Var.operationCase_ = 1;
    }

    public static void G(cd6 cd6Var, String str) {
        Objects.requireNonNull(cd6Var);
        str.getClass();
        cd6Var.operationCase_ = 2;
        cd6Var.operation_ = str;
    }

    public static void H(cd6 cd6Var, String str) {
        Objects.requireNonNull(cd6Var);
        str.getClass();
        cd6Var.operationCase_ = 5;
        cd6Var.operation_ = str;
    }

    public static b R() {
        return DEFAULT_INSTANCE.q();
    }

    public xc6 I() {
        xc6 xc6Var = this.currentDocument_;
        return xc6Var == null ? xc6.F() : xc6Var;
    }

    public String J() {
        return this.operationCase_ == 2 ? (String) this.operation_ : "";
    }

    public c K() {
        int i = this.operationCase_;
        if (i == 0) {
            return c.OPERATION_NOT_SET;
        }
        if (i == 1) {
            return c.UPDATE;
        }
        if (i == 2) {
            return c.DELETE;
        }
        if (i == 5) {
            return c.VERIFY;
        }
        if (i != 6) {
            return null;
        }
        return c.TRANSFORM;
    }

    public rc6 L() {
        return this.operationCase_ == 6 ? (rc6) this.operation_ : rc6.E();
    }

    public mc6 M() {
        return this.operationCase_ == 1 ? (mc6) this.operation_ : mc6.F();
    }

    public pc6 N() {
        pc6 pc6Var = this.updateMask_;
        return pc6Var == null ? pc6.D() : pc6Var;
    }

    public String O() {
        return this.operationCase_ == 5 ? (String) this.operation_ : "";
    }

    public boolean P() {
        return this.currentDocument_ != null;
    }

    public boolean Q() {
        return this.updateMask_ != null;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0006\u0001\u0000\u0001\u0006\u0006\u0000\u0000\u0000\u0001<\u0000\u0002Ȼ\u0000\u0003\t\u0004\t\u0005Ȼ\u0000\u0006<\u0000", new Object[]{"operation_", "operationCase_", mc6.class, "updateMask_", "currentDocument_", rc6.class});
            case NEW_MUTABLE_INSTANCE:
                return new cd6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<cd6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (cd6.class) {
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
