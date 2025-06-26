package defpackage;

import defpackage.gj6;
import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class wc6 extends gj6<wc6, b> implements Object {
    private static final wc6 DEFAULT_INSTANCE;
    public static final int FIELDS_FIELD_NUMBER = 1;
    private static volatile ik6<wc6> PARSER;
    private uj6<String, bd6> fields_ = uj6.f;

    public static final class b extends gj6.a<wc6, b> implements Object {
        public b() {
            super(wc6.DEFAULT_INSTANCE);
        }

        public b r(String str, bd6 bd6Var) {
            str.getClass();
            bd6Var.getClass();
            o();
            ((uj6) wc6.C((wc6) this.f)).put(str, bd6Var);
            return this;
        }

        public b(a aVar) {
            super(wc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c {
        public static final tj6<String, bd6> a = new tj6<>(fl6.o, "", fl6.q, bd6.Q());
    }

    static {
        wc6 wc6Var = new wc6();
        DEFAULT_INSTANCE = wc6Var;
        gj6.z(wc6.class, wc6Var);
    }

    public static Map C(wc6 wc6Var) {
        uj6<String, bd6> uj6Var = wc6Var.fields_;
        if (!uj6Var.e) {
            wc6Var.fields_ = uj6Var.d();
        }
        return wc6Var.fields_;
    }

    public static wc6 D() {
        return DEFAULT_INSTANCE;
    }

    public static b I() {
        return DEFAULT_INSTANCE.q();
    }

    public int E() {
        return this.fields_.size();
    }

    public Map<String, bd6> F() {
        return Collections.unmodifiableMap(this.fields_);
    }

    public bd6 G(String str, bd6 bd6Var) {
        str.getClass();
        uj6<String, bd6> uj6Var = this.fields_;
        if (uj6Var.containsKey(str)) {
            return uj6Var.get(str);
        }
        return null;
    }

    public bd6 H(String str) {
        str.getClass();
        uj6<String, bd6> uj6Var = this.fields_;
        if (uj6Var.containsKey(str)) {
            return uj6Var.get(str);
        }
        throw new IllegalArgumentException();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0001\u0000\u0000\u00012", new Object[]{"fields_", c.a});
            case NEW_MUTABLE_INSTANCE:
                return new wc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<wc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (wc6.class) {
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
