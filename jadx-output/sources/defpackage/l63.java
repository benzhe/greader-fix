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
public final class l63 {
    public static final l63 A;
    public static final l63 B;
    public static final l63 C;
    public static final l63 D;
    public static final l63 E;
    public static final l63 F;
    public static final l63 G;
    public static final l63 H;
    public static final l63 I;
    public static final l63 J;
    public static final l63 K;
    public static final l63 L;
    public static final l63 M;
    public static final l63 N;
    public static final l63 O;
    public static final l63 P;
    public static final l63 Q;
    public static final l63 R;
    public static final l63 S;
    public static final l63 T;
    public static final l63 U;
    public static final l63 V;
    public static final l63 W;
    public static final l63 X;
    public static final l63 Y;
    public static final l63 Z;
    public static final l63 a0;
    public static final l63 b0;
    public static final l63 c0;
    public static final l63 d0;
    public static final l63[] e0;
    public static final l63 f;
    public static final /* synthetic */ l63[] f0;
    public static final l63 g;
    public static final l63 h;
    public static final l63 i;
    public static final l63 j;
    public static final l63 k;
    public static final l63 l;
    public static final l63 m;
    public static final l63 n;
    public static final l63 o;
    public static final l63 p;
    public static final l63 q;
    public static final l63 r;
    public static final l63 s;
    public static final l63 t;
    public static final l63 u;
    public static final l63 v;
    public static final l63 w;
    public static final l63 x;
    public static final l63 y;
    public static final l63 z;
    public final int e;

    static {
        n63 n63Var = n63.SCALAR;
        g73 g73Var = g73.k;
        f = new l63("DOUBLE", 0, 0, n63Var, g73Var);
        g73 g73Var2 = g73.j;
        g = new l63("FLOAT", 1, 1, n63Var, g73Var2);
        g73 g73Var3 = g73.i;
        h = new l63("INT64", 2, 2, n63Var, g73Var3);
        i = new l63("UINT64", 3, 3, n63Var, g73Var3);
        g73 g73Var4 = g73.h;
        j = new l63("INT32", 4, 4, n63Var, g73Var4);
        k = new l63("FIXED64", 5, 5, n63Var, g73Var3);
        l = new l63("FIXED32", 6, 6, n63Var, g73Var4);
        g73 g73Var5 = g73.l;
        m = new l63("BOOL", 7, 7, n63Var, g73Var5);
        g73 g73Var6 = g73.m;
        n = new l63("STRING", 8, 8, n63Var, g73Var6);
        g73 g73Var7 = g73.p;
        o = new l63("MESSAGE", 9, 9, n63Var, g73Var7);
        g73 g73Var8 = g73.n;
        p = new l63("BYTES", 10, 10, n63Var, g73Var8);
        q = new l63("UINT32", 11, 11, n63Var, g73Var4);
        g73 g73Var9 = g73.o;
        r = new l63("ENUM", 12, 12, n63Var, g73Var9);
        s = new l63("SFIXED32", 13, 13, n63Var, g73Var4);
        t = new l63("SFIXED64", 14, 14, n63Var, g73Var3);
        u = new l63("SINT32", 15, 15, n63Var, g73Var4);
        v = new l63("SINT64", 16, 16, n63Var, g73Var3);
        w = new l63("GROUP", 17, 17, n63Var, g73Var7);
        n63 n63Var2 = n63.VECTOR;
        x = new l63("DOUBLE_LIST", 18, 18, n63Var2, g73Var);
        y = new l63("FLOAT_LIST", 19, 19, n63Var2, g73Var2);
        z = new l63("INT64_LIST", 20, 20, n63Var2, g73Var3);
        A = new l63("UINT64_LIST", 21, 21, n63Var2, g73Var3);
        B = new l63("INT32_LIST", 22, 22, n63Var2, g73Var4);
        C = new l63("FIXED64_LIST", 23, 23, n63Var2, g73Var3);
        D = new l63("FIXED32_LIST", 24, 24, n63Var2, g73Var4);
        E = new l63("BOOL_LIST", 25, 25, n63Var2, g73Var5);
        F = new l63("STRING_LIST", 26, 26, n63Var2, g73Var6);
        G = new l63("MESSAGE_LIST", 27, 27, n63Var2, g73Var7);
        H = new l63("BYTES_LIST", 28, 28, n63Var2, g73Var8);
        I = new l63("UINT32_LIST", 29, 29, n63Var2, g73Var4);
        J = new l63("ENUM_LIST", 30, 30, n63Var2, g73Var9);
        K = new l63("SFIXED32_LIST", 31, 31, n63Var2, g73Var4);
        L = new l63("SFIXED64_LIST", 32, 32, n63Var2, g73Var3);
        M = new l63("SINT32_LIST", 33, 33, n63Var2, g73Var4);
        N = new l63("SINT64_LIST", 34, 34, n63Var2, g73Var3);
        n63 n63Var3 = n63.PACKED_VECTOR;
        O = new l63("DOUBLE_LIST_PACKED", 35, 35, n63Var3, g73Var);
        P = new l63("FLOAT_LIST_PACKED", 36, 36, n63Var3, g73Var2);
        Q = new l63("INT64_LIST_PACKED", 37, 37, n63Var3, g73Var3);
        R = new l63("UINT64_LIST_PACKED", 38, 38, n63Var3, g73Var3);
        S = new l63("INT32_LIST_PACKED", 39, 39, n63Var3, g73Var4);
        T = new l63("FIXED64_LIST_PACKED", 40, 40, n63Var3, g73Var3);
        U = new l63("FIXED32_LIST_PACKED", 41, 41, n63Var3, g73Var4);
        V = new l63("BOOL_LIST_PACKED", 42, 42, n63Var3, g73Var5);
        W = new l63("UINT32_LIST_PACKED", 43, 43, n63Var3, g73Var4);
        X = new l63("ENUM_LIST_PACKED", 44, 44, n63Var3, g73Var9);
        Y = new l63("SFIXED32_LIST_PACKED", 45, 45, n63Var3, g73Var4);
        g73 g73Var10 = g73.i;
        Z = new l63("SFIXED64_LIST_PACKED", 46, 46, n63Var3, g73Var10);
        a0 = new l63("SINT32_LIST_PACKED", 47, 47, n63Var3, g73.h);
        b0 = new l63("SINT64_LIST_PACKED", 48, 48, n63Var3, g73Var10);
        c0 = new l63("GROUP_LIST", 49, 49, n63Var2, g73Var7);
        d0 = new l63("MAP", 50, 50, n63.MAP, g73.g);
        f0 = new l63[]{f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0};
        l63[] l63VarArrValues = values();
        e0 = new l63[51];
        for (l63 l63Var : l63VarArrValues) {
            e0[l63Var.e] = l63Var;
        }
    }

    public l63(String str, int i2, int i3, n63 n63Var, g73 g73Var) {
        this.e = i3;
        int i4 = o63.a[n63Var.ordinal()];
        if (i4 == 1 || i4 == 2) {
            Class<?> cls = g73Var.e;
        }
        if (n63Var == n63.SCALAR) {
            int i5 = o63.b[g73Var.ordinal()];
        }
    }

    public static l63[] values() {
        return (l63[]) f0.clone();
    }
}
