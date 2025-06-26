package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'f' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByField(EnumVisitor.java:372)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByWrappedInsn(EnumVisitor.java:337)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:322)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class lk4 {
    public static final lk4 A;
    public static final lk4 B;
    public static final lk4 C;
    public static final lk4 D;
    public static final lk4 E;
    public static final lk4 F;
    public static final lk4 G;
    public static final lk4 H;
    public static final lk4 I;
    public static final lk4 J;
    public static final lk4 K;
    public static final lk4 L;
    public static final lk4 M;
    public static final lk4 N;
    public static final lk4 O;
    public static final lk4 P;
    public static final lk4 Q;
    public static final lk4 R;
    public static final lk4 S;
    public static final lk4 T;
    public static final lk4 U;
    public static final lk4 V;
    public static final lk4 W;
    public static final lk4 X;
    public static final lk4 Y;
    public static final lk4 Z;
    public static final lk4 a0;
    public static final lk4 b0;
    public static final lk4 c0;
    public static final lk4 d0;
    public static final lk4[] e0;
    public static final lk4 f;
    public static final /* synthetic */ lk4[] f0;
    public static final lk4 g;
    public static final lk4 h;
    public static final lk4 i;
    public static final lk4 j;
    public static final lk4 k;
    public static final lk4 l;
    public static final lk4 m;
    public static final lk4 n;
    public static final lk4 o;
    public static final lk4 p;
    public static final lk4 q;
    public static final lk4 r;
    public static final lk4 s;
    public static final lk4 t;
    public static final lk4 u;
    public static final lk4 v;
    public static final lk4 w;
    public static final lk4 x;
    public static final lk4 y;
    public static final lk4 z;
    public final int e;

    static {
        nk4 nk4Var = nk4.SCALAR;
        cl4 cl4Var = cl4.k;
        f = new lk4("DOUBLE", 0, 0, nk4Var, cl4Var);
        cl4 cl4Var2 = cl4.j;
        g = new lk4("FLOAT", 1, 1, nk4Var, cl4Var2);
        cl4 cl4Var3 = cl4.i;
        h = new lk4("INT64", 2, 2, nk4Var, cl4Var3);
        i = new lk4("UINT64", 3, 3, nk4Var, cl4Var3);
        cl4 cl4Var4 = cl4.h;
        j = new lk4("INT32", 4, 4, nk4Var, cl4Var4);
        k = new lk4("FIXED64", 5, 5, nk4Var, cl4Var3);
        l = new lk4("FIXED32", 6, 6, nk4Var, cl4Var4);
        cl4 cl4Var5 = cl4.l;
        m = new lk4("BOOL", 7, 7, nk4Var, cl4Var5);
        cl4 cl4Var6 = cl4.m;
        n = new lk4("STRING", 8, 8, nk4Var, cl4Var6);
        cl4 cl4Var7 = cl4.p;
        o = new lk4("MESSAGE", 9, 9, nk4Var, cl4Var7);
        cl4 cl4Var8 = cl4.n;
        p = new lk4("BYTES", 10, 10, nk4Var, cl4Var8);
        q = new lk4("UINT32", 11, 11, nk4Var, cl4Var4);
        cl4 cl4Var9 = cl4.o;
        r = new lk4("ENUM", 12, 12, nk4Var, cl4Var9);
        s = new lk4("SFIXED32", 13, 13, nk4Var, cl4Var4);
        t = new lk4("SFIXED64", 14, 14, nk4Var, cl4Var3);
        u = new lk4("SINT32", 15, 15, nk4Var, cl4Var4);
        v = new lk4("SINT64", 16, 16, nk4Var, cl4Var3);
        w = new lk4("GROUP", 17, 17, nk4Var, cl4Var7);
        nk4 nk4Var2 = nk4.VECTOR;
        x = new lk4("DOUBLE_LIST", 18, 18, nk4Var2, cl4Var);
        y = new lk4("FLOAT_LIST", 19, 19, nk4Var2, cl4Var2);
        z = new lk4("INT64_LIST", 20, 20, nk4Var2, cl4Var3);
        A = new lk4("UINT64_LIST", 21, 21, nk4Var2, cl4Var3);
        B = new lk4("INT32_LIST", 22, 22, nk4Var2, cl4Var4);
        C = new lk4("FIXED64_LIST", 23, 23, nk4Var2, cl4Var3);
        D = new lk4("FIXED32_LIST", 24, 24, nk4Var2, cl4Var4);
        E = new lk4("BOOL_LIST", 25, 25, nk4Var2, cl4Var5);
        F = new lk4("STRING_LIST", 26, 26, nk4Var2, cl4Var6);
        G = new lk4("MESSAGE_LIST", 27, 27, nk4Var2, cl4Var7);
        H = new lk4("BYTES_LIST", 28, 28, nk4Var2, cl4Var8);
        I = new lk4("UINT32_LIST", 29, 29, nk4Var2, cl4Var4);
        J = new lk4("ENUM_LIST", 30, 30, nk4Var2, cl4Var9);
        K = new lk4("SFIXED32_LIST", 31, 31, nk4Var2, cl4Var4);
        L = new lk4("SFIXED64_LIST", 32, 32, nk4Var2, cl4Var3);
        M = new lk4("SINT32_LIST", 33, 33, nk4Var2, cl4Var4);
        N = new lk4("SINT64_LIST", 34, 34, nk4Var2, cl4Var3);
        nk4 nk4Var3 = nk4.PACKED_VECTOR;
        O = new lk4("DOUBLE_LIST_PACKED", 35, 35, nk4Var3, cl4Var);
        P = new lk4("FLOAT_LIST_PACKED", 36, 36, nk4Var3, cl4Var2);
        Q = new lk4("INT64_LIST_PACKED", 37, 37, nk4Var3, cl4Var3);
        R = new lk4("UINT64_LIST_PACKED", 38, 38, nk4Var3, cl4Var3);
        S = new lk4("INT32_LIST_PACKED", 39, 39, nk4Var3, cl4Var4);
        T = new lk4("FIXED64_LIST_PACKED", 40, 40, nk4Var3, cl4Var3);
        U = new lk4("FIXED32_LIST_PACKED", 41, 41, nk4Var3, cl4Var4);
        V = new lk4("BOOL_LIST_PACKED", 42, 42, nk4Var3, cl4Var5);
        W = new lk4("UINT32_LIST_PACKED", 43, 43, nk4Var3, cl4Var4);
        X = new lk4("ENUM_LIST_PACKED", 44, 44, nk4Var3, cl4Var9);
        Y = new lk4("SFIXED32_LIST_PACKED", 45, 45, nk4Var3, cl4Var4);
        cl4 cl4Var10 = cl4.i;
        Z = new lk4("SFIXED64_LIST_PACKED", 46, 46, nk4Var3, cl4Var10);
        a0 = new lk4("SINT32_LIST_PACKED", 47, 47, nk4Var3, cl4.h);
        b0 = new lk4("SINT64_LIST_PACKED", 48, 48, nk4Var3, cl4Var10);
        c0 = new lk4("GROUP_LIST", 49, 49, nk4Var2, cl4Var7);
        d0 = new lk4("MAP", 50, 50, nk4.MAP, cl4.g);
        f0 = new lk4[]{f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0};
        lk4[] lk4VarArrValues = values();
        e0 = new lk4[51];
        for (lk4 lk4Var : lk4VarArrValues) {
            e0[lk4Var.e] = lk4Var;
        }
    }

    public lk4(String str, int i2, int i3, nk4 nk4Var, cl4 cl4Var) {
        this.e = i3;
        int i4 = ok4.a[nk4Var.ordinal()];
        if (i4 == 1 || i4 == 2) {
            Class<?> cls = cl4Var.e;
        }
        if (nk4Var == nk4.SCALAR) {
            int i5 = ok4.b[cl4Var.ordinal()];
        }
    }

    public static lk4[] values() {
        return (lk4[]) f0.clone();
    }
}
