package defpackage;

import android.app.Dialog;
import android.os.Bundle;

/* loaded from: classes.dex */
public class p65 extends j0 {
    public final boolean d(boolean z) {
        Dialog dialog = getDialog();
        if (!(dialog instanceof o65)) {
            return false;
        }
        o65 o65Var = (o65) dialog;
        if (o65Var.g == null) {
            o65Var.f();
        }
        boolean z2 = o65Var.g.A;
        return false;
    }

    @Override // defpackage.rb
    public void dismiss() {
        d(false);
        super.dismiss();
    }

    @Override // defpackage.rb
    public void dismissAllowingStateLoss() {
        d(true);
        super.dismissAllowingStateLoss();
    }

    @Override // defpackage.rb
    public Dialog onCreateDialog(Bundle bundle) {
        return new o65(getContext(), getTheme());
    }
}
