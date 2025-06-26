package defpackage;

import android.net.Uri;
import com.google.android.gms.ads.query.UpdateClickUrlCallback;
import java.util.List;

/* loaded from: classes.dex */
public final class ul0 extends ol0 {
    public final /* synthetic */ UpdateClickUrlCallback e;

    public ul0(UpdateClickUrlCallback updateClickUrlCallback) {
        this.e = updateClickUrlCallback;
    }

    @Override // defpackage.kl0
    public final void onError(String str) {
        this.e.onFailure(str);
    }

    @Override // defpackage.kl0
    public final void w3(List<Uri> list) {
        this.e.onSuccess(list.get(0));
    }
}
