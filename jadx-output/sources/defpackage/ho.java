package defpackage;

import android.os.Bundle;
import com.android.billingclient.api.SkuDetails;
import java.util.Arrays;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class ho implements Callable<Bundle> {
    public final /* synthetic */ hn e;
    public final /* synthetic */ SkuDetails f;
    public final /* synthetic */ fn g;

    public ho(fn fnVar, hn hnVar, SkuDetails skuDetails) {
        this.g = fnVar;
        this.e = hnVar;
        this.f = skuDetails;
    }

    @Override // java.util.concurrent.Callable
    public final Bundle call() throws Exception {
        fn fnVar = this.g;
        return fnVar.f.B4(5, fnVar.e.getPackageName(), Arrays.asList(this.e.c), this.f.b(), "subs", null);
    }
}
