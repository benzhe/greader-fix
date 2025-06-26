package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class qg6 extends gj6<qg6, b> implements Object {
    private static final qg6 DEFAULT_INSTANCE;
    public static final int EXPIRATION_EPOCH_TIMESTAMP_MILLIS_FIELD_NUMBER = 2;
    public static final int MESSAGES_FIELD_NUMBER = 1;
    private static volatile ik6<qg6> PARSER;
    private long expirationEpochTimestampMillis_;
    private jj6.d<kg6> messages_ = mk6.h;

    public static final class b extends gj6.a<qg6, b> implements Object {
        public b() {
            super(qg6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(qg6.DEFAULT_INSTANCE);
        }
    }

    static {
        qg6 qg6Var = new qg6();
        DEFAULT_INSTANCE = qg6Var;
        gj6.z(qg6.class, qg6Var);
    }

    public static void C(qg6 qg6Var, long j) {
        qg6Var.expirationEpochTimestampMillis_ = j;
    }

    public static qg6 D() {
        return DEFAULT_INSTANCE;
    }

    public static b G() {
        return DEFAULT_INSTANCE.q();
    }

    public static ik6<qg6> H() {
        return DEFAULT_INSTANCE.k();
    }

    public long E() {
        return this.expirationEpochTimestampMillis_;
    }

    public List<kg6> F() {
        return this.messages_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\u001b\u0002\u0002", new Object[]{"messages_", kg6.class, "expirationEpochTimestampMillis_"});
            case NEW_MUTABLE_INSTANCE:
                return new qg6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<qg6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (qg6.class) {
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
