package defpackage;

import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzwc;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class wh2<R> implements on2 {
    public final ni2<R> a;
    public final pi2 b;
    public final zzvq c;
    public final String d;
    public final Executor e;
    public final zzwc f;
    public final bn2 g;

    public wh2(ni2<R> ni2Var, pi2 pi2Var, zzvq zzvqVar, String str, Executor executor, zzwc zzwcVar, bn2 bn2Var) {
        this.a = ni2Var;
        this.b = pi2Var;
        this.c = zzvqVar;
        this.d = str;
        this.e = executor;
        this.f = zzwcVar;
        this.g = bn2Var;
    }

    @Override // defpackage.on2
    public final bn2 a() {
        return this.g;
    }

    @Override // defpackage.on2
    public final Executor b() {
        return this.e;
    }

    @Override // defpackage.on2
    public final on2 c() {
        return new wh2(this.a, this.b, this.c, this.d, this.e, this.f, this.g);
    }
}
