package defpackage;

/* loaded from: classes.dex */
public final class t63 implements c83 {
    public static final t63 a = new t63();

    @Override // defpackage.c83
    public final d83 a(Class<?> cls) {
        if (!s63.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            throw new IllegalArgumentException(name.length() != 0 ? "Unsupported message type: ".concat(name) : new String("Unsupported message type: "));
        }
        try {
            return (d83) s63.w(cls.asSubclass(s63.class)).q(3, null, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            throw new RuntimeException(name2.length() != 0 ? "Unable to get message info for ".concat(name2) : new String("Unable to get message info for "), e);
        }
    }

    @Override // defpackage.c83
    public final boolean b(Class<?> cls) {
        return s63.class.isAssignableFrom(cls);
    }
}
