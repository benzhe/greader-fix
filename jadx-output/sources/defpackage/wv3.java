package defpackage;

import android.database.ContentObserver;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class wv3 extends ContentObserver {
    public final /* synthetic */ vv3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public wv3(vv3 vv3Var) {
        super(null);
        this.a = vv3Var;
    }

    @Override // android.database.ContentObserver
    public final void onChange(boolean z) {
        vv3 vv3Var = this.a;
        synchronized (vv3Var.d) {
            vv3Var.e = null;
        }
        vv3 vv3Var2 = this.a;
        synchronized (vv3Var2.f) {
            Iterator<xv3> it = vv3Var2.g.iterator();
            while (it.hasNext()) {
                it.next().j();
            }
        }
    }
}
