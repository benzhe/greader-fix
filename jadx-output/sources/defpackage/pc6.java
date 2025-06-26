package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pc6 extends gj6<pc6, b> implements Object {
    private static final pc6 DEFAULT_INSTANCE;
    public static final int FIELD_PATHS_FIELD_NUMBER = 1;
    private static volatile ik6<pc6> PARSER;
    private jj6.d<String> fieldPaths_ = mk6.h;

    public static final class b extends gj6.a<pc6, b> implements Object {
        public b() {
            super(pc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(pc6.DEFAULT_INSTANCE);
        }
    }

    static {
        pc6 pc6Var = new pc6();
        DEFAULT_INSTANCE = pc6Var;
        gj6.z(pc6.class, pc6Var);
    }

    public static void C(pc6 pc6Var, String str) {
        Objects.requireNonNull(pc6Var);
        str.getClass();
        jj6.d<String> dVar = pc6Var.fieldPaths_;
        if (!dVar.F0()) {
            pc6Var.fieldPaths_ = gj6.v(dVar);
        }
        pc6Var.fieldPaths_.add(str);
    }

    public static pc6 D() {
        return DEFAULT_INSTANCE;
    }

    public static b G() {
        return DEFAULT_INSTANCE.q();
    }

    public String E(int i) {
        return this.fieldPaths_.get(i);
    }

    public int F() {
        return this.fieldPaths_.size();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001Ț", new Object[]{"fieldPaths_"});
            case NEW_MUTABLE_INSTANCE:
                return new pc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<pc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (pc6.class) {
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
