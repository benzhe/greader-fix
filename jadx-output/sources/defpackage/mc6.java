package defpackage;

import defpackage.gj6;
import java.util.Collections;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public final class mc6 extends gj6<mc6, b> implements Object {
    public static final int CREATE_TIME_FIELD_NUMBER = 3;
    private static final mc6 DEFAULT_INSTANCE;
    public static final int FIELDS_FIELD_NUMBER = 2;
    public static final int NAME_FIELD_NUMBER = 1;
    private static volatile ik6<mc6> PARSER = null;
    public static final int UPDATE_TIME_FIELD_NUMBER = 4;
    private wk6 createTime_;
    private uj6<String, bd6> fields_ = uj6.f;
    private String name_ = "";
    private wk6 updateTime_;

    public static final class b extends gj6.a<mc6, b> implements Object {
        public b() {
            super(mc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(mc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c {
        public static final tj6<String, bd6> a = new tj6<>(fl6.o, "", fl6.q, bd6.Q());
    }

    static {
        mc6 mc6Var = new mc6();
        DEFAULT_INSTANCE = mc6Var;
        gj6.z(mc6.class, mc6Var);
    }

    public static void C(mc6 mc6Var, String str) {
        Objects.requireNonNull(mc6Var);
        str.getClass();
        mc6Var.name_ = str;
    }

    public static Map D(mc6 mc6Var) {
        uj6<String, bd6> uj6Var = mc6Var.fields_;
        if (!uj6Var.e) {
            mc6Var.fields_ = uj6Var.d();
        }
        return mc6Var.fields_;
    }

    public static void E(mc6 mc6Var, wk6 wk6Var) {
        Objects.requireNonNull(mc6Var);
        wk6Var.getClass();
        mc6Var.updateTime_ = wk6Var;
    }

    public static mc6 F() {
        return DEFAULT_INSTANCE;
    }

    public static b J() {
        return DEFAULT_INSTANCE.q();
    }

    public Map<String, bd6> G() {
        return Collections.unmodifiableMap(this.fields_);
    }

    public String H() {
        return this.name_;
    }

    public wk6 I() {
        wk6 wk6Var = this.updateTime_;
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0001\u0000\u0000\u0001Ȉ\u00022\u0003\t\u0004\t", new Object[]{"name_", "fields_", c.a, "createTime_", "updateTime_"});
            case NEW_MUTABLE_INSTANCE:
                return new mc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<mc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (mc6.class) {
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
