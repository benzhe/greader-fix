package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class vg1 implements cb3<View> {
    public final rg1 a;

    public vg1(rg1 rg1Var) {
        this.a = rg1Var;
    }

    @Override // defpackage.mb3
    public final Object get() {
        xw0 xw0Var = this.a.b;
        if (xw0Var == null) {
            return null;
        }
        return xw0Var.getWebView();
    }
}
