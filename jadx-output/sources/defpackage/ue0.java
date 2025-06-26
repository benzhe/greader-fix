package defpackage;

/* loaded from: classes.dex */
public final class ue0 implements bt0<pd0> {
    public final /* synthetic */ se0 a;

    public ue0(se0 se0Var) {
        this.a = se0Var;
    }

    @Override // defpackage.bt0
    public final /* synthetic */ void zzg(pd0 pd0Var) {
        final pd0 pd0Var2 = pd0Var;
        ms0.e.execute(new Runnable(this, pd0Var2) { // from class: xe0
            public final ue0 e;
            public final pd0 f;

            {
                this.e = this;
                this.f = pd0Var2;
            }

            @Override // java.lang.Runnable
            public final void run() {
                ue0 ue0Var = this.e;
                pd0 pd0Var3 = this.f;
                ue0Var.a.d.zzg(pd0Var3);
                pd0Var3.destroy();
            }
        });
    }
}
