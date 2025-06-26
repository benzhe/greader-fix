package defpackage;

/* loaded from: classes.dex */
public final class u73 implements c83 {
    public c83[] a;

    public u73(c83... c83VarArr) {
        this.a = c83VarArr;
    }

    @Override // defpackage.c83
    public final d83 a(Class<?> cls) {
        for (c83 c83Var : this.a) {
            if (c83Var.b(cls)) {
                return c83Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // defpackage.c83
    public final boolean b(Class<?> cls) {
        for (c83 c83Var : this.a) {
            if (c83Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
