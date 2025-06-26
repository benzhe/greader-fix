package defpackage;

import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import java.util.List;

/* loaded from: classes.dex */
public final class f21 implements rv2<String> {
    public final /* synthetic */ g21 a;

    public f21(g21 g21Var) {
        this.a = g21Var;
    }

    @Override // defpackage.rv2
    public final void a(Throwable th) {
        g21 g21Var = this.a;
        rl2 rl2Var = g21Var.k;
        hq2 hq2Var = g21Var.j;
        hl2 hl2Var = g21Var.h;
        sk2 sk2Var = g21Var.i;
        List<String> listB = hq2Var.b(hl2Var, sk2Var, false, "", "failure_click_attok", sk2Var.c);
        zzr.zzkv();
        rl2Var.a(listB, zzj.zzbd(this.a.e) ? 2 : 1);
    }

    @Override // defpackage.rv2
    public final /* synthetic */ void onSuccess(String str) {
        String str2 = str;
        g21 g21Var = this.a;
        rl2 rl2Var = g21Var.k;
        hq2 hq2Var = g21Var.j;
        hl2 hl2Var = g21Var.h;
        sk2 sk2Var = g21Var.i;
        List<String> listB = hq2Var.b(hl2Var, sk2Var, false, "", str2, sk2Var.c);
        zzr.zzkv();
        rl2Var.a(listB, zzj.zzbd(this.a.e) ? 2 : 1);
    }
}
