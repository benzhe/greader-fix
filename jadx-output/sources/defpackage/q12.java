package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class q12 implements wh1 {
    public final sk2 a;
    public final vi0 b;
    public final boolean c;
    public qa1 d = null;

    public q12(sk2 sk2Var, vi0 vi0Var, boolean z) {
        this.a = sk2Var;
        this.b = vi0Var;
        this.c = z;
    }

    @Override // defpackage.wh1
    public final void a(boolean z, Context context) throws vh1 {
        try {
            if (!(this.c ? this.b.Q6(new y20(context)) : this.b.i6(new y20(context)))) {
                throw new vh1("Adapter failed to show.");
            }
            if (this.d == null) {
                return;
            }
            if (((Boolean) os3.j.f.a(y40.b1)).booleanValue() || this.a.S != 2) {
                return;
            }
            this.d.onAdImpression();
        } catch (Throwable th) {
            throw new vh1(th);
        }
    }
}
