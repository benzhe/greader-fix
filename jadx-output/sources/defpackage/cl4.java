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
public final class cl4 {
    public static final cl4 g;
    public static final cl4 h;
    public static final cl4 i;
    public static final cl4 j;
    public static final cl4 k;
    public static final cl4 l;
    public static final cl4 m;
    public static final cl4 n;
    public static final cl4 o;
    public static final cl4 p;
    public static final /* synthetic */ cl4[] q;
    public final Class<?> e;
    public final Object f;

    static {
        cl4 cl4Var = new cl4("VOID", 0, Void.class, Void.class, null);
        g = cl4Var;
        Class cls = Integer.TYPE;
        cl4 cl4Var2 = new cl4("INT", 1, cls, Integer.class, 0);
        h = cl4Var2;
        cl4 cl4Var3 = new cl4("LONG", 2, Long.TYPE, Long.class, 0L);
        i = cl4Var3;
        cl4 cl4Var4 = new cl4("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        j = cl4Var4;
        cl4 cl4Var5 = new cl4("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        k = cl4Var5;
        cl4 cl4Var6 = new cl4("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        l = cl4Var6;
        cl4 cl4Var7 = new cl4("STRING", 6, String.class, String.class, "");
        m = cl4Var7;
        cl4 cl4Var8 = new cl4("BYTE_STRING", 7, vj4.class, vj4.class, vj4.f);
        n = cl4Var8;
        cl4 cl4Var9 = new cl4("ENUM", 8, cls, Integer.class, null);
        o = cl4Var9;
        cl4 cl4Var10 = new cl4("MESSAGE", 9, Object.class, Object.class, null);
        p = cl4Var10;
        q = new cl4[]{cl4Var, cl4Var2, cl4Var3, cl4Var4, cl4Var5, cl4Var6, cl4Var7, cl4Var8, cl4Var9, cl4Var10};
    }

    public cl4(String str, int i2, Class cls, Class cls2, Object obj) {
        this.e = cls2;
        this.f = obj;
    }

    public static cl4[] values() {
        return (cl4[]) q.clone();
    }
}
