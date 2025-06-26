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
public final class lj6 {
    public static final lj6 g;
    public static final lj6 h;
    public static final lj6 i;
    public static final lj6 j;
    public static final lj6 k;
    public static final lj6 l;
    public static final lj6 m;
    public static final lj6 n;
    public static final lj6 o;
    public static final lj6 p;
    public static final /* synthetic */ lj6[] q;
    public final Class<?> e;
    public final Object f;

    static {
        lj6 lj6Var = new lj6("VOID", 0, Void.class, Void.class, null);
        g = lj6Var;
        Class cls = Integer.TYPE;
        lj6 lj6Var2 = new lj6("INT", 1, cls, Integer.class, 0);
        h = lj6Var2;
        lj6 lj6Var3 = new lj6("LONG", 2, Long.TYPE, Long.class, 0L);
        i = lj6Var3;
        lj6 lj6Var4 = new lj6("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        j = lj6Var4;
        lj6 lj6Var5 = new lj6("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        k = lj6Var5;
        lj6 lj6Var6 = new lj6("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        l = lj6Var6;
        lj6 lj6Var7 = new lj6("STRING", 6, String.class, String.class, "");
        m = lj6Var7;
        lj6 lj6Var8 = new lj6("BYTE_STRING", 7, qi6.class, qi6.class, qi6.f);
        n = lj6Var8;
        lj6 lj6Var9 = new lj6("ENUM", 8, cls, Integer.class, null);
        o = lj6Var9;
        lj6 lj6Var10 = new lj6("MESSAGE", 9, Object.class, Object.class, null);
        p = lj6Var10;
        q = new lj6[]{lj6Var, lj6Var2, lj6Var3, lj6Var4, lj6Var5, lj6Var6, lj6Var7, lj6Var8, lj6Var9, lj6Var10};
    }

    public lj6(String str, int i2, Class cls, Class cls2, Object obj) {
        this.e = cls2;
        this.f = obj;
    }

    public static lj6 valueOf(String str) {
        return (lj6) Enum.valueOf(lj6.class, str);
    }

    public static lj6[] values() {
        return (lj6[]) q.clone();
    }
}
