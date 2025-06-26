package defpackage;

import android.content.ComponentName;
import java.lang.ref.WeakReference;

/* loaded from: classes.dex */
public final class ob3 extends v3 {
    public WeakReference<nb3> b;

    public ob3(nb3 nb3Var) {
        this.b = new WeakReference<>(nb3Var);
    }

    @Override // android.content.ServiceConnection
    public final void onServiceDisconnected(ComponentName componentName) {
        nb3 nb3Var = this.b.get();
        if (nb3Var != null) {
            nb3Var.a();
        }
    }
}
