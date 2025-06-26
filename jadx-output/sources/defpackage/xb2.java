package defpackage;

import android.content.pm.PackageInfo;
import com.google.android.gms.ads.internal.util.zzf;

/* loaded from: classes.dex */
public final class xb2 implements cb3<ub2> {
    public final mb3<ll2> a;
    public final mb3<PackageInfo> b;
    public final mb3<zzf> c;

    public xb2(mb3<zv2> mb3Var, mb3<ll2> mb3Var2, mb3<PackageInfo> mb3Var3, mb3<zzf> mb3Var4) {
        this.a = mb3Var2;
        this.b = mb3Var3;
        this.c = mb3Var4;
    }

    @Override // defpackage.mb3
    public final /* synthetic */ Object get() {
        return new ub2(yn2.a(), this.a.get(), this.b.get(), this.c.get());
    }
}
