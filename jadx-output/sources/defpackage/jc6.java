package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Collections;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class jc6 extends gj6<jc6, b> implements kc6 {
    private static final jc6 DEFAULT_INSTANCE;
    private static volatile ik6<jc6> PARSER = null;
    public static final int VALUES_FIELD_NUMBER = 1;
    private jj6.d<bd6> values_ = mk6.h;

    public static final class b extends gj6.a<jc6, b> implements kc6 {
        public b() {
            super(jc6.DEFAULT_INSTANCE);
        }

        @Override // defpackage.kc6
        public List<bd6> i() {
            return Collections.unmodifiableList(((jc6) this.f).i());
        }

        public b(a aVar) {
            super(jc6.DEFAULT_INSTANCE);
        }
    }

    static {
        jc6 jc6Var = new jc6();
        DEFAULT_INSTANCE = jc6Var;
        gj6.z(jc6.class, jc6Var);
    }

    public static void C(jc6 jc6Var, bd6 bd6Var) {
        Objects.requireNonNull(jc6Var);
        bd6Var.getClass();
        jc6Var.F();
        jc6Var.values_.add(bd6Var);
    }

    public static void D(jc6 jc6Var, Iterable iterable) {
        jc6Var.F();
        ii6.a(iterable, jc6Var.values_);
    }

    public static void E(jc6 jc6Var, int i) {
        jc6Var.F();
        jc6Var.values_.remove(i);
    }

    public static jc6 G() {
        return DEFAULT_INSTANCE;
    }

    public static b J() {
        return DEFAULT_INSTANCE.q();
    }

    public final void F() {
        jj6.d<bd6> dVar = this.values_;
        if (dVar.F0()) {
            return;
        }
        this.values_ = gj6.v(dVar);
    }

    public bd6 H(int i) {
        return this.values_.get(i);
    }

    public int I() {
        return this.values_.size();
    }

    @Override // defpackage.kc6
    public List<bd6> i() {
        return this.values_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"values_", bd6.class});
            case NEW_MUTABLE_INSTANCE:
                return new jc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<jc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (jc6.class) {
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
