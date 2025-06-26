package defpackage;

import defpackage.gj6;
import defpackage.jj6;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public final class yc6 extends gj6<yc6, b> implements Object {
    private static final yc6 DEFAULT_INSTANCE;
    public static final int END_AT_FIELD_NUMBER = 8;
    public static final int FROM_FIELD_NUMBER = 2;
    public static final int LIMIT_FIELD_NUMBER = 5;
    public static final int OFFSET_FIELD_NUMBER = 6;
    public static final int ORDER_BY_FIELD_NUMBER = 4;
    private static volatile ik6<yc6> PARSER = null;
    public static final int SELECT_FIELD_NUMBER = 1;
    public static final int START_AT_FIELD_NUMBER = 7;
    public static final int WHERE_FIELD_NUMBER = 3;
    private lc6 endAt_;
    private jj6.d<c> from_;
    private hj6 limit_;
    private int offset_;
    private jj6.d<i> orderBy_;
    private j select_;
    private lc6 startAt_;
    private h where_;

    public static final class b extends gj6.a<yc6, b> implements Object {
        public b() {
            super(yc6.DEFAULT_INSTANCE);
        }

        public b(a aVar) {
            super(yc6.DEFAULT_INSTANCE);
        }
    }

    public static final class c extends gj6<c, a> implements Object {
        public static final int ALL_DESCENDANTS_FIELD_NUMBER = 3;
        public static final int COLLECTION_ID_FIELD_NUMBER = 2;
        private static final c DEFAULT_INSTANCE;
        private static volatile ik6<c> PARSER;
        private boolean allDescendants_;
        private String collectionId_ = "";

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
            cVar.collectionId_ = str;
        }

        public static void D(c cVar, boolean z) {
            cVar.allDescendants_ = z;
        }

        public static a G() {
            return DEFAULT_INSTANCE.q();
        }

        public boolean E() {
            return this.allDescendants_;
        }

        public String F() {
            return this.collectionId_;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0002\u0003\u0002\u0000\u0000\u0000\u0002Ȉ\u0003\u0007", new Object[]{"collectionId_", "allDescendants_"});
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
        public static final int FILTERS_FIELD_NUMBER = 2;
        public static final int OP_FIELD_NUMBER = 1;
        private static volatile ik6<d> PARSER;
        private jj6.d<h> filters_ = mk6.h;
        private int op_;

        public static final class a extends gj6.a<d, a> implements Object {
            public a() {
                super(d.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(d.DEFAULT_INSTANCE);
            }
        }

        public enum b implements jj6.a {
            OPERATOR_UNSPECIFIED(0),
            AND(1),
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

        static {
            d dVar = new d();
            DEFAULT_INSTANCE = dVar;
            gj6.z(d.class, dVar);
        }

        public static void C(d dVar, b bVar) {
            Objects.requireNonNull(dVar);
            dVar.op_ = bVar.g();
        }

        public static void D(d dVar, Iterable iterable) {
            jj6.d<h> dVar2 = dVar.filters_;
            if (!dVar2.F0()) {
                dVar.filters_ = gj6.v(dVar2);
            }
            ii6.a(iterable, dVar.filters_);
        }

        public static d E() {
            return DEFAULT_INSTANCE;
        }

        public static a H() {
            return DEFAULT_INSTANCE.q();
        }

        public List<h> F() {
            return this.filters_;
        }

        public b G() {
            int i = this.op_;
            b bVar = i != 0 ? i != 1 ? null : b.AND : b.OPERATOR_UNSPECIFIED;
            return bVar == null ? b.UNRECOGNIZED : bVar;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0001\u0000\u0001\f\u0002\u001b", new Object[]{"op_", "filters_", h.class});
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

    public enum e implements jj6.a {
        DIRECTION_UNSPECIFIED(0),
        ASCENDING(1),
        DESCENDING(2),
        UNRECOGNIZED(-1);

        public final int e;

        e(int i) {
            this.e = i;
        }

        public static e i(int i) {
            if (i == 0) {
                return DIRECTION_UNSPECIFIED;
            }
            if (i == 1) {
                return ASCENDING;
            }
            if (i != 2) {
                return null;
            }
            return DESCENDING;
        }

        @Override // jj6.a
        public final int g() {
            if (this != UNRECOGNIZED) {
                return this.e;
            }
            throw new IllegalArgumentException("Can't get the number of an unknown enum value.");
        }
    }

    public static final class f extends gj6<f, a> implements Object {
        private static final f DEFAULT_INSTANCE;
        public static final int FIELD_FIELD_NUMBER = 1;
        public static final int OP_FIELD_NUMBER = 2;
        private static volatile ik6<f> PARSER = null;
        public static final int VALUE_FIELD_NUMBER = 3;
        private g field_;
        private int op_;
        private bd6 value_;

        public static final class a extends gj6.a<f, a> implements Object {
            public a() {
                super(f.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(f.DEFAULT_INSTANCE);
            }
        }

        public enum b implements jj6.a {
            OPERATOR_UNSPECIFIED(0),
            LESS_THAN(1),
            LESS_THAN_OR_EQUAL(2),
            GREATER_THAN(3),
            GREATER_THAN_OR_EQUAL(4),
            EQUAL(5),
            NOT_EQUAL(6),
            ARRAY_CONTAINS(7),
            IN(8),
            ARRAY_CONTAINS_ANY(9),
            NOT_IN(10),
            UNRECOGNIZED(-1);

            public final int e;

            b(int i) {
                this.e = i;
            }

            public static b i(int i) {
                switch (i) {
                    case 0:
                        return OPERATOR_UNSPECIFIED;
                    case 1:
                        return LESS_THAN;
                    case 2:
                        return LESS_THAN_OR_EQUAL;
                    case 3:
                        return GREATER_THAN;
                    case 4:
                        return GREATER_THAN_OR_EQUAL;
                    case 5:
                        return EQUAL;
                    case 6:
                        return NOT_EQUAL;
                    case 7:
                        return ARRAY_CONTAINS;
                    case 8:
                        return IN;
                    case 9:
                        return ARRAY_CONTAINS_ANY;
                    case 10:
                        return NOT_IN;
                    default:
                        return null;
                }
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
            f fVar = new f();
            DEFAULT_INSTANCE = fVar;
            gj6.z(f.class, fVar);
        }

        public static void C(f fVar, g gVar) {
            Objects.requireNonNull(fVar);
            gVar.getClass();
            fVar.field_ = gVar;
        }

        public static void D(f fVar, b bVar) {
            Objects.requireNonNull(fVar);
            fVar.op_ = bVar.g();
        }

        public static void E(f fVar, bd6 bd6Var) {
            Objects.requireNonNull(fVar);
            bd6Var.getClass();
            fVar.value_ = bd6Var;
        }

        public static f F() {
            return DEFAULT_INSTANCE;
        }

        public static a J() {
            return DEFAULT_INSTANCE.q();
        }

        public g G() {
            g gVar = this.field_;
            return gVar == null ? g.D() : gVar;
        }

        public b H() {
            b bVarI = b.i(this.op_);
            return bVarI == null ? b.UNRECOGNIZED : bVarI;
        }

        public bd6 I() {
            bd6 bd6Var = this.value_;
            return bd6Var == null ? bd6.Q() : bd6Var;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0000\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001\t\u0002\f\u0003\t", new Object[]{"field_", "op_", "value_"});
                case NEW_MUTABLE_INSTANCE:
                    return new f();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<f> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (f.class) {
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

    public static final class g extends gj6<g, a> implements Object {
        private static final g DEFAULT_INSTANCE;
        public static final int FIELD_PATH_FIELD_NUMBER = 2;
        private static volatile ik6<g> PARSER;
        private String fieldPath_ = "";

        public static final class a extends gj6.a<g, a> implements Object {
            public a() {
                super(g.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(g.DEFAULT_INSTANCE);
            }
        }

        static {
            g gVar = new g();
            DEFAULT_INSTANCE = gVar;
            gj6.z(g.class, gVar);
        }

        public static void C(g gVar, String str) {
            Objects.requireNonNull(gVar);
            str.getClass();
            gVar.fieldPath_ = str;
        }

        public static g D() {
            return DEFAULT_INSTANCE;
        }

        public static a F() {
            return DEFAULT_INSTANCE.q();
        }

        public String E() {
            return this.fieldPath_;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0000\u0000\u0002Ȉ", new Object[]{"fieldPath_"});
                case NEW_MUTABLE_INSTANCE:
                    return new g();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<g> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (g.class) {
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

    public static final class h extends gj6<h, a> implements Object {
        public static final int COMPOSITE_FILTER_FIELD_NUMBER = 1;
        private static final h DEFAULT_INSTANCE;
        public static final int FIELD_FILTER_FIELD_NUMBER = 2;
        private static volatile ik6<h> PARSER = null;
        public static final int UNARY_FILTER_FIELD_NUMBER = 3;
        private int filterTypeCase_ = 0;
        private Object filterType_;

        public static final class a extends gj6.a<h, a> implements Object {
            public a() {
                super(h.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(h.DEFAULT_INSTANCE);
            }
        }

        public enum b {
            COMPOSITE_FILTER(1),
            FIELD_FILTER(2),
            UNARY_FILTER(3),
            FILTERTYPE_NOT_SET(0);

            b(int i2) {
            }
        }

        static {
            h hVar = new h();
            DEFAULT_INSTANCE = hVar;
            gj6.z(h.class, hVar);
        }

        public static void B(h hVar, f fVar) {
            Objects.requireNonNull(hVar);
            hVar.filterType_ = fVar;
            hVar.filterTypeCase_ = 2;
        }

        public static void C(h hVar, k kVar) {
            Objects.requireNonNull(hVar);
            hVar.filterType_ = kVar;
            hVar.filterTypeCase_ = 3;
        }

        public static void E(h hVar, d dVar) {
            Objects.requireNonNull(hVar);
            hVar.filterType_ = dVar;
            hVar.filterTypeCase_ = 1;
        }

        public static h G() {
            return DEFAULT_INSTANCE;
        }

        public static a K() {
            return DEFAULT_INSTANCE.q();
        }

        public d F() {
            return this.filterTypeCase_ == 1 ? (d) this.filterType_ : d.E();
        }

        public f H() {
            return this.filterTypeCase_ == 2 ? (f) this.filterType_ : f.F();
        }

        public b I() {
            int i = this.filterTypeCase_;
            if (i == 0) {
                return b.FILTERTYPE_NOT_SET;
            }
            if (i == 1) {
                return b.COMPOSITE_FILTER;
            }
            if (i == 2) {
                return b.FIELD_FILTER;
            }
            if (i != 3) {
                return null;
            }
            return b.UNARY_FILTER;
        }

        public k J() {
            return this.filterTypeCase_ == 3 ? (k) this.filterType_ : k.E();
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0003\u0001\u0000\u0001\u0003\u0003\u0000\u0000\u0000\u0001<\u0000\u0002<\u0000\u0003<\u0000", new Object[]{"filterType_", "filterTypeCase_", d.class, f.class, k.class});
                case NEW_MUTABLE_INSTANCE:
                    return new h();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<h> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (h.class) {
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

    public static final class i extends gj6<i, a> implements Object {
        private static final i DEFAULT_INSTANCE;
        public static final int DIRECTION_FIELD_NUMBER = 2;
        public static final int FIELD_FIELD_NUMBER = 1;
        private static volatile ik6<i> PARSER;
        private int direction_;
        private g field_;

        public static final class a extends gj6.a<i, a> implements Object {
            public a() {
                super(i.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(i.DEFAULT_INSTANCE);
            }
        }

        static {
            i iVar = new i();
            DEFAULT_INSTANCE = iVar;
            gj6.z(i.class, iVar);
        }

        public static void C(i iVar, g gVar) {
            Objects.requireNonNull(iVar);
            gVar.getClass();
            iVar.field_ = gVar;
        }

        public static void D(i iVar, e eVar) {
            Objects.requireNonNull(iVar);
            iVar.direction_ = eVar.g();
        }

        public static a G() {
            return DEFAULT_INSTANCE.q();
        }

        public e E() {
            e eVarI = e.i(this.direction_);
            return eVarI == null ? e.UNRECOGNIZED : eVarI;
        }

        public g F() {
            g gVar = this.field_;
            return gVar == null ? g.D() : gVar;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0000\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\t\u0002\f", new Object[]{"field_", "direction_"});
                case NEW_MUTABLE_INSTANCE:
                    return new i();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<i> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (i.class) {
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

    public static final class j extends gj6<j, a> implements Object {
        private static final j DEFAULT_INSTANCE;
        public static final int FIELDS_FIELD_NUMBER = 2;
        private static volatile ik6<j> PARSER;
        private jj6.d<g> fields_ = mk6.h;

        public static final class a extends gj6.a<j, a> implements Object {
            public a(a aVar) {
                super(j.DEFAULT_INSTANCE);
            }
        }

        static {
            j jVar = new j();
            DEFAULT_INSTANCE = jVar;
            gj6.z(j.class, jVar);
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0001\u0000\u0000\u0002\u0002\u0001\u0000\u0001\u0000\u0002\u001b", new Object[]{"fields_", g.class});
                case NEW_MUTABLE_INSTANCE:
                    return new j();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<j> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (j.class) {
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

    public static final class k extends gj6<k, a> implements Object {
        private static final k DEFAULT_INSTANCE;
        public static final int FIELD_FIELD_NUMBER = 2;
        public static final int OP_FIELD_NUMBER = 1;
        private static volatile ik6<k> PARSER;
        private int op_;
        private int operandTypeCase_ = 0;
        private Object operandType_;

        public static final class a extends gj6.a<k, a> implements Object {
            public a() {
                super(k.DEFAULT_INSTANCE);
            }

            public a(a aVar) {
                super(k.DEFAULT_INSTANCE);
            }
        }

        public enum b implements jj6.a {
            OPERATOR_UNSPECIFIED(0),
            IS_NAN(2),
            IS_NULL(3),
            IS_NOT_NAN(4),
            IS_NOT_NULL(5),
            UNRECOGNIZED(-1);

            public final int e;

            b(int i) {
                this.e = i;
            }

            public static b i(int i) {
                if (i == 0) {
                    return OPERATOR_UNSPECIFIED;
                }
                if (i == 2) {
                    return IS_NAN;
                }
                if (i == 3) {
                    return IS_NULL;
                }
                if (i == 4) {
                    return IS_NOT_NAN;
                }
                if (i != 5) {
                    return null;
                }
                return IS_NOT_NULL;
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
            k kVar = new k();
            DEFAULT_INSTANCE = kVar;
            gj6.z(k.class, kVar);
        }

        public static void C(k kVar, b bVar) {
            Objects.requireNonNull(kVar);
            kVar.op_ = bVar.g();
        }

        public static void D(k kVar, g gVar) {
            Objects.requireNonNull(kVar);
            gVar.getClass();
            kVar.operandType_ = gVar;
            kVar.operandTypeCase_ = 2;
        }

        public static k E() {
            return DEFAULT_INSTANCE;
        }

        public static a H() {
            return DEFAULT_INSTANCE.q();
        }

        public g F() {
            return this.operandTypeCase_ == 2 ? (g) this.operandType_ : g.D();
        }

        public b G() {
            b bVarI = b.i(this.op_);
            return bVarI == null ? b.UNRECOGNIZED : bVarI;
        }

        @Override // defpackage.gj6
        public final Object r(gj6.f fVar, Object obj, Object obj2) {
            switch (fVar) {
                case GET_MEMOIZED_IS_INITIALIZED:
                    return (byte) 1;
                case SET_MEMOIZED_IS_INITIALIZED:
                    return null;
                case BUILD_MESSAGE_INFO:
                    return new nk6(DEFAULT_INSTANCE, "\u0000\u0002\u0001\u0000\u0001\u0002\u0002\u0000\u0000\u0000\u0001\f\u0002<\u0000", new Object[]{"operandType_", "operandTypeCase_", "op_", g.class});
                case NEW_MUTABLE_INSTANCE:
                    return new k();
                case NEW_BUILDER:
                    return new a(null);
                case GET_DEFAULT_INSTANCE:
                    return DEFAULT_INSTANCE;
                case GET_PARSER:
                    ik6<k> bVar = PARSER;
                    if (bVar == null) {
                        synchronized (k.class) {
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
        yc6 yc6Var = new yc6();
        DEFAULT_INSTANCE = yc6Var;
        gj6.z(yc6.class, yc6Var);
    }

    public yc6() {
        mk6<Object> mk6Var = mk6.h;
        this.from_ = mk6Var;
        this.orderBy_ = mk6Var;
    }

    public static void C(yc6 yc6Var, c cVar) {
        Objects.requireNonNull(yc6Var);
        jj6.d<c> dVar = yc6Var.from_;
        if (!dVar.F0()) {
            yc6Var.from_ = gj6.v(dVar);
        }
        yc6Var.from_.add(cVar);
    }

    public static void D(yc6 yc6Var, h hVar) {
        Objects.requireNonNull(yc6Var);
        hVar.getClass();
        yc6Var.where_ = hVar;
    }

    public static void E(yc6 yc6Var, i iVar) {
        Objects.requireNonNull(yc6Var);
        iVar.getClass();
        jj6.d<i> dVar = yc6Var.orderBy_;
        if (!dVar.F0()) {
            yc6Var.orderBy_ = gj6.v(dVar);
        }
        yc6Var.orderBy_.add(iVar);
    }

    public static void F(yc6 yc6Var, lc6 lc6Var) {
        Objects.requireNonNull(yc6Var);
        lc6Var.getClass();
        yc6Var.startAt_ = lc6Var;
    }

    public static void G(yc6 yc6Var, lc6 lc6Var) {
        Objects.requireNonNull(yc6Var);
        lc6Var.getClass();
        yc6Var.endAt_ = lc6Var;
    }

    public static void H(yc6 yc6Var, hj6 hj6Var) {
        Objects.requireNonNull(yc6Var);
        yc6Var.limit_ = hj6Var;
    }

    public static yc6 I() {
        return DEFAULT_INSTANCE;
    }

    public static b V() {
        return DEFAULT_INSTANCE.q();
    }

    public lc6 J() {
        lc6 lc6Var = this.endAt_;
        return lc6Var == null ? lc6.F() : lc6Var;
    }

    public c K(int i2) {
        return this.from_.get(i2);
    }

    public int L() {
        return this.from_.size();
    }

    public hj6 M() {
        hj6 hj6Var = this.limit_;
        return hj6Var == null ? hj6.D() : hj6Var;
    }

    public i N(int i2) {
        return this.orderBy_.get(i2);
    }

    public int O() {
        return this.orderBy_.size();
    }

    public lc6 P() {
        lc6 lc6Var = this.startAt_;
        return lc6Var == null ? lc6.F() : lc6Var;
    }

    public h Q() {
        h hVar = this.where_;
        return hVar == null ? h.G() : hVar;
    }

    public boolean R() {
        return this.endAt_ != null;
    }

    public boolean S() {
        return this.limit_ != null;
    }

    public boolean T() {
        return this.startAt_ != null;
    }

    public boolean U() {
        return this.where_ != null;
    }

    @Override // defpackage.gj6
    public final Object r(gj6.f fVar, Object obj, Object obj2) {
        switch (fVar) {
            case GET_MEMOIZED_IS_INITIALIZED:
                return (byte) 1;
            case SET_MEMOIZED_IS_INITIALIZED:
                return null;
            case BUILD_MESSAGE_INFO:
                return new nk6(DEFAULT_INSTANCE, "\u0000\b\u0000\u0000\u0001\b\b\u0000\u0002\u0000\u0001\t\u0002\u001b\u0003\t\u0004\u001b\u0005\t\u0006\u0004\u0007\t\b\t", new Object[]{"select_", "from_", c.class, "where_", "orderBy_", i.class, "limit_", "offset_", "startAt_", "endAt_"});
            case NEW_MUTABLE_INSTANCE:
                return new yc6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<yc6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (yc6.class) {
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
