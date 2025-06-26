package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class sc6 extends gj6<sc6, b> implements Object {
    public static final int COUNT_FIELD_NUMBER = 2;
    private static final sc6 DEFAULT_INSTANCE;
    private static volatile ik6<sc6> PARSER = null;
    public static final int TARGET_ID_FIELD_NUMBER = 1;
    private int count_;
    private int targetId_;

    public static final class b extends gj6.a<sc6, b> implements Object {
        public b(a aVar) {
            super(sc6.DEFAULT_INSTANCE);
        }
    }

    static {
        sc6 sc6Var = new sc6();
        DEFAULT_INSTANCE = sc6Var;
        gj6.z(sc6.class, sc6Var);
    }

    public static sc6 D() {
        return DEFAULT_INSTANCE;
    }

    public int C() {
        return this.count_;
    }

    public int E() {
        return this.targetId_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\u0004\u0002\u0004", new Object[]{"targetId_", "count_"});
            case NEW_MUTABLE_INSTANCE:
                return new sc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<sc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (sc6.class) {
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
