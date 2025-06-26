package defpackage;

import android.os.Bundle;
import com.android.billingclient.api.SkuDetails;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class mn implements Callable<Bundle> {
    public final /* synthetic */ SkuDetails e;
    public final /* synthetic */ String f;
    public final /* synthetic */ fn g;

    public mn(fn fnVar, SkuDetails skuDetails, String str) {
        this.g = fnVar;
        this.e = skuDetails;
        this.f = str;
    }

    @Override // java.util.concurrent.Callable
    public final /* synthetic */ Bundle call() throws Exception {
        fn fnVar = this.g;
        return fnVar.f.R0(3, fnVar.e.getPackageName(), this.e.b(), this.f, null);
    }
}
