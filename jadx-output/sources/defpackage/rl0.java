package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateImpressionUrlsCallback;
import java.util.List;

/* loaded from: classes.dex */
public final class rl0 extends ol0 {
    public final /* synthetic */ UpdateImpressionUrlsCallback e;

    public rl0(UpdateImpressionUrlsCallback updateImpressionUrlsCallback) {
        this.e = updateImpressionUrlsCallback;
    }

    @Override // defpackage.kl0
    public final void onError(String str) {
        this.e.onFailure(str);
    }

    @Override // defpackage.kl0
    public final void w3(List<Uri> list) {
        this.e.onSuccess(list);
    }
}
