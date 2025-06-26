package defpackage;

import com.google.android.gms.internal.ads.zzavy;

/* loaded from: classes.dex */
public final class bp1 implements zb0 {
    public final db1 e;
    public final zzavy f;
    public final String g;
    public final String h;

    public bp1(db1 db1Var, sk2 sk2Var) {
        this.e = db1Var;
        this.f = sk2Var.l;
        this.g = sk2Var.j;
        this.h = sk2Var.k;
    }

    @Override // defpackage.zb0
    public final void q0() {
        this.e.D0(kb1.a);
    }

    @Override // defpackage.zb0
    public final void x(zzavy zzavyVar) {
        String str;
        int i;
        zzavy zzavyVar2 = this.f;
        if (zzavyVar2 != null) {
            zzavyVar = zzavyVar2;
        }
        if (zzavyVar != null) {
            str = zzavyVar.e;
            i = zzavyVar.f;
        } else {
            str = "";
            i = 1;
        }
        final fn0 fn0Var = new fn0(str, i);
        db1 db1Var = this.e;
        final String str2 = this.g;
        final String str3 = this.h;
        db1Var.D0(new zd1(fn0Var, str2, str3) { // from class: hb1
            public final gn0 a;
            public final String b;
            public final String c;

            {
                this.a = fn0Var;
                this.b = str2;
                this.c = str3;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((ca1) obj).O(this.a, this.b, this.c);
            }
        });
    }

    @Override // defpackage.zb0
    public final void x0() {
        this.e.D0(ib1.a);
    }
}
