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
public final class ay3 {
    public static final ay3 g;
    public static final ay3 h;
    public static final ay3 i;
    public static final ay3 j;
    public static final ay3 k;
    public static final ay3 l;
    public static final ay3 m;
    public static final ay3 n;
    public static final ay3 o;
    public static final ay3 p;
    public static final /* synthetic */ ay3[] q;
    public final Class<?> e;
    public final Object f;

    static {
        ay3 ay3Var = new ay3("VOID", 0, Void.class, Void.class, null);
        g = ay3Var;
        Class cls = Integer.TYPE;
        ay3 ay3Var2 = new ay3("INT", 1, cls, Integer.class, 0);
        h = ay3Var2;
        ay3 ay3Var3 = new ay3("LONG", 2, Long.TYPE, Long.class, 0L);
        i = ay3Var3;
        ay3 ay3Var4 = new ay3("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        j = ay3Var4;
        ay3 ay3Var5 = new ay3("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        k = ay3Var5;
        ay3 ay3Var6 = new ay3("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        l = ay3Var6;
        ay3 ay3Var7 = new ay3("STRING", 6, String.class, String.class, "");
        m = ay3Var7;
        ay3 ay3Var8 = new ay3("BYTE_STRING", 7, sw3.class, sw3.class, sw3.f);
        n = ay3Var8;
        ay3 ay3Var9 = new ay3("ENUM", 8, cls, Integer.class, null);
        o = ay3Var9;
        ay3 ay3Var10 = new ay3("MESSAGE", 9, Object.class, Object.class, null);
        p = ay3Var10;
        q = new ay3[]{ay3Var, ay3Var2, ay3Var3, ay3Var4, ay3Var5, ay3Var6, ay3Var7, ay3Var8, ay3Var9, ay3Var10};
    }

    public ay3(String str, int i2, Class cls, Class cls2, Object obj) {
        this.e = cls2;
        this.f = obj;
    }

    public static ay3[] values() {
        return (ay3[]) q.clone();
    }
}
