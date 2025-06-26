package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class fv5 extends gj6<fv5, b> implements Object {
    private static final fv5 DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile ik6<fv5> PARSER = null;
    public static final int VERSION_FIELD_NUMBER = 2;
    private String name_ = "";
    private wk6 version_;

    public static final class b extends gj6.a<fv5, b> implements Object {
        public b() {
            super(fv5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(fv5.DEFAULT_INSTANCE);
        }
    }

    static {
        fv5 fv5Var = new fv5();
        DEFAULT_INSTANCE = fv5Var;
        gj6.z(fv5.class, fv5Var);
    }

    public static void C(fv5 fv5Var, String str) {
        Objects.requireNonNull(fv5Var);
        str.getClass();
        fv5Var.name_ = str;
    }

    public static void D(fv5 fv5Var, wk6 wk6Var) {
        Objects.requireNonNull(fv5Var);
        wk6Var.getClass();
        fv5Var.version_ = wk6Var;
    }

    public static fv5 E() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
        return DEFAULT_INSTANCE.q();
    }

    public String F() {
        return this.name_;
    }

    public wk6 G() {
        wk6 wk6Var = this.version_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"name_", "version_"});
            case NEW_MUTABLE_INSTANCE:
                return new fv5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<fv5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (fv5.class) {
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
