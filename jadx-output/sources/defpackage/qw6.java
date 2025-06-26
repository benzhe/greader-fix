package defpackage;

import android.app.Dialog;
import android.os.Bundle;

/* loaded from: classes2.dex */
public class qw6 extends rb {
    @Override // defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        Dialog dialogOnCreateDialog = super.onCreateDialog(bundle);
        dialogOnCreateDialog.getWindow().requestFeature(1);
        return dialogOnCreateDialog;
    }

    @Override // defpackage.rb, androidx.fragment.app.Fragment
    public void onDestroyView() {
        if (getDialog() != null && getRetainInstance()) {
            getDialog().setDismissMessage(null);
        }
        super.onDestroyView();
    }
}
