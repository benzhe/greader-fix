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
public final class nx3 {
    public static final nx3 A;
    public static final nx3 B;
    public static final nx3 C;
    public static final nx3 D;
    public static final nx3 E;
    public static final nx3 F;
    public static final nx3 G;
    public static final nx3 H;
    public static final nx3 I;
    public static final nx3 J;
    public static final nx3 K;
    public static final nx3 L;
    public static final nx3 M;
    public static final nx3 N;
    public static final nx3 O;
    public static final nx3 P;
    public static final nx3 Q;
    public static final nx3 R;
    public static final nx3 S;
    public static final nx3 T;
    public static final nx3 U;
    public static final nx3 V;
    public static final nx3 W;
    public static final nx3 X;
    public static final nx3 Y;
    public static final nx3 Z;
    public static final nx3 a0;
    public static final nx3 b0;
    public static final nx3 c0;
    public static final nx3 d0;
    public static final nx3[] e0;
    public static final nx3 f;
    public static final /* synthetic */ nx3[] f0;
    public static final nx3 g;
    public static final nx3 h;
    public static final nx3 i;
    public static final nx3 j;
    public static final nx3 k;
    public static final nx3 l;
    public static final nx3 m;
    public static final nx3 n;
    public static final nx3 o;
    public static final nx3 p;
    public static final nx3 q;
    public static final nx3 r;
    public static final nx3 s;
    public static final nx3 t;
    public static final nx3 u;
    public static final nx3 v;
    public static final nx3 w;
    public static final nx3 x;
    public static final nx3 y;
    public static final nx3 z;
    public final int e;

    static {
        px3 px3Var = px3.SCALAR;
        ay3 ay3Var = ay3.k;
        f = new nx3("DOUBLE", 0, 0, px3Var, ay3Var);
        ay3 ay3Var2 = ay3.j;
        g = new nx3("FLOAT", 1, 1, px3Var, ay3Var2);
        ay3 ay3Var3 = ay3.i;
        h = new nx3("INT64", 2, 2, px3Var, ay3Var3);
        i = new nx3("UINT64", 3, 3, px3Var, ay3Var3);
        ay3 ay3Var4 = ay3.h;
        j = new nx3("INT32", 4, 4, px3Var, ay3Var4);
        k = new nx3("FIXED64", 5, 5, px3Var, ay3Var3);
        l = new nx3("FIXED32", 6, 6, px3Var, ay3Var4);
        ay3 ay3Var5 = ay3.l;
        m = new nx3("BOOL", 7, 7, px3Var, ay3Var5);
        ay3 ay3Var6 = ay3.m;
        n = new nx3("STRING", 8, 8, px3Var, ay3Var6);
        ay3 ay3Var7 = ay3.p;
        o = new nx3("MESSAGE", 9, 9, px3Var, ay3Var7);
        ay3 ay3Var8 = ay3.n;
        p = new nx3("BYTES", 10, 10, px3Var, ay3Var8);
        q = new nx3("UINT32", 11, 11, px3Var, ay3Var4);
        ay3 ay3Var9 = ay3.o;
        r = new nx3("ENUM", 12, 12, px3Var, ay3Var9);
        s = new nx3("SFIXED32", 13, 13, px3Var, ay3Var4);
        t = new nx3("SFIXED64", 14, 14, px3Var, ay3Var3);
        u = new nx3("SINT32", 15, 15, px3Var, ay3Var4);
        v = new nx3("SINT64", 16, 16, px3Var, ay3Var3);
        w = new nx3("GROUP", 17, 17, px3Var, ay3Var7);
        px3 px3Var2 = px3.VECTOR;
        x = new nx3("DOUBLE_LIST", 18, 18, px3Var2, ay3Var);
        y = new nx3("FLOAT_LIST", 19, 19, px3Var2, ay3Var2);
        z = new nx3("INT64_LIST", 20, 20, px3Var2, ay3Var3);
        A = new nx3("UINT64_LIST", 21, 21, px3Var2, ay3Var3);
        B = new nx3("INT32_LIST", 22, 22, px3Var2, ay3Var4);
        C = new nx3("FIXED64_LIST", 23, 23, px3Var2, ay3Var3);
        D = new nx3("FIXED32_LIST", 24, 24, px3Var2, ay3Var4);
        E = new nx3("BOOL_LIST", 25, 25, px3Var2, ay3Var5);
        F = new nx3("STRING_LIST", 26, 26, px3Var2, ay3Var6);
        G = new nx3("MESSAGE_LIST", 27, 27, px3Var2, ay3Var7);
        H = new nx3("BYTES_LIST", 28, 28, px3Var2, ay3Var8);
        I = new nx3("UINT32_LIST", 29, 29, px3Var2, ay3Var4);
        J = new nx3("ENUM_LIST", 30, 30, px3Var2, ay3Var9);
        K = new nx3("SFIXED32_LIST", 31, 31, px3Var2, ay3Var4);
        L = new nx3("SFIXED64_LIST", 32, 32, px3Var2, ay3Var3);
        M = new nx3("SINT32_LIST", 33, 33, px3Var2, ay3Var4);
        N = new nx3("SINT64_LIST", 34, 34, px3Var2, ay3Var3);
        px3 px3Var3 = px3.PACKED_VECTOR;
        O = new nx3("DOUBLE_LIST_PACKED", 35, 35, px3Var3, ay3Var);
        P = new nx3("FLOAT_LIST_PACKED", 36, 36, px3Var3, ay3Var2);
        Q = new nx3("INT64_LIST_PACKED", 37, 37, px3Var3, ay3Var3);
        R = new nx3("UINT64_LIST_PACKED", 38, 38, px3Var3, ay3Var3);
        S = new nx3("INT32_LIST_PACKED", 39, 39, px3Var3, ay3Var4);
        T = new nx3("FIXED64_LIST_PACKED", 40, 40, px3Var3, ay3Var3);
        U = new nx3("FIXED32_LIST_PACKED", 41, 41, px3Var3, ay3Var4);
        V = new nx3("BOOL_LIST_PACKED", 42, 42, px3Var3, ay3Var5);
        W = new nx3("UINT32_LIST_PACKED", 43, 43, px3Var3, ay3Var4);
        X = new nx3("ENUM_LIST_PACKED", 44, 44, px3Var3, ay3Var9);
        Y = new nx3("SFIXED32_LIST_PACKED", 45, 45, px3Var3, ay3Var4);
        ay3 ay3Var10 = ay3.i;
        Z = new nx3("SFIXED64_LIST_PACKED", 46, 46, px3Var3, ay3Var10);
        a0 = new nx3("SINT32_LIST_PACKED", 47, 47, px3Var3, ay3.h);
        b0 = new nx3("SINT64_LIST_PACKED", 48, 48, px3Var3, ay3Var10);
        c0 = new nx3("GROUP_LIST", 49, 49, px3Var2, ay3Var7);
        d0 = new nx3("MAP", 50, 50, px3.MAP, ay3.g);
        f0 = new nx3[]{f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0};
        nx3[] nx3VarArrValues = values();
        e0 = new nx3[51];
        for (nx3 nx3Var : nx3VarArrValues) {
            e0[nx3Var.e] = nx3Var;
        }
    }

    public nx3(String str, int i2, int i3, px3 px3Var, ay3 ay3Var) {
        this.e = i3;
        int i4 = ox3.a[px3Var.ordinal()];
        if (i4 == 1 || i4 == 2) {
            Class<?> cls = ay3Var.e;
        }
        if (px3Var == px3.SCALAR) {
            int i5 = ox3.b[ay3Var.ordinal()];
        }
    }

    public static nx3[] values() {
        return (nx3[]) f0.clone();
    }
}
