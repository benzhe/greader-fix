package defpackage;

/* loaded from: classes.dex */
public final class pl4 implements xl4 {
    public xl4[] a;

    public pl4(xl4... xl4VarArr) {
        this.a = xl4VarArr;
    }

    @Override // defpackage.xl4
    public final yl4 a(Class<?> cls) {
        for (xl4 xl4Var : this.a) {
            if (xl4Var.b(cls)) {
                return xl4Var.a(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }

    @Override // defpackage.xl4
    public final boolean b(Class<?> cls) {
        for (xl4 xl4Var : this.a) {
            if (xl4Var.b(cls)) {
                return true;
            }
        }
        return false;
    }
}
