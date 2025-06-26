package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;

/* loaded from: classes.dex */
public final class ad6 extends gj6<ad6, b> implements Object {
    public static final int CAUSE_FIELD_NUMBER = 3;
    private static final ad6 DEFAULT_INSTANCE;
    private static volatile ik6<ad6> PARSER = null;
    public static final int READ_TIME_FIELD_NUMBER = 6;
    public static final int RESUME_TOKEN_FIELD_NUMBER = 4;
    public static final int TARGET_CHANGE_TYPE_FIELD_NUMBER = 1;
    public static final int TARGET_IDS_FIELD_NUMBER = 2;
    private il6 cause_;
    private wk6 readTime_;
    private int targetChangeType_;
    private int targetIdsMemoizedSerializedSize = -1;
    private jj6.c targetIds_ = ij6.h;
    private qi6 resumeToken_ = qi6.f;

    public static final class b extends gj6.a<ad6, b> implements Object {
        public b(a aVar) {
            super(ad6.DEFAULT_INSTANCE);
        }
    }

    public enum c implements jj6.a {
        NO_CHANGE(0),
        ADD(1),
        REMOVE(2),
        CURRENT(3),
        RESET(4),
        UNRECOGNIZED(-1);

        public final int e;

        c(int i) {
            this.e = i;
        }

        public static c i(int i) {
            if (i == 0) {
                return NO_CHANGE;
            }
            if (i == 1) {
                return ADD;
            }
            if (i == 2) {
                return REMOVE;
            }
            if (i == 3) {
                return CURRENT;
            }
            if (i != 4) {
                return null;
            }
            return RESET;
        }

        @Override // jj6.a
        public final int g() {
            if (this != UNRECOGNIZED) {
                return this.e;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    static {
        ad6 ad6Var = new ad6();
        DEFAULT_INSTANCE = ad6Var;
        gj6.z(ad6.class, ad6Var);
    }

    public static ad6 D() {
        return DEFAULT_INSTANCE;
    }

    public il6 C() {
        il6 il6Var = this.cause_;
        return il6Var == null ? il6.D() : il6Var;
    }

    public wk6 E() {
        wk6 wk6Var = this.readTime_;
        return wk6Var == null ? wk6.E() : wk6Var;
    }

    public qi6 F() {
        return this.resumeToken_;
    }

    public c G() {
        c cVarI = c.i(this.targetChangeType_);
        return cVarI == null ? c.UNRECOGNIZED : cVarI;
    }

    public int H() {
        return ((ij6) this.targetIds_).size();
    }

    public List<Integer> I() {
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0005\u0000\u0000\u0001\u0006\u0005\u0000\u0001\u0000\u0001\f\u0002'\u0003\t\u0004\n\u0006\t", new Object[]{"targetChangeType_", "targetIds_", "cause_", "resumeToken_", "readTime_"});
            case NEW_MUTABLE_INSTANCE:
                return new ad6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<ad6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (ad6.class) {
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
