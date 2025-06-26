package defpackage;

/* loaded from: classes.dex */
public final class ma5 extends ja5 {
    public final ja5 a;
    public final float b;

    public ma5(ja5 ja5Var, float f) {
        this.a = ja5Var;
        this.b = f;
    }

    @Override // defpackage.ja5
    public boolean b() {
        return this.a.b();
    }

    @Override // defpackage.ja5
    public void c(float f, float f2, float f3, sa5 sa5Var) {
        this.a.c(f, f2 - this.b, f3, sa5Var);
    }
}
