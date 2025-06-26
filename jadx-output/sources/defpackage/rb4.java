package defpackage;

/* JADX WARN: Enum visitor error
jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'h' uses external variables
	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
 */
/* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
/* loaded from: classes.dex */
public final class rb4 {
    public static final rb4 f;
    public static final rb4 g;
    public static final rb4 h;
    public static final rb4 i;
    public static final rb4 j;
    public static final rb4 k;
    public static final rb4 l;
    public static final rb4 m;
    public static final rb4 n;
    public static final rb4 o;
    public static final rb4 p;
    public static final rb4 q;
    public static final rb4 r;
    public static final rb4 s;
    public static final rb4 t;
    public static final rb4 u;
    public static final rb4 v;
    public static final rb4 w;
    public static final /* synthetic */ rb4[] x;
    public final sb4 e;

    static {
        rb4 rb4Var = new rb4("DOUBLE", 0, sb4.DOUBLE);
        f = rb4Var;
        rb4 rb4Var2 = new rb4("FLOAT", 1, sb4.FLOAT);
        g = rb4Var2;
        sb4 sb4Var = sb4.LONG;
        rb4 rb4Var3 = new rb4("INT64", 2, sb4Var);
        h = rb4Var3;
        rb4 rb4Var4 = new rb4("UINT64", 3, sb4Var);
        i = rb4Var4;
        sb4 sb4Var2 = sb4.INT;
        rb4 rb4Var5 = new rb4("INT32", 4, sb4Var2);
        j = rb4Var5;
        rb4 rb4Var6 = new rb4("FIXED64", 5, sb4Var);
        k = rb4Var6;
        rb4 rb4Var7 = new rb4("FIXED32", 6, sb4Var2);
        l = rb4Var7;
        rb4 rb4Var8 = new rb4("BOOL", 7, sb4.BOOLEAN);
        m = rb4Var8;
        rb4 rb4Var9 = new rb4("STRING", 8, sb4.STRING);
        n = rb4Var9;
        sb4 sb4Var3 = sb4.MESSAGE;
        rb4 rb4Var10 = new rb4("GROUP", 9, sb4Var3);
        o = rb4Var10;
        rb4 rb4Var11 = new rb4("MESSAGE", 10, sb4Var3);
        p = rb4Var11;
        rb4 rb4Var12 = new rb4("BYTES", 11, sb4.BYTE_STRING);
        q = rb4Var12;
        rb4 rb4Var13 = new rb4("UINT32", 12, sb4Var2);
        r = rb4Var13;
        rb4 rb4Var14 = new rb4("ENUM", 13, sb4.ENUM);
        s = rb4Var14;
        rb4 rb4Var15 = new rb4("SFIXED32", 14, sb4Var2);
        t = rb4Var15;
        rb4 rb4Var16 = new rb4("SFIXED64", 15, sb4Var);
        u = rb4Var16;
        rb4 rb4Var17 = new rb4("SINT32", 16, sb4Var2);
        v = rb4Var17;
        rb4 rb4Var18 = new rb4("SINT64", 17, sb4Var);
        w = rb4Var18;
        x = new rb4[]{rb4Var, rb4Var2, rb4Var3, rb4Var4, rb4Var5, rb4Var6, rb4Var7, rb4Var8, rb4Var9, rb4Var10, rb4Var11, rb4Var12, rb4Var13, rb4Var14, rb4Var15, rb4Var16, rb4Var17, rb4Var18};
    }

    public rb4(String str, int i2, sb4 sb4Var) {
        this.e = sb4Var;
    }

    public static rb4[] values() {
        return (rb4[]) x.clone();
    }
}
