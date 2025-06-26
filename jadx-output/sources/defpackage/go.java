package defpackage;

import android.os.Bundle;
import com.android.billingclient.api.SkuDetails;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class go implements Callable<Bundle> {
    public final /* synthetic */ int e;
    public final /* synthetic */ SkuDetails f;
    public final /* synthetic */ String g;
    public final /* synthetic */ Bundle h;
    public final /* synthetic */ fn i;

    public go(fn fnVar, int i, SkuDetails skuDetails, String str, hn hnVar, Bundle bundle) {
        this.i = fnVar;
        this.e = i;
        this.f = skuDetails;
        this.g = str;
        this.h = bundle;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        fn fnVar = this.i;
        return fnVar.f.E4(this.e, fnVar.e.getPackageName(), this.f.b(), this.g, null, this.h);
    }
}
