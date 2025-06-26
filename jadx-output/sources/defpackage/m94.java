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
public final class m94 {
    public static final m94 g;
    public static final m94 h;
    public static final m94 i;
    public static final m94 j;
    public static final m94 k;
    public static final m94 l;
    public static final m94 m;
    public static final m94 n;
    public static final m94 o;
    public static final m94 p;
    public static final /* synthetic */ m94[] q;
    public final Class<?> e;
    public final Object f;

    static {
        m94 m94Var = new m94("VOID", 0, Void.class, Void.class, null);
        g = m94Var;
        Class cls = Integer.TYPE;
        m94 m94Var2 = new m94("INT", 1, cls, Integer.class, 0);
        h = m94Var2;
        m94 m94Var3 = new m94("LONG", 2, Long.TYPE, Long.class, 0L);
        i = m94Var3;
        m94 m94Var4 = new m94("FLOAT", 3, Float.TYPE, Float.class, Float.valueOf(0.0f));
        j = m94Var4;
        m94 m94Var5 = new m94("DOUBLE", 4, Double.TYPE, Double.class, Double.valueOf(0.0d));
        k = m94Var5;
        m94 m94Var6 = new m94("BOOLEAN", 5, Boolean.TYPE, Boolean.class, Boolean.FALSE);
        l = m94Var6;
        m94 m94Var7 = new m94("STRING", 6, String.class, String.class, "");
        m = m94Var7;
        m94 m94Var8 = new m94("BYTE_STRING", 7, g84.class, g84.class, g84.f);
        n = m94Var8;
        m94 m94Var9 = new m94("ENUM", 8, cls, Integer.class, null);
        o = m94Var9;
        m94 m94Var10 = new m94("MESSAGE", 9, Object.class, Object.class, null);
        p = m94Var10;
        q = new m94[]{m94Var, m94Var2, m94Var3, m94Var4, m94Var5, m94Var6, m94Var7, m94Var8, m94Var9, m94Var10};
    }

    public m94(String str, int i2, Class cls, Class cls2, Object obj) {
        this.e = cls2;
        this.f = obj;
    }

    public static m94[] values() {
        return (m94[]) q.clone();
    }
}
