package defpackage;

/* loaded from: classes.dex */
public final class v94 implements ca4 {
    public final ca4[] a;

    public v94(ca4... ca4VarArr) {
        this.a = ca4VarArr;
    }

    @Override // defpackage.ca4
    public final boolean a(Class<?> cls) {
        ca4[] ca4VarArr = this.a;
        for (int i = 0; i < 2; i++) {
            if (ca4VarArr[i].a(cls)) {
                return true;
            }
        }
        return false;
    }

    @Override // defpackage.ca4
    public final ba4 b(Class<?> cls) {
        ca4[] ca4VarArr = this.a;
        for (int i = 0; i < 2; i++) {
            ca4 ca4Var = ca4VarArr[i];
            if (ca4Var.a(cls)) {
                return ca4Var.b(cls);
            }
        }
        String name = cls.getName();
        throw new UnsupportedOperationException(name.length() != 0 ? "No factory is available for message type: ".concat(name) : new String("No factory is available for message type: "));
    }
}
