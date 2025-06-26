package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class gv5 extends gj6<gv5, b> implements Object {
    public static final int BASE_WRITES_FIELD_NUMBER = 4;
    public static final int BATCH_ID_FIELD_NUMBER = 1;
    private static final gv5 DEFAULT_INSTANCE;
    public static final int LOCAL_WRITE_TIME_FIELD_NUMBER = 3;
    private static volatile ik6<gv5> PARSER = null;
    public static final int WRITES_FIELD_NUMBER = 2;
    private jj6.d<cd6> baseWrites_;
    private int batchId_;
    private wk6 localWriteTime_;
    private jj6.d<cd6> writes_;

    public static final class b extends gj6.a<gv5, b> implements Object {
        public b() {
            super(gv5.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(gv5.DEFAULT_INSTANCE);
        }
    }

    static {
        gv5 gv5Var = new gv5();
        DEFAULT_INSTANCE = gv5Var;
        gj6.z(gv5.class, gv5Var);
    }

    public gv5() {
        mk6<Object> mk6Var = mk6.h;
        this.writes_ = mk6Var;
        this.baseWrites_ = mk6Var;
    }

    public static void C(gv5 gv5Var, int i) {
        gv5Var.batchId_ = i;
    }

    public static void D(gv5 gv5Var, cd6 cd6Var) {
        Objects.requireNonNull(gv5Var);
        cd6Var.getClass();
        jj6.d<cd6> dVar = gv5Var.baseWrites_;
        if (!dVar.F0()) {
            gv5Var.baseWrites_ = gj6.v(dVar);
        }
        gv5Var.baseWrites_.add(cd6Var);
    }

    public static void E(gv5 gv5Var, cd6 cd6Var) {
        Objects.requireNonNull(gv5Var);
        cd6Var.getClass();
        jj6.d<cd6> dVar = gv5Var.writes_;
        if (!dVar.F0()) {
            gv5Var.writes_ = gj6.v(dVar);
        }
        gv5Var.writes_.add(cd6Var);
    }

    public static void F(gv5 gv5Var, wk6 wk6Var) {
        Objects.requireNonNull(gv5Var);
        wk6Var.getClass();
        gv5Var.localWriteTime_ = wk6Var;
    }

    public static b M() {
        return DEFAULT_INSTANCE.q();
    }

    public static gv5 N(qi6 qi6Var) throws kj6 {
        gv5 gv5Var = DEFAULT_INSTANCE;
        yi6 yi6VarA = yi6.a();
        try {
            ri6 ri6VarA = qi6Var.A();
            gj6 gj6VarY = gj6.y(gv5Var, ri6VarA, yi6VarA);
            try {
                ri6VarA.a(0);
                gj6.p(gj6VarY);
                gj6.p(gj6VarY);
                return (gv5) gj6VarY;
            } catch (kj6 e) {
                throw e;
            }
        } catch (kj6 e2) {
            throw e2;
        }
    }

    public static gv5 O(byte[] bArr) throws kj6 {
        return (gv5) gj6.x(DEFAULT_INSTANCE, bArr);
    }

    public cd6 G(int i) {
        return this.baseWrites_.get(i);
    }

    public int H() {
        return this.baseWrites_.size();
    }

    public int I() {
        return this.batchId_;
    }

    public wk6 J() {
        wk6 wk6Var = this.localWriteTime_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public cd6 K(int i) {
        return this.writes_.get(i);
    }

    public int L() {
        return this.writes_.size();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0002\u0000\u0001\u0004\u0002\u001b\u0003\t\u0004\u001b", new Object[]{"batchId_", "writes_", cd6.class, "localWriteTime_", "baseWrites_", cd6.class});
            case NEW_MUTABLE_INSTANCE:
                return new gv5();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<gv5> bVar = PARSER;
                if (bVar == null) {
                    synchronized (gv5.class) {
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
