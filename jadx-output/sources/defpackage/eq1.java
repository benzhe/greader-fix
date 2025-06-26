package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class eq1 implements ua1 {
    public final xw0 e;

    public eq1(xw0 xw0Var) {
        this.e = ((Boolean) os3.j.f.a(y40.w0)).booleanValue() ? xw0Var : null;
    }

    @Override // defpackage.ua1
    public final void r(Context context) {
        xw0 xw0Var = this.e;
        if (xw0Var != null) {
            xw0Var.onPause();
        }
    }

    @Override // defpackage.ua1
    public final void s(Context context) {
        xw0 xw0Var = this.e;
        if (xw0Var != null) {
            xw0Var.destroy();
        }
    }

    @Override // defpackage.ua1
    public final void x(Context context) {
        xw0 xw0Var = this.e;
        if (xw0Var != null) {
            xw0Var.onResume();
        }
    }
}
