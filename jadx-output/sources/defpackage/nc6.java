package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class nc6 extends gj6<nc6, b> implements Object {
    private static final nc6 DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    private static volatile ik6<nc6> PARSER = null;
    public static final int REMOVED_TARGET_IDS_FIELD_NUMBER = 6;
    public static final int TARGET_IDS_FIELD_NUMBER = 5;
    private mc6 document_;
    private jj6.c removedTargetIds_;
    private jj6.c targetIds_;
    private int targetIdsMemoizedSerializedSize = -1;
    private int removedTargetIdsMemoizedSerializedSize = -1;

    public static final class b extends gj6.a<nc6, b> implements Object {
        public b(a aVar) {
            super(nc6.DEFAULT_INSTANCE);
        }
    }

    static {
        nc6 nc6Var = new nc6();
        DEFAULT_INSTANCE = nc6Var;
        gj6.z(nc6.class, nc6Var);
    }

    public nc6() {
        ij6 ij6Var = ij6.h;
        this.targetIds_ = ij6Var;
        this.removedTargetIds_ = ij6Var;
    }

    public static nc6 C() {
        return DEFAULT_INSTANCE;
    }

    public mc6 D() {
        mc6 mc6Var = this.document_;
        return mc6Var == null ? mc6.F() : mc6Var;
    }

    public List<Integer> E() {
        return this.removedTargetIds_;
    }

    public List<Integer> F() {
        return this.targetIds_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0006\u0003\u0000\u0002\u0000\u0001\t\u0005'\u0006'", new Object[]{"document_", "targetIds_", "removedTargetIds_"});
            case NEW_MUTABLE_INSTANCE:
                return new nc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<nc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (nc6.class) {
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
