package defpackage;

import android.os.Bundle;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class co implements Callable<Void> {
    public final /* synthetic */ cn e;
    public final /* synthetic */ dn f;
    public final /* synthetic */ fn g;

    public co(fn fnVar, cn cnVar, dn dnVar) {
        this.g = fnVar;
        this.e = cnVar;
        this.f = dnVar;
    }

    @Override // java.util.concurrent.Callable
    public final Void call() throws Exception {
        try {
            fn fnVar = this.g;
            sr4 sr4Var = fnVar.f;
            String packageName = fnVar.e.getPackageName();
            String str = this.e.a;
            String str2 = this.g.b;
            int i = pr4.a;
            Bundle bundle = new Bundle();
            bundle.putString("playBillingLibraryVersion", str2);
            Bundle bundleX0 = sr4Var.x0(9, packageName, str, bundle);
            fn.h(this.g, new bo(this, pr4.d(bundleX0, "BillingClient"), pr4.e(bundleX0, "BillingClient")));
            return null;
        } catch (Exception e) {
            fn.h(this.g, new ao(this, e));
            return null;
        }
    }
}
