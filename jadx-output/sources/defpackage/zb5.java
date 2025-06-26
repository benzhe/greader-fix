package defpackage;

import android.widget.AutoCompleteTextView;

/* loaded from: classes.dex */
public class zb5 implements AutoCompleteTextView.OnDismissListener {
    public final /* synthetic */ wb5 a;

    public zb5(wb5 wb5Var) {
        this.a = wb5Var;
    }

    @Override // android.widget.AutoCompleteTextView.OnDismissListener
    public void onDismiss() {
        wb5 wb5Var = this.a;
        wb5Var.i = true;
        wb5Var.k = System.currentTimeMillis();
        wb5.g(this.a, false);
    }
}
