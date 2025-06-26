package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes.dex */
public final class tw0 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ JsPromptResult e;

    public tw0(JsPromptResult jsPromptResult) {
        this.e = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.e.cancel();
    }
}
