package defpackage;

/* loaded from: classes.dex */
public final class ka5 extends ja5 {
    public final float a;

    public ka5(float f) {
        this.a = f - 0.001f;
    }

    @Override // defpackage.ja5
    public boolean b() {
        return true;
    }

    @Override // defpackage.ja5
    public void c(float f, float f2, float f3, sa5 sa5Var) {
        float fSqrt = (float) ((Math.sqrt(2.0d) * this.a) / 2.0d);
        float fSqrt2 = (float) Math.sqrt(Math.pow(this.a, 2.0d) - Math.pow(fSqrt, 2.0d));
        sa5Var.e(f2 - fSqrt, ((float) (-((Math.sqrt(2.0d) * this.a) - this.a))) + fSqrt2);
        sa5Var.d(f2, (float) (-((Math.sqrt(2.0d) * this.a) - this.a)));
        sa5Var.d(f2 + fSqrt, ((float) (-((Math.sqrt(2.0d) * this.a) - this.a))) + fSqrt2);
    }
}
