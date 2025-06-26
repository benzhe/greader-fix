package defpackage;

/* loaded from: classes.dex */
public final class rx3 implements wy3 {
    public static final rx3 a = new rx3();

    @Override // defpackage.wy3
    public final vy3 a(Class<?> cls) {
        if (!sx3.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (vy3) sx3.g(cls.asSubclass(sx3.class)).d(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // defpackage.wy3
    public final boolean b(Class<?> cls) {
        return sx3.class.isAssignableFrom(cls);
    }
}
