package defpackage;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzbh;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzvq;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class e22 implements sz1<kj1, zl2, g12> {
    public final Context a;
    public final ji1 b;
    public final Executor c;

    public e22(Context context, ji1 ji1Var, Executor executor) {
        this.a = context;
        this.b = ji1Var;
        this.c = executor;
    }

    public static boolean c(hl2 hl2Var, int i) {
        return hl2Var.a.a.g.contains(Integer.toString(i));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0264  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x02ae  */
    @Override // defpackage.sz1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.kj1 a(defpackage.hl2 r40, defpackage.sk2 r41, defpackage.mz1 r42) throws defpackage.pl2, defpackage.z22 {
        /*
            Method dump skipped, instructions count: 734
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.e22.a(hl2, sk2, mz1):java.lang.Object");
    }

    @Override // defpackage.sz1
    public final void b(hl2 hl2Var, sk2 sk2Var, mz1<zl2, g12> mz1Var) throws pl2, IOException {
        zl2 zl2Var = mz1Var.b;
        Context context = this.a;
        zzvq zzvqVar = hl2Var.a.a.d;
        String string = sk2Var.u.toString();
        String strZza = zzbh.zza(sk2Var.r);
        ng0 ng0Var = (ng0) mz1Var.c;
        ll2 ll2Var = hl2Var.a.a;
        zzaei zzaeiVar = ll2Var.i;
        ArrayList<String> arrayList = ll2Var.g;
        Objects.requireNonNull(zl2Var);
        try {
            zl2Var.a.j1(new y20(context), zzvqVar, string, strZza, ng0Var, zzaeiVar, arrayList);
        } catch (Throwable th) {
            throw new pl2(th);
        }
    }
}
