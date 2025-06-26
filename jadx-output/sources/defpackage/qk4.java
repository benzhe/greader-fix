package defpackage;

/* loaded from: classes.dex */
public final class qk4 implements xl4 {
    public static final qk4 a = new qk4();

    @Override // defpackage.xl4
    public final yl4 a(Class<?> cls) {
        if (!pk4.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (yl4) pk4.g(cls.asSubclass(pk4.class)).j(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // defpackage.xl4
    public final boolean b(Class<?> cls) {
        return pk4.class.isAssignableFrom(cls);
    }
}
