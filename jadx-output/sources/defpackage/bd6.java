package defpackage;

import defpackage.gj6;
import defpackage.jc6;
import defpackage.wc6;
import java.util.Objects;

/* loaded from: classes.dex */
public final class bd6 extends gj6<bd6, b> implements Object {
    public static final int ARRAY_VALUE_FIELD_NUMBER = 9;
    public static final int BOOLEAN_VALUE_FIELD_NUMBER = 1;
    public static final int BYTES_VALUE_FIELD_NUMBER = 18;
    private static final bd6 DEFAULT_INSTANCE;
    public static final int DOUBLE_VALUE_FIELD_NUMBER = 3;
    public static final int GEO_POINT_VALUE_FIELD_NUMBER = 8;
    public static final int INTEGER_VALUE_FIELD_NUMBER = 2;
    public static final int MAP_VALUE_FIELD_NUMBER = 6;
    public static final int NULL_VALUE_FIELD_NUMBER = 11;
    private static volatile ik6<bd6> PARSER = null;
    public static final int REFERENCE_VALUE_FIELD_NUMBER = 5;
    public static final int STRING_VALUE_FIELD_NUMBER = 17;
    public static final int TIMESTAMP_VALUE_FIELD_NUMBER = 10;
    private int valueTypeCase_ = 0;
    private Object valueType_;

    public static final class b extends gj6.a<bd6, b> implements Object {
        public b() {
            super(bd6.DEFAULT_INSTANCE);
        }

        public b r(jc6.b bVar) {
            o();
            bd6.H((bd6) this.f, bVar.l());
            return this;
        }

        public b s(double d) {
            o();
            bd6.M((bd6) this.f, d);
            return this;
        }

        public b t(long j) {
            o();
            bd6.L((bd6) this.f, j);
            return this;
        }

        public b u(wc6.b bVar) {
            o();
            bd6.I((bd6) this.f, bVar.l());
            return this;
        }

        public b v(wc6 wc6Var) {
            o();
            bd6.I((bd6) this.f, wc6Var);
            return this;
        }

        public b(a aVar) {
            super(bd6.DEFAULT_INSTANCE);
        }
    }

    public enum c {
        NULL_VALUE(11),
        BOOLEAN_VALUE(1),
        INTEGER_VALUE(2),
        DOUBLE_VALUE(3),
        TIMESTAMP_VALUE(10),
        STRING_VALUE(17),
        BYTES_VALUE(18),
        REFERENCE_VALUE(5),
        GEO_POINT_VALUE(8),
        ARRAY_VALUE(9),
        MAP_VALUE(6),
        VALUETYPE_NOT_SET(0);

        c(int i) {
        }
    }

    static {
        bd6 bd6Var = new bd6();
        DEFAULT_INSTANCE = bd6Var;
        gj6.z(bd6.class, bd6Var);
    }

    public static void C(bd6 bd6Var, wk6 wk6Var) {
        Objects.requireNonNull(bd6Var);
        bd6Var.valueType_ = wk6Var;
        bd6Var.valueTypeCase_ = 10;
    }

    public static void D(bd6 bd6Var, String str) {
        Objects.requireNonNull(bd6Var);
        str.getClass();
        bd6Var.valueTypeCase_ = 17;
        bd6Var.valueType_ = str;
    }

    public static void E(bd6 bd6Var, qi6 qi6Var) {
        Objects.requireNonNull(bd6Var);
        qi6Var.getClass();
        bd6Var.valueTypeCase_ = 18;
        bd6Var.valueType_ = qi6Var;
    }

    public static void F(bd6 bd6Var, String str) {
        Objects.requireNonNull(bd6Var);
        str.getClass();
        bd6Var.valueTypeCase_ = 5;
        bd6Var.valueType_ = str;
    }

    public static void G(bd6 bd6Var, jl6 jl6Var) {
        Objects.requireNonNull(bd6Var);
        bd6Var.valueType_ = jl6Var;
        bd6Var.valueTypeCase_ = 8;
    }

    public static void H(bd6 bd6Var, jc6 jc6Var) {
        Objects.requireNonNull(bd6Var);
        bd6Var.valueType_ = jc6Var;
        bd6Var.valueTypeCase_ = 9;
    }

    public static void I(bd6 bd6Var, wc6 wc6Var) {
        Objects.requireNonNull(bd6Var);
        wc6Var.getClass();
        bd6Var.valueType_ = wc6Var;
        bd6Var.valueTypeCase_ = 6;
    }

    public static void J(bd6 bd6Var, hk6 hk6Var) {
        Objects.requireNonNull(bd6Var);
        bd6Var.valueType_ = Integer.valueOf(hk6Var.g());
        bd6Var.valueTypeCase_ = 11;
    }

    public static void K(bd6 bd6Var, boolean z) {
        bd6Var.valueTypeCase_ = 1;
        bd6Var.valueType_ = Boolean.valueOf(z);
    }

    public static void L(bd6 bd6Var, long j) {
        bd6Var.valueTypeCase_ = 2;
        bd6Var.valueType_ = Long.valueOf(j);
    }

    public static void M(bd6 bd6Var, double d) {
        bd6Var.valueTypeCase_ = 3;
        bd6Var.valueType_ = Double.valueOf(d);
    }

    public static bd6 Q() {
        return DEFAULT_INSTANCE;
    }

    public static b Z() {
        return DEFAULT_INSTANCE.q();
    }

    public jc6 N() {
        return this.valueTypeCase_ == 9 ? (jc6) this.valueType_ : jc6.G();
    }

    public boolean O() {
        if (this.valueTypeCase_ == 1) {
            return ((Boolean) this.valueType_).booleanValue();
        }
        return false;
    }

    public qi6 P() {
        return this.valueTypeCase_ == 18 ? (qi6) this.valueType_ : qi6.f;
    }

    public double R() {
        if (this.valueTypeCase_ == 3) {
            return ((Double) this.valueType_).doubleValue();
        }
        return 0.0d;
    }

    public jl6 S() {
        return this.valueTypeCase_ == 8 ? (jl6) this.valueType_ : jl6.E();
    }

    public long T() {
        if (this.valueTypeCase_ == 2) {
            return ((Long) this.valueType_).longValue();
        }
        return 0L;
    }

    public wc6 U() {
        return this.valueTypeCase_ == 6 ? (wc6) this.valueType_ : wc6.D();
    }

    public String V() {
        return this.valueTypeCase_ == 5 ? (String) this.valueType_ : "";
    }

    public String W() {
        return this.valueTypeCase_ == 17 ? (String) this.valueType_ : "";
    }

    public wk6 X() {
        return this.valueTypeCase_ == 10 ? (wk6) this.valueType_ : wk6.E();
    }

    public c Y() {
        int i = this.valueTypeCase_;
        if (i == 0) {
            return c.VALUETYPE_NOT_SET;
        }
        if (i == 1) {
            return c.BOOLEAN_VALUE;
        }
        if (i == 2) {
            return c.INTEGER_VALUE;
        }
        if (i == 3) {
            return c.DOUBLE_VALUE;
        }
        if (i == 5) {
            return c.REFERENCE_VALUE;
        }
        if (i == 6) {
            return c.MAP_VALUE;
        }
        if (i == 17) {
            return c.STRING_VALUE;
        }
        if (i == 18) {
            return c.BYTES_VALUE;
        }
        switch (i) {
            case 8:
                return c.GEO_POINT_VALUE;
            case 9:
                return c.ARRAY_VALUE;
            case 10:
                return c.TIMESTAMP_VALUE;
            case 11:
                return c.NULL_VALUE;
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
                return new nk6(DEFAULT_INSTANCE, "\u0000\u000b\u0001\u0000\u0001\u0012\u000b\u0000\u0000\u0000\u0001:\u0000\u00025\u0000\u00033\u0000\u0005Ȼ\u0000\u0006<\u0000\b<\u0000\t<\u0000\n<\u0000\u000b?\u0000\u0011Ȼ\u0000\u0012=\u0000", new Object[]{"valueType_", "valueTypeCase_", wc6.class, jl6.class, jc6.class, wk6.class});
            case NEW_MUTABLE_INSTANCE:
                return new bd6();
            case NEW_BUILDER:
                return new b(null);
            case GET_DEFAULT_INSTANCE:
                return DEFAULT_INSTANCE;
            case GET_PARSER:
                ik6<bd6> bVar = PARSER;
                if (bVar == null) {
                    synchronized (bd6.class) {
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
