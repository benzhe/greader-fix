package defpackage;

import defpackage.gj6;
import defpackage.jj6;

/* loaded from: classes.dex */
public final class ed6 extends gj6<ed6, b> implements Object {
    public static final int COMMIT_TIME_FIELD_NUMBER = 4;
    private static final ed6 DEFAULT_INSTANCE;
    private static volatile ik6<ed6> PARSER = null;
    public static final int STREAM_ID_FIELD_NUMBER = 1;
    public static final int STREAM_TOKEN_FIELD_NUMBER = 2;
    public static final int WRITE_RESULTS_FIELD_NUMBER = 3;
    private wk6 commitTime_;
    private String streamId_ = "";
    private qi6 streamToken_ = qi6.f;
    private jj6.d<fd6> writeResults_ = mk6.h;

    public static final class b extends gj6.a<ed6, b> implements Object {
        public b(a aVar) {
            super(ed6.DEFAULT_INSTANCE);
        }
    }

    static {
        ed6 ed6Var = new ed6();
        DEFAULT_INSTANCE = ed6Var;
        gj6.z(ed6.class, ed6Var);
    }

    public static ed6 D() {
        return DEFAULT_INSTANCE;
    }

    public wk6 C() {
        wk6 wk6Var = this.commitTime_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public qi6 E() {
        return this.streamToken_;
    }

    public fd6 F(int i) {
        return this.writeResults_.get(i);
    }

    public int G() {
        return this.writeResults_.size();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0004\u0000\u0000\u0001\u0004\u0004\u0000\u0001\u0000\u0001Ȉ\u0002\n\u0003\u001b\u0004\t", new Object[]{"streamId_", "streamToken_", "writeResults_", fd6.class, "commitTime_"});
            case NEW_MUTABLE_INSTANCE:
                return new ed6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ed6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ed6.class) {
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
