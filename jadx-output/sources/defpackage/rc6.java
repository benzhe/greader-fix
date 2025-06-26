package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class rc6 extends gj6<rc6, b> implements Object {
    private static final rc6 DEFAULT_INSTANCE;
    public static final int DOCUMENT_FIELD_NUMBER = 1;
    public static final int FIELD_TRANSFORMS_FIELD_NUMBER = 2;
    private static volatile ik6<rc6> PARSER;
    private String document_ = "";
    private jj6.d<c> fieldTransforms_ = mk6.h;

    public static final class b extends gj6.a<rc6, b> implements Object {
        public b() {
            super(rc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(rc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c extends gj6<c, a> implements Object {
        public static final int APPEND_MISSING_ELEMENTS_FIELD_NUMBER = 6;
        private static final c DEFAULT_INSTANCE;
        public static final int FIELD_PATH_FIELD_NUMBER = 1;
        public static final int INCREMENT_FIELD_NUMBER = 3;
        public static final int MAXIMUM_FIELD_NUMBER = 4;
        public static final int MINIMUM_FIELD_NUMBER = 5;
        private static volatile ik6<c> PARSER = null;
        public static final int REMOVE_ALL_FROM_ARRAY_FIELD_NUMBER = 7;
        public static final int SET_TO_SERVER_VALUE_FIELD_NUMBER = 2;
        private Object transformType_;
        private int transformTypeCase_ = 0;
        private String fieldPath_ = "";

        public static final class a extends gj6.a<c, a> implements Object {
            public a() {
                super(c.DEFAULT_INSTANCE);
            }

            public a r(String str) {
                o();
                c.D((c) this.f, str);
                return this;
            }

            public a(a aVar) {
                super(c.DEFAULT_INSTANCE);
            }
        }

        public enum b implements jj6.a {
            SERVER_VALUE_UNSPECIFIED(0),
            REQUEST_TIME(1),
            UNRECOGNIZED(-1);

            public final int e;

            b(int i2) {
                this.e = i2;
            }

            @Override // jj6.a
            public final int g() {
                if (this != UNRECOGNIZED) {
                    return this.e;
                }
                throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
            }
        }

        /* renamed from: rc6$c$c, reason: collision with other inner class name */
        public enum EnumC0032c {
            SET_TO_SERVER_VALUE(2),
            INCREMENT(3),
            MAXIMUM(4),
            MINIMUM(5),
            APPEND_MISSING_ELEMENTS(6),
            REMOVE_ALL_FROM_ARRAY(7),
            TRANSFORMTYPE_NOT_SET(0);

            EnumC0032c(int i) {
            }
        }

        static {
            c cVar = new c();
            DEFAULT_INSTANCE = cVar;
            gj6.z(c.class, cVar);
        }

        public static void C(c cVar, jc6 jc6Var) {
            Objects.requireNonNull(cVar);
            cVar.transformType_ = jc6Var;
            cVar.transformTypeCase_ = 6;
        }

        public static void D(c cVar, String str) {
            Objects.requireNonNull(cVar);
            str.getClass();
            cVar.fieldPath_ = str;
        }

        public static void E(c cVar, jc6 jc6Var) {
            Objects.requireNonNull(cVar);
            cVar.transformType_ = jc6Var;
            cVar.transformTypeCase_ = 7;
        }

        public static void F(c cVar, b bVar) {
            Objects.requireNonNull(cVar);
            cVar.transformType_ = Integer.valueOf(bVar.g());
            cVar.transformTypeCase_ = 2;
        }

        public static void G(c cVar, bd6 bd6Var) {
            Objects.requireNonNull(cVar);
            bd6Var.getClass();
            cVar.transformType_ = bd6Var;
            cVar.transformTypeCase_ = 3;
        }

        public static a N() {
            return DEFAULT_INSTANCE.q();
        }

        public jc6 H() {
            return this.transformTypeCase_ == 6 ? (jc6) this.transformType_ : jc6.G();
        }

        public String I() {
            return this.fieldPath_;
        }

        public bd6 J() {
            return this.transformTypeCase_ == 3 ? (bd6) this.transformType_ : bd6.Q();
        }

        public jc6 K() {
            return this.transformTypeCase_ == 7 ? (jc6) this.transformType_ : jc6.G();
        }

        public b L() {
            b bVar = b.SERVER_VALUE_UNSPECIFIED;
            if (this.transformTypeCase_ != 2) {
                return bVar;
            }
            int iIntValue = ((Integer) this.transformType_).intValue();
            if (iIntValue != 0) {
                bVar = iIntValue != 1 ? null : b.REQUEST_TIME;
            }
            return bVar == null ? b.UNRECOGNIZED : bVar;
        }

        public EnumC0032c M() {
            int i = this.transformTypeCase_;
            if (i == 0) {
                return EnumC0032c.TRANSFORMTYPE_NOT_SET;
            }
            switch (i) {
                case 2:
                    return EnumC0032c.SET_TO_SERVER_VALUE;
                case 3:
                    return EnumC0032c.INCREMENT;
                case 4:
                    return EnumC0032c.MAXIMUM;
                case 5:
                    return EnumC0032c.MINIMUM;
                case 6:
                    return EnumC0032c.APPEND_MISSING_ELEMENTS;
                case 7:
                    return EnumC0032c.REMOVE_ALL_FROM_ARRAY;
                default:
                    return null;
            }
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0007\u0001\u0000\u0001\u0007\u0007\u0000\u0000\u0000\u0001Ȉ\u0002?\u0000\u0003<\u0000\u0004<\u0000\u0005<\u0000\u0006<\u0000\u0007<\u0000", new Object[]{"transformType_", "transformTypeCase_", "fieldPath_", bd6.class, bd6.class, bd6.class, jc6.class, jc6.class});
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

    static {
        rc6 rc6Var = new rc6();
        DEFAULT_INSTANCE = rc6Var;
        gj6.z(rc6.class, rc6Var);
    }

    public static void C(rc6 rc6Var, String str) {
        Objects.requireNonNull(rc6Var);
        str.getClass();
        rc6Var.document_ = str;
    }

    public static void D(rc6 rc6Var, c cVar) {
        Objects.requireNonNull(rc6Var);
        cVar.getClass();
        jj6.d<c> dVar = rc6Var.fieldTransforms_;
        if (!dVar.F0()) {
            rc6Var.fieldTransforms_ = gj6.v(dVar);
        }
        rc6Var.fieldTransforms_.add(cVar);
    }

    public static rc6 E() {
        return DEFAULT_INSTANCE;
    }

    public static b H() {
        return DEFAULT_INSTANCE.q();
    }

    public String F() {
        return this.document_;
    }

    public List<c> G() {
        return this.fieldTransforms_;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001Ȉ\u0002\u001b", new Object[]{"document_", "fieldTransforms_", c.class});
            case NEW_MUTABLE_INSTANCE:
                return new rc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<rc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (rc6.class) {
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
