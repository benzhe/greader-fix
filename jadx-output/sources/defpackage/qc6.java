package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class qc6 extends gj6<qc6, b> implements Object {
    private static final qc6 DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    private static volatile ik6<qc6> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 4;
    public static final int REMOVED_TARGET_IDS_FIELD_NUMBER = 2;
    private wk6 readTime_;
    private int removedTargetIdsMemoizedSerializedSize = -1;
    private String document_ = "";
    private jj6.c removedTargetIds_ = ij6.h;

    public static final class b extends gj6.a<qc6, b> implements Object {
        public b(a aVar) {
            super(qc6.DEFAULT_INSTANCE);
        }
    }

    static {
        qc6 qc6Var = new qc6();
        DEFAULT_INSTANCE = qc6Var;
        gj6.z(qc6.class, qc6Var);
    }

    public static qc6 C() {
        return DEFAULT_INSTANCE;
    }

    public String D() {
        return this.document_;
    }

    public List<Integer> E() {
        return this.removedTargetIds_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0004\u0003\u0000\u0001\u0000\u0001Ȉ\u0002'\u0004\t", new Object[]{"document_", "removedTargetIds_", "readTime_"});
            case NEW_MUTABLE_INSTANCE:
                return new qc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<qc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (qc6.class) {
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
