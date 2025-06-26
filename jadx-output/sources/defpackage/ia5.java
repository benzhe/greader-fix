package defpackage;

/* loaded from: classes.dex */
public class ia5 extends ha5 {
    @Override // defpackage.ha5
    public void a(sa5 sa5Var, float f, float f2, float f3) {
        sa5Var.f(0.0f, f3 * f2, 180.0f, 180.0f - f);
        double d = f3;
        double d2 = f2;
        sa5Var.d((float) (Math.sin(Math.toRadians(f)) * d * d2), (float) (Math.sin(Math.toRadians(90.0f - f)) * d * d2));
    }
}
