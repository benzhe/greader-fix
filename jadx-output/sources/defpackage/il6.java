package defpackage;

import defpackage.gj6;
import defpackage.jj6;

/* loaded from: classes.dex */
public final class il6 extends gj6<il6, b> implements Object {
    public static final int CODE_FIELD_NUMBER = 1;
    private static final il6 DEFAULT_INSTANCE;
    public static final int DETAILS_FIELD_NUMBER = 3;
    public static final int MESSAGE_FIELD_NUMBER = 2;
    private static volatile ik6<il6> PARSER;
    private int code_;
    private String message_ = "";
    private jj6.d<mi6> details_ = mk6.h;

    public static final class b extends gj6.a<il6, b> implements Object {
        public b(a aVar) {
            super(il6.DEFAULT_INSTANCE);
        }
    }

    static {
        il6 il6Var = new il6();
        DEFAULT_INSTANCE = il6Var;
        gj6.z(il6.class, il6Var);
    }

    public static il6 D() {
        return DEFAULT_INSTANCE;
    }

    public int C() {
        return this.code_;
    }

    public String E() {
        return this.message_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0001\u0000\u0001\u0004\u0002Ȉ\u0003\u001b", new Object[]{"code_", "message_", "details_", mi6.class});
            case NEW_MUTABLE_INSTANCE:
                return new il6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<il6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (il6.class) {
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
