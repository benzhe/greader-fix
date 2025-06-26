package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class nb2 implements nd2<Bundle> {
    public final qk2 a;

    public nb2(qk2 qk2Var) {
        this.a = qk2Var;
    }

    @Override // defpackage.nd2
    public final void b(Bundle bundle) {
        boolean z;
        boolean z2;
        Bundle bundle2 = bundle;
        qk2 qk2Var = this.a;
        if (qk2Var != null) {
            synchronized (qk2Var.b) {
                qk2Var.a();
                z = true;
                z2 = qk2Var.c == 2;
            }
            bundle2.putBoolean("render_in_browser", z2);
            qk2 qk2Var2 = this.a;
            synchronized (qk2Var2.b) {
                qk2Var2.a();
                if (qk2Var2.c != 3) {
                    z = false;
                }
            }
            bundle2.putBoolean("disable_ml", z);
        }
    }
}
