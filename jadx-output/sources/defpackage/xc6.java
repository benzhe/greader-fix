package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class xc6 extends gj6<xc6, b> implements Object {
    private static final xc6 DEFAULT_INSTANCE;
    public static final int EXISTS_FIELD_NUMBER = 1;
    private static volatile ik6<xc6> PARSER = null;
    public static final int UPDATE_TIME_FIELD_NUMBER = 2;
    private int conditionTypeCase_ = 0;
    private Object conditionType_;

    public static final class b extends gj6.a<xc6, b> implements Object {
        public b() {
            super(xc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(xc6.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        EXISTS(1),
        UPDATE_TIME(2),
        CONDITIONTYPE_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        xc6 xc6Var = new xc6();
        DEFAULT_INSTANCE = xc6Var;
        gj6.z(xc6.class, xc6Var);
    }

    public static void C(xc6 xc6Var, boolean z) {
        xc6Var.conditionTypeCase_ = 1;
        xc6Var.conditionType_ = Boolean.valueOf(z);
    }

    public static void D(xc6 xc6Var, wk6 wk6Var) {
        Objects.requireNonNull(xc6Var);
        wk6Var.getClass();
        xc6Var.conditionType_ = wk6Var;
        xc6Var.conditionTypeCase_ = 2;
    }

    public static xc6 F() {
        return DEFAULT_INSTANCE;
    }

    public static b I() {
        return DEFAULT_INSTANCE.q();
    }

    public c E() {
        int i = this.conditionTypeCase_;
        if (i == 0) {
            return c.CONDITIONTYPE_NOT_SET;
        }
        if (i == 1) {
            return c.EXISTS;
        }
        if (i != 2) {
            return null;
        }
        return c.UPDATE_TIME;
    }

    public boolean G() {
        if (this.conditionTypeCase_ == 1) {
            return ((Boolean) this.conditionType_).booleanValue();
        }
        return false;
    }

    public wk6 H() {
        return this.conditionTypeCase_ == 2 ? (wk6) this.conditionType_ : wk6.E();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001:\u0000\u0002<\u0000", new Object[]{"conditionType_", "conditionTypeCase_", wk6.class});
            case NEW_MUTABLE_INSTANCE:
                return new xc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<xc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (xc6.class) {
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
