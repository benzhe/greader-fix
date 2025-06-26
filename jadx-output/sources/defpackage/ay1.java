package defpackage;

import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class ay1 implements cb3<by1> {
    public final mb3<gy1> a;
    public final mb3<zzf> b;

    public ay1(mb3<gy1> mb3Var, mb3<zzf> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new by1(this.a.get(), this.b.get());
    }
}
