package defpackage;

import com.google.android.gms.ads.internal.util.zzf;
import com.google.android.gms.ads.internal.zzr;

/* loaded from: classes.dex */
public final class kx1 implements df1 {
    public final String g;
    public final pp2 h;
    public boolean e = false;
    public boolean f = false;
    public final zzf i = zzr.zzkz().f();

    public kx1(String str, pp2 pp2Var) {
        this.g = str;
        this.h = pp2Var;
    }

    @Override // defpackage.df1
    public final synchronized void A() {
        if (!this.f) {
            this.h.b(a("init_finished"));
            this.f = true;
        }
    }

    public final qp2 a(String str) {
        String str2 = this.i.zzzn() ? "" : this.g;
        qp2 qp2VarC = qp2.c(str);
        qp2VarC.a.put("tms", Long.toString(zzr.zzlc().b(), 10));
        qp2VarC.a.put("tid", str2);
        return qp2VarC;
    }

    @Override // defpackage.df1
    public final void m0(String str) {
        pp2 pp2Var = this.h;
        qp2 qp2VarA = a("adapter_init_started");
        qp2VarA.a.put("ancn", str);
        pp2Var.b(qp2VarA);
    }

    @Override // defpackage.df1
    public final void r(String str, String str2) {
        pp2 pp2Var = this.h;
        qp2 qp2VarA = a("adapter_init_finished");
        qp2VarA.a.put("ancn", str);
        qp2VarA.a.put("rqe", str2);
        pp2Var.b(qp2VarA);
    }

    @Override // defpackage.df1
    public final synchronized void s() {
        if (!this.e) {
            this.h.b(a("init_started"));
            this.e = true;
        }
    }

    @Override // defpackage.df1
    public final void s0(String str) {
        pp2 pp2Var = this.h;
        qp2 qp2VarA = a("adapter_init_finished");
        qp2VarA.a.put("ancn", str);
        pp2Var.b(qp2VarA);
    }
}
