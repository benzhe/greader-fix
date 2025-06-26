package defpackage;

/* loaded from: classes.dex */
public final class yl3 implements Runnable {
    public final /* synthetic */ int e;
    public final /* synthetic */ int f;
    public final /* synthetic */ int g;
    public final /* synthetic */ float h;
    public final /* synthetic */ rl3 i;

    public yl3(rl3 rl3Var, int i, int i2, int i3, float f) {
        this.i = rl3Var;
        this.e = i;
        this.f = i2;
        this.g = i3;
        this.h = f;
    }

    @Override // java.lang.Runnable
    public final void run() {
        sl3 sl3Var = this.i.b;
        int i = this.e;
        int i2 = this.f;
        mv0 mv0Var = ((cv0) sl3Var).o;
        if (mv0Var != null) {
            mv0Var.g(i, i2);
        }
    }
}
