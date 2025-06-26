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
public final class v84 {
    public static final v84 A;
    public static final v84 B;
    public static final v84 C;
    public static final v84 D;
    public static final v84 E;
    public static final v84 F;
    public static final v84 G;
    public static final v84 H;
    public static final v84 I;
    public static final v84 J;
    public static final v84 K;
    public static final v84 L;
    public static final v84 M;
    public static final v84 N;
    public static final v84 O;
    public static final v84 P;
    public static final v84 Q;
    public static final v84 R;
    public static final v84 S;
    public static final v84 T;
    public static final v84 U;
    public static final v84 V;
    public static final v84 W;
    public static final v84 X;
    public static final v84 Y;
    public static final v84 Z;
    public static final v84 a0;
    public static final v84 b0;
    public static final v84 c0;
    public static final v84 d0;
    public static final v84[] e0;
    public static final v84 f;
    public static final /* synthetic */ v84[] f0;
    public static final v84 g;
    public static final v84 h;
    public static final v84 i;
    public static final v84 j;
    public static final v84 k;
    public static final v84 l;
    public static final v84 m;
    public static final v84 n;
    public static final v84 o;
    public static final v84 p;
    public static final v84 q;
    public static final v84 r;
    public static final v84 s;
    public static final v84 t;
    public static final v84 u;
    public static final v84 v;
    public static final v84 w;
    public static final v84 x;
    public static final v84 y;
    public static final v84 z;
    public final int e;

    static {
        m94 m94Var = m94.k;
        f = new v84("DOUBLE", 0, 0, 1, m94Var);
        m94 m94Var2 = m94.j;
        g = new v84("FLOAT", 1, 1, 1, m94Var2);
        m94 m94Var3 = m94.i;
        h = new v84("INT64", 2, 2, 1, m94Var3);
        i = new v84("UINT64", 3, 3, 1, m94Var3);
        m94 m94Var4 = m94.h;
        j = new v84("INT32", 4, 4, 1, m94Var4);
        k = new v84("FIXED64", 5, 5, 1, m94Var3);
        l = new v84("FIXED32", 6, 6, 1, m94Var4);
        m94 m94Var5 = m94.l;
        m = new v84("BOOL", 7, 7, 1, m94Var5);
        m94 m94Var6 = m94.m;
        n = new v84("STRING", 8, 8, 1, m94Var6);
        m94 m94Var7 = m94.p;
        o = new v84("MESSAGE", 9, 9, 1, m94Var7);
        m94 m94Var8 = m94.n;
        p = new v84("BYTES", 10, 10, 1, m94Var8);
        q = new v84("UINT32", 11, 11, 1, m94Var4);
        m94 m94Var9 = m94.o;
        r = new v84("ENUM", 12, 12, 1, m94Var9);
        s = new v84("SFIXED32", 13, 13, 1, m94Var4);
        t = new v84("SFIXED64", 14, 14, 1, m94Var3);
        u = new v84("SINT32", 15, 15, 1, m94Var4);
        v = new v84("SINT64", 16, 16, 1, m94Var3);
        w = new v84("GROUP", 17, 17, 1, m94Var7);
        x = new v84("DOUBLE_LIST", 18, 18, 2, m94Var);
        y = new v84("FLOAT_LIST", 19, 19, 2, m94Var2);
        z = new v84("INT64_LIST", 20, 20, 2, m94Var3);
        A = new v84("UINT64_LIST", 21, 21, 2, m94Var3);
        B = new v84("INT32_LIST", 22, 22, 2, m94Var4);
        C = new v84("FIXED64_LIST", 23, 23, 2, m94Var3);
        D = new v84("FIXED32_LIST", 24, 24, 2, m94Var4);
        E = new v84("BOOL_LIST", 25, 25, 2, m94Var5);
        F = new v84("STRING_LIST", 26, 26, 2, m94Var6);
        G = new v84("MESSAGE_LIST", 27, 27, 2, m94Var7);
        H = new v84("BYTES_LIST", 28, 28, 2, m94Var8);
        I = new v84("UINT32_LIST", 29, 29, 2, m94Var4);
        J = new v84("ENUM_LIST", 30, 30, 2, m94Var9);
        K = new v84("SFIXED32_LIST", 31, 31, 2, m94Var4);
        L = new v84("SFIXED64_LIST", 32, 32, 2, m94Var3);
        M = new v84("SINT32_LIST", 33, 33, 2, m94Var4);
        N = new v84("SINT64_LIST", 34, 34, 2, m94Var3);
        O = new v84("DOUBLE_LIST_PACKED", 35, 35, 3, m94Var);
        P = new v84("FLOAT_LIST_PACKED", 36, 36, 3, m94Var2);
        Q = new v84("INT64_LIST_PACKED", 37, 37, 3, m94Var3);
        R = new v84("UINT64_LIST_PACKED", 38, 38, 3, m94Var3);
        S = new v84("INT32_LIST_PACKED", 39, 39, 3, m94Var4);
        T = new v84("FIXED64_LIST_PACKED", 40, 40, 3, m94Var3);
        U = new v84("FIXED32_LIST_PACKED", 41, 41, 3, m94Var4);
        V = new v84("BOOL_LIST_PACKED", 42, 42, 3, m94Var5);
        W = new v84("UINT32_LIST_PACKED", 43, 43, 3, m94Var4);
        X = new v84("ENUM_LIST_PACKED", 44, 44, 3, m94Var9);
        Y = new v84("SFIXED32_LIST_PACKED", 45, 45, 3, m94Var4);
        m94 m94Var10 = m94.i;
        Z = new v84("SFIXED64_LIST_PACKED", 46, 46, 3, m94Var10);
        a0 = new v84("SINT32_LIST_PACKED", 47, 47, 3, m94Var4);
        b0 = new v84("SINT64_LIST_PACKED", 48, 48, 3, m94Var10);
        c0 = new v84("GROUP_LIST", 49, 49, 2, m94Var7);
        d0 = new v84("MAP", 50, 50, 4, m94.g);
        f0 = new v84[]{f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0};
        v84[] v84VarArrValues = values();
        e0 = new v84[51];
        for (int i2 = 0; i2 < 51; i2++) {
            v84 v84Var = v84VarArrValues[i2];
            e0[v84Var.e] = v84Var;
        }
    }

    public v84(String str, int i2, int i3, int i4, m94 m94Var) {
        this.e = i3;
        m94 m94Var2 = m94.g;
        int i5 = i4 - 1;
        if (i5 == 1 || i5 == 3) {
            Class<?> cls = m94Var.e;
        }
        if (i4 == 1) {
            m94Var.ordinal();
        }
    }

    public static v84[] values() {
        return (v84[]) f0.clone();
    }
}
