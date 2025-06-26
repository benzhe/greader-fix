package defpackage;

/* loaded from: classes.dex */
public final class qf0 {
    public yd0 a;
    public aw2<we0> b;

    public qf0(yd0 yd0Var) {
        this.a = yd0Var;
    }

    public final void a() {
        if (this.b == null) {
            final xs0 xs0Var = new xs0();
            this.b = xs0Var;
            this.a.b().c(new bt0(xs0Var) { // from class: pf0
                public final xs0 a;

                {
                    this.a = xs0Var;
                }

                @Override // defpackage.bt0
                public final void zzg(Object obj) {
                    this.a.a((we0) obj);
                }
            }, new zs0(xs0Var) { // from class: sf0
                public final xs0 a;

                {
                    this.a = xs0Var;
                }

                @Override // defpackage.zs0
                public final void run() {
                    this.a.b(new af0("Cannot get Javascript Engine"));
                }
            });
        }
    }
}
