package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class oc6 extends gj6<oc6, b> implements Object {
    private static final oc6 DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    private static volatile ik6<oc6> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 4;
    public static final int REMOVED_TARGET_IDS_FIELD_NUMBER = 6;
    private wk6 readTime_;
    private int removedTargetIdsMemoizedSerializedSize = -1;
    private String document_ = "";
    private jj6.c removedTargetIds_ = ij6.h;

    public static final class b extends gj6.a<oc6, b> implements Object {
        public b(a aVar) {
            super(oc6.DEFAULT_INSTANCE);
        }
    }

    static {
        oc6 oc6Var = new oc6();
        DEFAULT_INSTANCE = oc6Var;
        gj6.z(oc6.class, oc6Var);
    }

    public static oc6 C() {
        return DEFAULT_INSTANCE;
    }

    public String D() {
        return this.document_;
    }

    public wk6 E() {
        wk6 wk6Var = this.readTime_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public List<Integer> F() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0001\u0000\u0001Ȉ\u0004\t\u0006'", new Object[]{"document_", "readTime_", "removedTargetIds_"});
            case NEW_MUTABLE_INSTANCE:
                return new oc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<oc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (oc6.class) {
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
