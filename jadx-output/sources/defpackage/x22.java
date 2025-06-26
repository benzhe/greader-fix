package defpackage;

import com.google.android.gms.internal.ads.zzaqr;

/* loaded from: classes.dex */
public final class x22 {
    public final vl2 a;
    public final hq1 b;
    public final ns1 c;
    public final pp2 d;

    public x22(vl2 vl2Var, hq1 hq1Var, ns1 ns1Var, pp2 pp2Var) {
        this.a = vl2Var;
        this.b = hq1Var;
        this.c = ns1Var;
        this.d = pp2Var;
    }

    public final void a(wk2 wk2Var, sk2 sk2Var, int i, oz1 oz1Var, long j) {
        if (((Boolean) os3.j.f.a(y40.e5)).booleanValue()) {
            qp2 qp2VarC = qp2.c("adapter_status");
            qp2VarC.b(wk2Var);
            qp2VarC.a.put("aai", sk2Var.v);
            qp2VarC.a.put("adapter_l", String.valueOf(j));
            qp2VarC.a.put("sc", Integer.toString(i));
            if (oz1Var != null) {
                qp2VarC.a.put("arec", Integer.toString(oz1Var.f.e));
                String strA = this.a.a(oz1Var.getMessage());
                if (strA != null) {
                    qp2VarC.a.put("areec", strA);
                }
            }
            iq1 iq1VarA = this.b.a(sk2Var.s);
            if (iq1VarA != null) {
                qp2VarC.a.put("ancn", iq1VarA.a);
                zzaqr zzaqrVar = iq1VarA.b;
                if (zzaqrVar != null) {
                    qp2VarC.a.put("adapter_v", zzaqrVar.toString());
                }
                zzaqr zzaqrVar2 = iq1VarA.c;
                if (zzaqrVar2 != null) {
                    qp2VarC.a.put("adapter_sv", zzaqrVar2.toString());
                }
            }
            this.d.b(qp2VarC);
            return;
        }
        ms1 ms1VarA = this.c.a();
        ms1VarA.a.put("gqi", wk2Var.b);
        ms1VarA.a.put("aai", sk2Var.v);
        ms1VarA.a.put("action", "adapter_status");
        ms1VarA.a.put("adapter_l", String.valueOf(j));
        ms1VarA.a.put("sc", Integer.toString(i));
        if (oz1Var != null) {
            ms1VarA.a.put("arec", Integer.toString(oz1Var.f.e));
            String strA2 = this.a.a(oz1Var.getMessage());
            if (strA2 != null) {
                ms1VarA.a.put("areec", strA2);
            }
        }
        iq1 iq1VarA2 = this.b.a(sk2Var.s);
        if (iq1VarA2 != null) {
            ms1VarA.a.put("ancn", iq1VarA2.a);
            zzaqr zzaqrVar3 = iq1VarA2.b;
            if (zzaqrVar3 != null) {
                ms1VarA.a.put("adapter_v", zzaqrVar3.toString());
            }
            zzaqr zzaqrVar4 = iq1VarA2.c;
            if (zzaqrVar4 != null) {
                ms1VarA.a.put("adapter_sv", zzaqrVar4.toString());
            }
        }
        ms1VarA.b();
    }
}
