package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'g' uses external variables
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
public final class dj6 {
    public static final dj6 A;
    public static final dj6 B;
    public static final dj6 C;
    public static final dj6 D;
    public static final dj6 E;
    public static final dj6 F;
    public static final dj6 G;
    public static final dj6 H;
    public static final dj6 I;
    public static final dj6 J;
    public static final dj6 K;
    public static final dj6 L;
    public static final dj6 M;
    public static final dj6 N;
    public static final dj6 O;
    public static final dj6 P;
    public static final dj6 Q;
    public static final dj6 R;
    public static final dj6 S;
    public static final dj6 T;
    public static final dj6 U;
    public static final dj6 V;
    public static final dj6 W;
    public static final dj6 X;
    public static final dj6 Y;
    public static final dj6 Z;
    public static final dj6 a0;
    public static final dj6 b0;
    public static final dj6 c0;
    public static final dj6 d0;
    public static final dj6 e0;
    public static final dj6[] f0;
    public static final dj6 g;
    public static final /* synthetic */ dj6[] g0;
    public static final dj6 h;
    public static final dj6 i;
    public static final dj6 j;
    public static final dj6 k;
    public static final dj6 l;
    public static final dj6 m;
    public static final dj6 n;
    public static final dj6 o;
    public static final dj6 p;
    public static final dj6 q;
    public static final dj6 r;
    public static final dj6 s;
    public static final dj6 t;
    public static final dj6 u;
    public static final dj6 v;
    public static final dj6 w;
    public static final dj6 x;
    public static final dj6 y;
    public static final dj6 z;
    public final int e;
    public final a f;

    public enum a {
        SCALAR(false),
        VECTOR(true),
        PACKED_VECTOR(true),
        MAP(false);

        public final boolean e;

        a(boolean z) {
            this.e = z;
        }
    }

    static {
        a aVar = a.SCALAR;
        lj6 lj6Var = lj6.k;
        g = new dj6("DOUBLE", 0, 0, aVar, lj6Var);
        lj6 lj6Var2 = lj6.j;
        h = new dj6("FLOAT", 1, 1, aVar, lj6Var2);
        lj6 lj6Var3 = lj6.i;
        i = new dj6("INT64", 2, 2, aVar, lj6Var3);
        j = new dj6("UINT64", 3, 3, aVar, lj6Var3);
        lj6 lj6Var4 = lj6.h;
        k = new dj6("INT32", 4, 4, aVar, lj6Var4);
        l = new dj6("FIXED64", 5, 5, aVar, lj6Var3);
        m = new dj6("FIXED32", 6, 6, aVar, lj6Var4);
        lj6 lj6Var5 = lj6.l;
        n = new dj6("BOOL", 7, 7, aVar, lj6Var5);
        lj6 lj6Var6 = lj6.m;
        o = new dj6("STRING", 8, 8, aVar, lj6Var6);
        lj6 lj6Var7 = lj6.p;
        p = new dj6("MESSAGE", 9, 9, aVar, lj6Var7);
        lj6 lj6Var8 = lj6.n;
        q = new dj6("BYTES", 10, 10, aVar, lj6Var8);
        r = new dj6("UINT32", 11, 11, aVar, lj6Var4);
        lj6 lj6Var9 = lj6.o;
        s = new dj6("ENUM", 12, 12, aVar, lj6Var9);
        t = new dj6("SFIXED32", 13, 13, aVar, lj6Var4);
        u = new dj6("SFIXED64", 14, 14, aVar, lj6Var3);
        v = new dj6("SINT32", 15, 15, aVar, lj6Var4);
        w = new dj6("SINT64", 16, 16, aVar, lj6Var3);
        x = new dj6("GROUP", 17, 17, aVar, lj6Var7);
        a aVar2 = a.VECTOR;
        y = new dj6("DOUBLE_LIST", 18, 18, aVar2, lj6Var);
        z = new dj6("FLOAT_LIST", 19, 19, aVar2, lj6Var2);
        A = new dj6("INT64_LIST", 20, 20, aVar2, lj6Var3);
        B = new dj6("UINT64_LIST", 21, 21, aVar2, lj6Var3);
        C = new dj6("INT32_LIST", 22, 22, aVar2, lj6Var4);
        D = new dj6("FIXED64_LIST", 23, 23, aVar2, lj6Var3);
        E = new dj6("FIXED32_LIST", 24, 24, aVar2, lj6Var4);
        F = new dj6("BOOL_LIST", 25, 25, aVar2, lj6Var5);
        G = new dj6("STRING_LIST", 26, 26, aVar2, lj6Var6);
        H = new dj6("MESSAGE_LIST", 27, 27, aVar2, lj6Var7);
        I = new dj6("BYTES_LIST", 28, 28, aVar2, lj6Var8);
        J = new dj6("UINT32_LIST", 29, 29, aVar2, lj6Var4);
        K = new dj6("ENUM_LIST", 30, 30, aVar2, lj6Var9);
        L = new dj6("SFIXED32_LIST", 31, 31, aVar2, lj6Var4);
        M = new dj6("SFIXED64_LIST", 32, 32, aVar2, lj6Var3);
        N = new dj6("SINT32_LIST", 33, 33, aVar2, lj6Var4);
        O = new dj6("SINT64_LIST", 34, 34, aVar2, lj6Var3);
        a aVar3 = a.PACKED_VECTOR;
        P = new dj6("DOUBLE_LIST_PACKED", 35, 35, aVar3, lj6Var);
        Q = new dj6("FLOAT_LIST_PACKED", 36, 36, aVar3, lj6Var2);
        R = new dj6("INT64_LIST_PACKED", 37, 37, aVar3, lj6Var3);
        S = new dj6("UINT64_LIST_PACKED", 38, 38, aVar3, lj6Var3);
        T = new dj6("INT32_LIST_PACKED", 39, 39, aVar3, lj6Var4);
        U = new dj6("FIXED64_LIST_PACKED", 40, 40, aVar3, lj6Var3);
        V = new dj6("FIXED32_LIST_PACKED", 41, 41, aVar3, lj6Var4);
        W = new dj6("BOOL_LIST_PACKED", 42, 42, aVar3, lj6Var5);
        X = new dj6("UINT32_LIST_PACKED", 43, 43, aVar3, lj6Var4);
        Y = new dj6("ENUM_LIST_PACKED", 44, 44, aVar3, lj6Var9);
        Z = new dj6("SFIXED32_LIST_PACKED", 45, 45, aVar3, lj6Var4);
        lj6 lj6Var10 = lj6.i;
        a0 = new dj6("SFIXED64_LIST_PACKED", 46, 46, aVar3, lj6Var10);
        b0 = new dj6("SINT32_LIST_PACKED", 47, 47, aVar3, lj6.h);
        c0 = new dj6("SINT64_LIST_PACKED", 48, 48, aVar3, lj6Var10);
        d0 = new dj6("GROUP_LIST", 49, 49, aVar2, lj6Var7);
        e0 = new dj6("MAP", 50, 50, a.MAP, lj6.g);
        g0 = new dj6[]{g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, z, A, B, C, D, E, F, G, H, I, J, K, L, M, N, O, P, Q, R, S, T, U, V, W, X, Y, Z, a0, b0, c0, d0, e0};
        dj6[] dj6VarArrValues = values();
        f0 = new dj6[51];
        for (dj6 dj6Var : dj6VarArrValues) {
            f0[dj6Var.e] = dj6Var;
        }
    }

    public dj6(String str, int i2, int i3, a aVar, lj6 lj6Var) {
        this.e = i3;
        this.f = aVar;
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 1 || iOrdinal == 3) {
            Class<?> cls = lj6Var.e;
        }
        if (aVar == a.SCALAR) {
            lj6Var.ordinal();
        }
    }

    public static dj6 valueOf(String str) {
        return (dj6) Enum.valueOf(dj6.class, str);
    }

    public static dj6[] values() {
        return (dj6[]) g0.clone();
    }
}
