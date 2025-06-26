package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class lc6 extends gj6<lc6, b> implements Object {
    public static final int BEFORE_FIELD_NUMBER = 2;
    private static final lc6 DEFAULT_INSTANCE;
    private static volatile ik6<lc6> PARSER = null;
    public static final int VALUES_FIELD_NUMBER = 1;
    private boolean before_;
    private jj6.d<bd6> values_ = mk6.h;

    public static final class b extends gj6.a<lc6, b> implements Object {
        public b() {
            super(lc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(lc6.DEFAULT_INSTANCE);
        }
    }

    static {
        lc6 lc6Var = new lc6();
        DEFAULT_INSTANCE = lc6Var;
        gj6.z(lc6.class, lc6Var);
    }

    public static void C(lc6 lc6Var, Iterable iterable) {
        jj6.d<bd6> dVar = lc6Var.values_;
        if (!dVar.F0()) {
            lc6Var.values_ = gj6.v(dVar);
        }
        ii6.a(iterable, lc6Var.values_);
    }

    public static void D(lc6 lc6Var, boolean z) {
        lc6Var.before_ = z;
    }

    public static lc6 F() {
        return DEFAULT_INSTANCE;
    }

    public static b G() {
        return DEFAULT_INSTANCE.q();
    }

    public boolean E() {
        return this.before_;
    }

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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0007", new Object[]{"values_", bd6.class, "before_"});
            case NEW_MUTABLE_INSTANCE:
                return new lc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<lc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (lc6.class) {
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
