package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes.dex */
public final class ow0 implements DialogInterface.OnCancelListener {
    public final /* synthetic */ JsResult e;

    public ow0(JsResult jsResult) {
        this.e = jsResult;
    }

    @Override // android.content.DialogInterface.OnCancelListener
    public final void onCancel(DialogInterface dialogInterface) {
        this.e.cancel();
    }
}
