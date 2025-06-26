package defpackage;

/* loaded from: classes.dex */
public final class y84 implements ca4 {
    public static final y84 a = new y84();

    @Override // defpackage.ca4
    public final boolean a(Class<?> cls) {
        return c94.class.isAssignableFrom(cls);
    }

    @Override // defpackage.ca4
    public final ba4 b(Class<?> cls) {
        if (!c94.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (ba4) c94.p(cls.asSubclass(c94.class)).r(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }
}
