package defpackage;

import defpackage.gj6;

/* loaded from: classes.dex */
public final class mi6 extends gj6<mi6, b> implements Object {
    private static final mi6 DEFAULT_INSTANCE;
    private static volatile ik6<mi6> PARSER = null;
    public static final int TYPE_URL_FIELD_NUMBER = 1;
    public static final int VALUE_FIELD_NUMBER = 2;
    private String typeUrl_ = "";
    private qi6 value_ = qi6.f;

    public static final class b extends gj6.a<mi6, b> implements Object {
        public b(a aVar) {
            super(mi6.DEFAULT_INSTANCE);
        }
    }

    static {
        mi6 mi6Var = new mi6();
        DEFAULT_INSTANCE = mi6Var;
        gj6.z(mi6.class, mi6Var);
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002\n", new Object[]{"typeUrl_", "value_"});
            case NEW_MUTABLE_INSTANCE:
                return new mi6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<mi6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (mi6.class) {
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
