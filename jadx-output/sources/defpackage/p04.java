package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'i' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public class p04 {
    public static final p04 g;
    public static final p04 h;
    public static final p04 i;
    public static final p04 j;
    public static final p04 k;
    public static final p04 l;
    public static final p04 m;
    public static final p04 n;
    public static final p04 o;
    public static final p04 p;
    public static final p04 q;
    public static final p04 r;
    public static final p04 s;
    public static final p04 t;
    public static final p04 u;
    public static final p04 v;
    public static final p04 w;
    public static final p04 x;
    public static final /* synthetic */ p04[] y;
    public final u04 e;
    public final int f;

    static {
        p04 p04Var = new p04("DOUBLE", 0, u04.DOUBLE, 1);
        g = p04Var;
        p04 p04Var2 = new p04("FLOAT", 1, u04.FLOAT, 5);
        h = p04Var2;
        u04 u04Var = u04.LONG;
        p04 p04Var3 = new p04("INT64", 2, u04Var, 0);
        i = p04Var3;
        p04 p04Var4 = new p04("UINT64", 3, u04Var, 0);
        j = p04Var4;
        u04 u04Var2 = u04.INT;
        p04 p04Var5 = new p04("INT32", 4, u04Var2, 0);
        k = p04Var5;
        p04 p04Var6 = new p04("FIXED64", 5, u04Var, 1);
        l = p04Var6;
        p04 p04Var7 = new p04("FIXED32", 6, u04Var2, 5);
        m = p04Var7;
        p04 p04Var8 = new p04("BOOL", 7, u04.BOOLEAN, 0);
        n = p04Var8;
        final u04 u04Var3 = u04.STRING;
        final String str = "STRING";
        p04 p04Var9 = new p04(str, u04Var3) { // from class: q04
        };
        o = p04Var9;
        final u04 u04Var4 = u04.MESSAGE;
        final String str2 = "GROUP";
        p04 p04Var10 = new p04(str2, u04Var4) { // from class: r04
        };
        p = p04Var10;
        final String str3 = "MESSAGE";
        p04 p04Var11 = new p04(str3, u04Var4) { // from class: s04
        };
        q = p04Var11;
        final u04 u04Var5 = u04.BYTE_STRING;
        final String str4 = "BYTES";
        p04 p04Var12 = new p04(str4, u04Var5) { // from class: t04
        };
        r = p04Var12;
        p04 p04Var13 = new p04("UINT32", 12, u04Var2, 0);
        s = p04Var13;
        p04 p04Var14 = new p04("ENUM", 13, u04.ENUM, 0);
        t = p04Var14;
        p04 p04Var15 = new p04("SFIXED32", 14, u04Var2, 5);
        u = p04Var15;
        p04 p04Var16 = new p04("SFIXED64", 15, u04Var, 1);
        v = p04Var16;
        p04 p04Var17 = new p04("SINT32", 16, u04Var2, 0);
        w = p04Var17;
        p04 p04Var18 = new p04("SINT64", 17, u04Var, 0);
        x = p04Var18;
        y = new p04[]{p04Var, p04Var2, p04Var3, p04Var4, p04Var5, p04Var6, p04Var7, p04Var8, p04Var9, p04Var10, p04Var11, p04Var12, p04Var13, p04Var14, p04Var15, p04Var16, p04Var17, p04Var18};
    }

    public p04(String str, int i2, u04 u04Var, int i3) {
        this.e = u04Var;
        this.f = i3;
    }

    public p04(String str, int i2, u04 u04Var, int i3, o04 o04Var) {
        this.e = u04Var;
        this.f = i3;
    }

    public static p04[] values() {
        return (p04[]) y.clone();
    }
}
