package defpackage;

import android.os.Bundle;
import com.google.android.gms.ads.query.QueryInfo;
import com.google.android.gms.ads.query.QueryInfoGenerationCallback;

/* loaded from: classes.dex */
public final class pl0 extends xq0 {
    public final /* synthetic */ QueryInfoGenerationCallback e;

    public pl0(QueryInfoGenerationCallback queryInfoGenerationCallback) {
        this.e = queryInfoGenerationCallback;
    }

    @Override // defpackage.yq0
    public final void V(String str, String str2, Bundle bundle) {
        QueryInfo queryInfo = new QueryInfo(new kv3(str, bundle));
        os3.j.i.put(queryInfo, str2);
        this.e.onSuccess(queryInfo);
    }

    @Override // defpackage.yq0
    public final void l4(String str, String str2) {
        QueryInfo queryInfo = new QueryInfo(new kv3(str, null));
        os3.j.i.put(queryInfo, str2);
        this.e.onSuccess(queryInfo);
    }

    @Override // defpackage.yq0
    public final void onError(String str) {
        this.e.onFailure(str);
    }
}
