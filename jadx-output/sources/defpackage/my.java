package defpackage;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;

/* loaded from: classes.dex */
public class my extends rb {
    public Dialog e = null;
    public DialogInterface.OnCancelListener f = null;

    @Override // defpackage.rb, android.content.DialogInterface.OnCancelListener
    public void onCancel(DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        if (this.e == null) {
            setShowsDialog(false);
        }
        return this.e;
    }

    @Override // defpackage.rb
    public void show(wb wbVar, String str) {
        super.show(wbVar, str);
    }
}
