package defpackage;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* loaded from: classes.dex */
public final class su1 implements cb3<PackageInfo> {
    public final mb3<Context> a;
    public final mb3<ApplicationInfo> b;

    public su1(mb3<Context> mb3Var, mb3<ApplicationInfo> mb3Var2) {
        this.a = mb3Var;
        this.b = mb3Var2;
    }

    @Override // defpackage.mb3
    public final Object get() {
        try {
            return i20.a(this.a.get()).b(this.b.get().packageName, 0);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }
}
