package defpackage;

/* loaded from: classes.dex */
public final class ni3 implements Runnable {
    public final /* synthetic */ si3 e;
    public final /* synthetic */ mi3 f;

    public ni3(mi3 mi3Var, si3 si3Var) {
        this.f = mi3Var;
        this.e = si3Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        si3 si3Var = this.e;
        ig3 ig3Var = si3Var.c;
        if (ig3Var != null) {
            ig3Var.release();
            si3Var.c = null;
        }
        int size = this.f.s.size();
        for (int i = 0; i < size; i++) {
            this.f.s.valueAt(i).a();
        }
    }
}
