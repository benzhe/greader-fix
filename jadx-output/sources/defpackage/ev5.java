package defpackage;

import defpackage.gj6;
import defpackage.zc6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ev5 extends gj6<ev5, b> implements Object {
    private static final ev5 DEFAULT_INSTANCE;
    public static final int DOCUMENTS_FIELD_NUMBER = 6;
    public static final int LAST_LIMBO_FREE_SNAPSHOT_VERSION_FIELD_NUMBER = 7;
    public static final int LAST_LISTEN_SEQUENCE_NUMBER_FIELD_NUMBER = 4;
    private static volatile ik6<ev5> PARSER = null;
    public static final int QUERY_FIELD_NUMBER = 5;
    public static final int RESUME_TOKEN_FIELD_NUMBER = 3;
    public static final int SNAPSHOT_VERSION_FIELD_NUMBER = 2;
    public static final int TARGET_ID_FIELD_NUMBER = 1;
    private wk6 lastLimboFreeSnapshotVersion_;
    private long lastListenSequenceNumber_;
    private wk6 snapshotVersion_;
    private int targetId_;
    private Object targetType_;
    private int targetTypeCase_ = 0;
    private qi6 resumeToken_ = qi6.f;

    public static final class b extends gj6.a<ev5, b> implements Object {
        public b() {
            super(ev5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(ev5.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        QUERY(5),
        DOCUMENTS(6),
        TARGETTYPE_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        ev5 ev5Var = new ev5();
        DEFAULT_INSTANCE = ev5Var;
        gj6.z(ev5.class, ev5Var);
    }

    public static void C(ev5 ev5Var, zc6.d dVar) {
        Objects.requireNonNull(ev5Var);
        dVar.getClass();
        ev5Var.targetType_ = dVar;
        ev5Var.targetTypeCase_ = 5;
    }

    public static void D(ev5 ev5Var, zc6.c cVar) {
        Objects.requireNonNull(ev5Var);
        cVar.getClass();
        ev5Var.targetType_ = cVar;
        ev5Var.targetTypeCase_ = 6;
    }

    public static void E(ev5 ev5Var, wk6 wk6Var) {
        Objects.requireNonNull(ev5Var);
        wk6Var.getClass();
        ev5Var.lastLimboFreeSnapshotVersion_ = wk6Var;
    }

    public static void F(ev5 ev5Var) {
        ev5Var.lastLimboFreeSnapshotVersion_ = null;
    }

    public static void G(ev5 ev5Var, int i) {
        ev5Var.targetId_ = i;
    }

    public static void H(ev5 ev5Var, wk6 wk6Var) {
        Objects.requireNonNull(ev5Var);
        wk6Var.getClass();
        ev5Var.snapshotVersion_ = wk6Var;
    }

    public static void I(ev5 ev5Var, qi6 qi6Var) {
        Objects.requireNonNull(ev5Var);
        qi6Var.getClass();
        ev5Var.resumeToken_ = qi6Var;
    }

    public static void J(ev5 ev5Var, long j) {
        ev5Var.lastListenSequenceNumber_ = j;
    }

    public static b S() {
        return DEFAULT_INSTANCE.q();
    }

    public static ev5 T(byte[] bArr) throws kj6 {
        return (ev5) gj6.x(DEFAULT_INSTANCE, bArr);
    }

    public zc6.c K() {
        return this.targetTypeCase_ == 6 ? (zc6.c) this.targetType_ : zc6.c.D();
    }

    public wk6 L() {
        wk6 wk6Var = this.lastLimboFreeSnapshotVersion_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public long M() {
        return this.lastListenSequenceNumber_;
    }

    public zc6.d N() {
        return this.targetTypeCase_ == 5 ? (zc6.d) this.targetType_ : zc6.d.E();
    }

    public qi6 O() {
        return this.resumeToken_;
    }

    public wk6 P() {
        wk6 wk6Var = this.snapshotVersion_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public int Q() {
        return this.targetId_;
    }

    public c R() {
        int i = this.targetTypeCase_;
        if (i == 0) {
            return c.TARGETTYPE_NOT_SET;
        }
        if (i == 5) {
            return c.QUERY;
        }
        if (i != 6) {
            return null;
        }
        return c.DOCUMENTS;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001\u0004\u0002\t\u0003\n\u0004\u0002\u0005<\u0000\u0006<\u0000\u0007\t", new Object[]{"targetType_", "targetTypeCase_", "targetId_", "snapshotVersion_", "resumeToken_", "lastListenSequenceNumber_", zc6.d.class, zc6.c.class, "lastLimboFreeSnapshotVersion_"});
            case NEW_MUTABLE_INSTANCE:
                return new ev5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ev5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ev5.class) {
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
