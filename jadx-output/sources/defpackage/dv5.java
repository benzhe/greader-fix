package defpackage;

import defpackage.gj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class dv5 extends gj6<dv5, b> implements Object {
    private static final dv5 DEFAULT_INSTANCE;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile ik6<dv5> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 2;
    private String name_ = "";
    private wk6 readTime_;

    public static final class b extends gj6.a<dv5, b> implements Object {
        public b() {
            super(dv5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(dv5.DEFAULT_INSTANCE);
        }
    }

    static {
        dv5 dv5Var = new dv5();
        DEFAULT_INSTANCE = dv5Var;
        gj6.z(dv5.class, dv5Var);
    }

    public static void C(dv5 dv5Var, String str) {
        Objects.requireNonNull(dv5Var);
        str.getClass();
        dv5Var.name_ = str;
    }

    public static void D(dv5 dv5Var, wk6 wk6Var) {
        Objects.requireNonNull(dv5Var);
        wk6Var.getClass();
        dv5Var.readTime_ = wk6Var;
    }

    public static dv5 E() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
        return DEFAULT_INSTANCE.q();
    }

    public String F() {
        return this.name_;
    }

    public wk6 G() {
        wk6 wk6Var = this.readTime_;
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\t", new Object[]{"name_", "readTime_"});
            case NEW_MUTABLE_INSTANCE:
                return new dv5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<dv5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (dv5.class) {
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
