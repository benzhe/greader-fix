package defpackage;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;

/* loaded from: classes.dex */
public final class fc2 implements cb3<gc2> {
    public final mb3<ApplicationInfo> a;
    public final mb3<PackageInfo> b;

    public fc2(mb3<ApplicationInfo> mb3Var, mb3<PackageInfo> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        return new gc2(this.a.get(), this.b.get());
    }
}
