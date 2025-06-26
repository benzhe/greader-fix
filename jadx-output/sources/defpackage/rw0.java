package defpackage;

import android.content.DialogInterface;
import android.webkit.JsResult;

/* loaded from: classes.dex */
public final class rw0 implements DialogInterface.OnClickListener {
    public final /* synthetic */ JsResult e;

    public rw0(JsResult jsResult) {
        this.e = jsResult;
    }

    @Override // android.content.DialogInterface.OnClickListener
    public final void onClick(DialogInterface dialogInterface, int i) {
        this.e.cancel();
    }
}
