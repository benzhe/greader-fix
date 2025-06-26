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
public class ba3 {
    public static final ba3 g;
    public static final ba3 h;
    public static final ba3 i;
    public static final ba3 j;
    public static final ba3 k;
    public static final ba3 l;
    public static final ba3 m;
    public static final ba3 n;
    public static final ba3 o;
    public static final ba3 p;
    public static final ba3 q;
    public static final ba3 r;
    public static final ba3 s;
    public static final ba3 t;
    public static final ba3 u;
    public static final ba3 v;
    public static final ba3 w;
    public static final ba3 x;
    public static final /* synthetic */ ba3[] y;
    public final ea3 e;
    public final int f;

    static {
        ba3 ba3Var = new ba3("DOUBLE", 0, ea3.DOUBLE, 1);
        g = ba3Var;
        ba3 ba3Var2 = new ba3("FLOAT", 1, ea3.FLOAT, 5);
        h = ba3Var2;
        ea3 ea3Var = ea3.LONG;
        ba3 ba3Var3 = new ba3("INT64", 2, ea3Var, 0);
        i = ba3Var3;
        ba3 ba3Var4 = new ba3("UINT64", 3, ea3Var, 0);
        j = ba3Var4;
        ea3 ea3Var2 = ea3.INT;
        ba3 ba3Var5 = new ba3("INT32", 4, ea3Var2, 0);
        k = ba3Var5;
        ba3 ba3Var6 = new ba3("FIXED64", 5, ea3Var, 1);
        l = ba3Var6;
        ba3 ba3Var7 = new ba3("FIXED32", 6, ea3Var2, 5);
        m = ba3Var7;
        ba3 ba3Var8 = new ba3("BOOL", 7, ea3.BOOLEAN, 0);
        n = ba3Var8;
        final ea3 ea3Var3 = ea3.STRING;
        final String str = "STRING";
        ba3 ba3Var9 = new ba3(str, ea3Var3) { // from class: aa3
        };
        o = ba3Var9;
        final ea3 ea3Var4 = ea3.MESSAGE;
        final String str2 = "GROUP";
        ba3 ba3Var10 = new ba3(str2, ea3Var4) { // from class: da3
        };
        p = ba3Var10;
        final String str3 = "MESSAGE";
        ba3 ba3Var11 = new ba3(str3, ea3Var4) { // from class: ca3
        };
        q = ba3Var11;
        final ea3 ea3Var5 = ea3.BYTE_STRING;
        final String str4 = "BYTES";
        ba3 ba3Var12 = new ba3(str4, ea3Var5) { // from class: fa3
        };
        r = ba3Var12;
        ba3 ba3Var13 = new ba3("UINT32", 12, ea3Var2, 0);
        s = ba3Var13;
        ba3 ba3Var14 = new ba3("ENUM", 13, ea3.ENUM, 0);
        t = ba3Var14;
        ba3 ba3Var15 = new ba3("SFIXED32", 14, ea3Var2, 5);
        u = ba3Var15;
        ba3 ba3Var16 = new ba3("SFIXED64", 15, ea3Var, 1);
        v = ba3Var16;
        ba3 ba3Var17 = new ba3("SINT32", 16, ea3Var2, 0);
        w = ba3Var17;
        ba3 ba3Var18 = new ba3("SINT64", 17, ea3Var, 0);
        x = ba3Var18;
        y = new ba3[]{ba3Var, ba3Var2, ba3Var3, ba3Var4, ba3Var5, ba3Var6, ba3Var7, ba3Var8, ba3Var9, ba3Var10, ba3Var11, ba3Var12, ba3Var13, ba3Var14, ba3Var15, ba3Var16, ba3Var17, ba3Var18};
    }

    public ba3(String str, int i2, ea3 ea3Var, int i3) {
        this.e = ea3Var;
        this.f = i3;
    }

    public static ba3[] values() {
        return (ba3[]) y.clone();
    }

    public ba3(String str, int i2, ea3 ea3Var, int i3, y93 y93Var) {
        this.e = ea3Var;
        this.f = i3;
    }
}
