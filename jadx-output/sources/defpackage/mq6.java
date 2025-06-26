package defpackage;

import android.webkit.WebView;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.noinnion.android.greader.ui.item.ItemFragment;

/* loaded from: classes2.dex */
public final class mq6 extends FullScreenContentCallback {
    public final /* synthetic */ oq6 a;

    public mq6(oq6 oq6Var) {
        this.a = oq6Var;
    }

    @Override // com.google.android.gms.ads.FullScreenContentCallback
    public void onAdShowedFullScreenContent() {
        super.onAdShowedFullScreenContent();
        ItemFragment itemFragment = this.a.e;
        int i = ItemFragment.T;
        WebView webViewO = itemFragment.o();
        if (webViewO != null) {
            webViewO.resumeTimers();
        }
    }
}
