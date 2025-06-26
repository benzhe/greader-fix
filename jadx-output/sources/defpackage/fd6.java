package defpackage;

import defpackage.gj6;
import defpackage.jj6;

/* loaded from: classes.dex */
public final class fd6 extends gj6<fd6, b> implements Object {
    private static final fd6 DEFAULT_INSTANCE;
    private static volatile ik6<fd6> PARSER = null;
    public static final int TRANSFORM_RESULTS_FIELD_NUMBER = 2;
    public static final int UPDATE_TIME_FIELD_NUMBER = 1;
    private jj6.d<bd6> transformResults_ = mk6.h;
    private wk6 updateTime_;

    public static final class b extends gj6.a<fd6, b> implements Object {
        public b(a aVar) {
            super(fd6.DEFAULT_INSTANCE);
        }
    }

    static {
        fd6 fd6Var = new fd6();
        DEFAULT_INSTANCE = fd6Var;
        gj6.z(fd6.class, fd6Var);
    }

    public bd6 C(int i) {
        return this.transformResults_.get(i);
    }

    public int D() {
        return this.transformResults_.size();
    }

    public wk6 E() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\t\u0002\u001b", new Object[]{"updateTime_", "transformResults_", bd6.class});
            case NEW_MUTABLE_INSTANCE:
                return new fd6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<fd6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (fd6.class) {
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
