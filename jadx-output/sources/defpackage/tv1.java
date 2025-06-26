package defpackage;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzauj;
import com.google.android.gms.internal.ads.zzvq;
import java.util.Objects;

/* loaded from: classes.dex */
public final class tv1 implements sc1 {
    public final Context e;
    public final cq0 f;

    public tv1(Context context, cq0 cq0Var) {
        this.e = context;
        this.f = cq0Var;
    }

    @Override // defpackage.sc1
    public final void M(hl2 hl2Var) {
        if (TextUtils.isEmpty(hl2Var.b.b.d)) {
            return;
        }
        cq0 cq0Var = this.f;
        Context context = this.e;
        zzvq zzvqVar = hl2Var.a.a.d;
        Objects.requireNonNull(cq0Var);
        if (((Boolean) os3.j.f.a(y40.f0)).booleanValue() && cq0Var.h(context) && cq0.i(context)) {
            synchronized (cq0Var.l) {
            }
        }
        this.f.d(this.e, "_aq", hl2Var.b.b.d, null);
    }

    @Override // defpackage.sc1
    public final void t(zzauj zzaujVar) {
    }
}
