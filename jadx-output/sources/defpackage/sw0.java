package defpackage;

import android.content.DialogInterface;
import android.webkit.JsPromptResult;

/* loaded from: classes.dex */
public final class sw0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsPromptResult e;

    public sw0(JsPromptResult jsPromptResult) {
        this.e = jsPromptResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.e.cancel();
    }
}
