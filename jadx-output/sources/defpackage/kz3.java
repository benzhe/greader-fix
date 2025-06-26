package defpackage;

/* loaded from: classes.dex */
public final class kz3 implements vy3 {
    public final xy3 a;
    public final lz3 b;

    public kz3(xy3 xy3Var, String str, Object[] objArr) {
        this.a = xy3Var;
        this.b = new lz3(xy3Var.getClass(), str, objArr);
    }

    @Override // defpackage.vy3
    public final int a() {
        return (this.b.d & 1) == 1 ? 1 : 2;
    }

    @Override // defpackage.vy3
    public final boolean b() {
        return (this.b.d & 2) == 2;
    }

    @Override // defpackage.vy3
    public final xy3 c() {
        return this.a;
    }
}
