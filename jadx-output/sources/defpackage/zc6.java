package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zc6 extends gj6<zc6, b> implements Object {
    private static final zc6 DEFAULT_INSTANCE;
    public static final int DOCUMENTS_FIELD_NUMBER = 3;
    public static final int ONCE_FIELD_NUMBER = 6;
    private static volatile ik6<zc6> PARSER = null;
    public static final int QUERY_FIELD_NUMBER = 2;
    public static final int READ_TIME_FIELD_NUMBER = 11;
    public static final int RESUME_TOKEN_FIELD_NUMBER = 4;
    public static final int TARGET_ID_FIELD_NUMBER = 5;
    private boolean once_;
    private Object resumeType_;
    private int targetId_;
    private Object targetType_;
    private int targetTypeCase_ = 0;
    private int resumeTypeCase_ = 0;

    public static final class b extends gj6.a<zc6, b> implements Object {
        public b() {
            super(zc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(zc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c extends gj6<c, a> implements Object {
        private static final c DEFAULT_INSTANCE;
        public static final int DOCUMENTS_FIELD_NUMBER = 2;
        private static volatile ik6<c> PARSER;
        private jj6.d<String> documents_ = mk6.h;

        public static final class a extends gj6.a<c, a> implements Object {
            public a() {
                super(c.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(c.DEFAULT_INSTANCE);
            }
        }

        static {
            c cVar = new c();
            DEFAULT_INSTANCE = cVar;
            gj6.z(c.class, cVar);
        }

        public static void C(c cVar, String str) {
            Objects.requireNonNull(cVar);
            str.getClass();
            jj6.d<String> dVar = cVar.documents_;
            if (!dVar.F0()) {
                cVar.documents_ = gj6.v(dVar);
            }
            cVar.documents_.add(str);
        }

        public static c D() {
            return DEFAULT_INSTANCE;
        }

        public static a G() {
            return DEFAULT_INSTANCE.q();
        }

        public String E(int i) {
            return this.documents_.get(i);
        }

        public int F() {
            return this.documents_.size();
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002Ț", new Object[]{"documents_"});
                case NEW_MUTABLE_INSTANCE:
                    return new c();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<c> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (c.class) {
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

    public static final class d extends gj6<d, a> implements Object {
        private static final d DEFAULT_INSTANCE;
        public static final int PARENT_FIELD_NUMBER = 1;
        private static volatile ik6<d> PARSER = null;
        public static final int STRUCTURED_QUERY_FIELD_NUMBER = 2;
        private Object queryType_;
        private int queryTypeCase_ = 0;
        private String parent_ = "";

        public static final class a extends gj6.a<d, a> implements Object {
            public a() {
                super(d.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(d.DEFAULT_INSTANCE);
            }
        }

        static {
            d dVar = new d();
            DEFAULT_INSTANCE = dVar;
            gj6.z(d.class, dVar);
        }

        public static void B(d dVar, yc6 yc6Var) {
            Objects.requireNonNull(dVar);
            dVar.queryType_ = yc6Var;
            dVar.queryTypeCase_ = 2;
        }

        public static void D(d dVar, String str) {
            Objects.requireNonNull(dVar);
            str.getClass();
            dVar.parent_ = str;
        }

        public static d E() {
            return DEFAULT_INSTANCE;
        }

        public static a H() {
            return DEFAULT_INSTANCE.q();
        }

        public String F() {
            return this.parent_;
        }

        public yc6 G() {
            return this.queryTypeCase_ == 2 ? (yc6) this.queryType_ : yc6.I();
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001Ȉ\u0002<\u0000", new Object[]{"queryType_", "queryTypeCase_", "parent_", yc6.class});
                case NEW_MUTABLE_INSTANCE:
                    return new d();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<d> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (d.class) {
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

    static {
        zc6 zc6Var = new zc6();
        DEFAULT_INSTANCE = zc6Var;
        gj6.z(zc6.class, zc6Var);
    }

    public static void C(zc6 zc6Var, d dVar) {
        Objects.requireNonNull(zc6Var);
        dVar.getClass();
        zc6Var.targetType_ = dVar;
        zc6Var.targetTypeCase_ = 2;
    }

    public static void D(zc6 zc6Var, c cVar) {
        Objects.requireNonNull(zc6Var);
        cVar.getClass();
        zc6Var.targetType_ = cVar;
        zc6Var.targetTypeCase_ = 3;
    }

    public static void E(zc6 zc6Var, qi6 qi6Var) {
        Objects.requireNonNull(zc6Var);
        qi6Var.getClass();
        zc6Var.resumeTypeCase_ = 4;
        zc6Var.resumeType_ = qi6Var;
    }

    public static void F(zc6 zc6Var, int i) {
        zc6Var.targetId_ = i;
    }

    public static b G() {
        return DEFAULT_INSTANCE.q();
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0006\u0002\u0000\u0002\u000b\u0006\u0000\u0000\u0000\u0002<\u0000\u0003<\u0000\u0004=\u0001\u0005\u0004\u0006\u0007\u000b<\u0001", new Object[]{"targetType_", "targetTypeCase_", "resumeType_", "resumeTypeCase_", d.class, c.class, "targetId_", "once_", wk6.class});
            case NEW_MUTABLE_INSTANCE:
                return new zc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<zc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (zc6.class) {
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
