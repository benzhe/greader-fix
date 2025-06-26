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
public class qn4 {
    public static final qn4 g;
    public static final qn4 h;
    public static final qn4 i;
    public static final qn4 j;
    public static final qn4 k;
    public static final qn4 l;
    public static final qn4 m;
    public static final qn4 n;
    public static final qn4 o;
    public static final qn4 p;
    public static final qn4 q;
    public static final qn4 r;
    public static final qn4 s;
    public static final qn4 t;
    public static final qn4 u;
    public static final qn4 v;
    public static final qn4 w;
    public static final qn4 x;
    public static final /* synthetic */ qn4[] y;
    public final tn4 e;
    public final int f;

    static {
        qn4 qn4Var = new qn4("DOUBLE", 0, tn4.DOUBLE, 1);
        g = qn4Var;
        qn4 qn4Var2 = new qn4("FLOAT", 1, tn4.FLOAT, 5);
        h = qn4Var2;
        tn4 tn4Var = tn4.LONG;
        qn4 qn4Var3 = new qn4("INT64", 2, tn4Var, 0);
        i = qn4Var3;
        qn4 qn4Var4 = new qn4("UINT64", 3, tn4Var, 0);
        j = qn4Var4;
        tn4 tn4Var2 = tn4.INT;
        qn4 qn4Var5 = new qn4("INT32", 4, tn4Var2, 0);
        k = qn4Var5;
        qn4 qn4Var6 = new qn4("FIXED64", 5, tn4Var, 1);
        l = qn4Var6;
        qn4 qn4Var7 = new qn4("FIXED32", 6, tn4Var2, 5);
        m = qn4Var7;
        qn4 qn4Var8 = new qn4("BOOL", 7, tn4.BOOLEAN, 0);
        n = qn4Var8;
        final tn4 tn4Var3 = tn4.STRING;
        final String str = "STRING";
        qn4 qn4Var9 = new qn4(str, tn4Var3) { // from class: pn4
        };
        o = qn4Var9;
        final tn4 tn4Var4 = tn4.MESSAGE;
        final String str2 = "GROUP";
        qn4 qn4Var10 = new qn4(str2, tn4Var4) { // from class: sn4
        };
        p = qn4Var10;
        final String str3 = "MESSAGE";
        qn4 qn4Var11 = new qn4(str3, tn4Var4) { // from class: rn4
        };
        q = qn4Var11;
        final tn4 tn4Var5 = tn4.BYTE_STRING;
        final String str4 = "BYTES";
        qn4 qn4Var12 = new qn4(str4, tn4Var5) { // from class: un4
        };
        r = qn4Var12;
        qn4 qn4Var13 = new qn4("UINT32", 12, tn4Var2, 0);
        s = qn4Var13;
        qn4 qn4Var14 = new qn4("ENUM", 13, tn4.ENUM, 0);
        t = qn4Var14;
        qn4 qn4Var15 = new qn4("SFIXED32", 14, tn4Var2, 5);
        u = qn4Var15;
        qn4 qn4Var16 = new qn4("SFIXED64", 15, tn4Var, 1);
        v = qn4Var16;
        qn4 qn4Var17 = new qn4("SINT32", 16, tn4Var2, 0);
        w = qn4Var17;
        qn4 qn4Var18 = new qn4("SINT64", 17, tn4Var, 0);
        x = qn4Var18;
        y = new qn4[]{qn4Var, qn4Var2, qn4Var3, qn4Var4, qn4Var5, qn4Var6, qn4Var7, qn4Var8, qn4Var9, qn4Var10, qn4Var11, qn4Var12, qn4Var13, qn4Var14, qn4Var15, qn4Var16, qn4Var17, qn4Var18};
    }

    public qn4(String str, int i2, tn4 tn4Var, int i3) {
        this.e = tn4Var;
        this.f = i3;
    }

    public static qn4[] values() {
        return (qn4[]) y.clone();
    }

    public qn4(String str, int i2, tn4 tn4Var, int i3, nn4 nn4Var) {
        this.e = tn4Var;
        this.f = i3;
    }
}
