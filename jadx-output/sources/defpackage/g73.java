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
public final class g73 {
    public static final g73 g;
    public static final g73 h;
    public static final g73 i;
    public static final g73 j;
    public static final g73 k;
    public static final g73 l;
    public static final g73 m;
    public static final g73 n;
    public static final g73 o;
    public static final g73 p;
    public static final /* synthetic */ g73[] q;
    public final Class<?> e;
    public final Object f;

    static {
        g73 g73Var = new g73("VOID", 0, Void.class, Void.class, null);
        g = g73Var;
        Class cls = Integer.TYPE;
        g73 g73Var2 = new g73("INT", 1, cls, Integer.class, 0);
        h = g73Var2;
        g73 g73Var3 = new g73("LONG", 2, Long.TYPE, Long.class, 0L);
        i = g73Var3;
        g73 g73Var4 = new g73("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        j = g73Var4;
        g73 g73Var5 = new g73("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        k = g73Var5;
        g73 g73Var6 = new g73("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        l = g73Var6;
        g73 g73Var7 = new g73("STRING", 6, String.class, String.class, "");
        m = g73Var7;
        g73 g73Var8 = new g73("BYTE_STRING", 7, k53.class, k53.class, k53.f);
        n = g73Var8;
        g73 g73Var9 = new g73("ENUM", 8, cls, Integer.class, null);
        o = g73Var9;
        g73 g73Var10 = new g73("MESSAGE", 9, Object.class, Object.class, null);
        p = g73Var10;
        q = new g73[]{g73Var, g73Var2, g73Var3, g73Var4, g73Var5, g73Var6, g73Var7, g73Var8, g73Var9, g73Var10};
    }

    public g73(String str, int i2, Class cls, Class cls2, Object obj) {
        this.e = cls2;
        this.f = obj;
    }

    public static g73[] values() {
        return (g73[]) q.clone();
    }
}
