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
public class fl6 {
    public static final fl6 g;
    public static final fl6 h;
    public static final fl6 i;
    public static final fl6 j;
    public static final fl6 k;
    public static final fl6 l;
    public static final fl6 m;
    public static final fl6 n;
    public static final fl6 o;
    public static final fl6 p;
    public static final fl6 q;
    public static final fl6 r;
    public static final fl6 s;
    public static final fl6 t;
    public static final fl6 u;
    public static final fl6 v;
    public static final fl6 w;
    public static final fl6 x;
    public static final /* synthetic */ fl6[] y;
    public final gl6 e;
    public final int f;

    static {
        fl6 fl6Var = new fl6("DOUBLE", 0, gl6.DOUBLE, 1);
        g = fl6Var;
        fl6 fl6Var2 = new fl6("FLOAT", 1, gl6.FLOAT, 5);
        h = fl6Var2;
        gl6 gl6Var = gl6.LONG;
        fl6 fl6Var3 = new fl6("INT64", 2, gl6Var, 0);
        i = fl6Var3;
        fl6 fl6Var4 = new fl6("UINT64", 3, gl6Var, 0);
        j = fl6Var4;
        gl6 gl6Var2 = gl6.INT;
        fl6 fl6Var5 = new fl6("INT32", 4, gl6Var2, 0);
        k = fl6Var5;
        fl6 fl6Var6 = new fl6("FIXED64", 5, gl6Var, 1);
        l = fl6Var6;
        fl6 fl6Var7 = new fl6("FIXED32", 6, gl6Var2, 5);
        m = fl6Var7;
        fl6 fl6Var8 = new fl6("BOOL", 7, gl6.BOOLEAN, 0);
        n = fl6Var8;
        fl6 fl6Var9 = new fl6("STRING", 8, gl6.STRING, 2) { // from class: fl6.a
        };
        o = fl6Var9;
        gl6 gl6Var3 = gl6.MESSAGE;
        fl6 fl6Var10 = new fl6("GROUP", 9, gl6Var3, 3) { // from class: fl6.b
        };
        p = fl6Var10;
        int i2 = 2;
        fl6 fl6Var11 = new fl6("MESSAGE", 10, gl6Var3, i2) { // from class: fl6.c
        };
        q = fl6Var11;
        fl6 fl6Var12 = new fl6("BYTES", 11, gl6.BYTE_STRING, i2) { // from class: fl6.d
        };
        r = fl6Var12;
        fl6 fl6Var13 = new fl6("UINT32", 12, gl6Var2, 0);
        s = fl6Var13;
        fl6 fl6Var14 = new fl6("ENUM", 13, gl6.ENUM, 0);
        t = fl6Var14;
        fl6 fl6Var15 = new fl6("SFIXED32", 14, gl6Var2, 5);
        u = fl6Var15;
        fl6 fl6Var16 = new fl6("SFIXED64", 15, gl6Var, 1);
        v = fl6Var16;
        fl6 fl6Var17 = new fl6("SINT32", 16, gl6Var2, 0);
        w = fl6Var17;
        fl6 fl6Var18 = new fl6("SINT64", 17, gl6Var, 0);
        x = fl6Var18;
        y = new fl6[]{fl6Var, fl6Var2, fl6Var3, fl6Var4, fl6Var5, fl6Var6, fl6Var7, fl6Var8, fl6Var9, fl6Var10, fl6Var11, fl6Var12, fl6Var13, fl6Var14, fl6Var15, fl6Var16, fl6Var17, fl6Var18};
    }

    public fl6(String str, int i2, gl6 gl6Var, int i3) {
        this.e = gl6Var;
        this.f = i3;
    }

    public static fl6 valueOf(String str) {
        return (fl6) Enum.valueOf(fl6.class, str);
    }

    public static fl6[] values() {
        return (fl6[]) y.clone();
    }

    public fl6(String str, int i2, gl6 gl6Var, int i3, el6 el6Var) {
        this.e = gl6Var;
        this.f = i3;
    }
}
