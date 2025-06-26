package defpackage;

/* loaded from: classes.dex */
public final class py3 implements wy3 {
    public wy3[] a;

    public py3(wy3... wy3VarArr) {
        this.a = wy3VarArr;
    }

    @Override // defpackage.wy3
    public final vy3 a(Class<?> cls) {
        for (wy3 wy3Var : this.a) {
            if (wy3Var.b(cls)) {
                return wy3Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // defpackage.wy3
    public final boolean b(Class<?> cls) {
        for (wy3 wy3Var : this.a) {
            if (wy3Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
