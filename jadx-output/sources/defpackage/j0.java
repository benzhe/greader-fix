package defpackage;

import android.app.Dialog;

/* loaded from: classes.dex */
public class j0 extends rb {
    @Override // defpackage.rb
    public void setupDialog(Dialog dialog, int i) {
        if (!(dialog instanceof i0)) {
            super.setupDialog(dialog, i);
            return;
        }
        i0 i0Var = (i0) dialog;
        if (i != 1 && i != 2) {
            if (i != 3) {
                return;
            } else {
                dialog.getWindow().addFlags(24);
            }
        }
        i0Var.c(1);
    }
}
