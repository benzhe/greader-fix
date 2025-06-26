package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public final class e21 implements ua1 {
    public final zl2 e;

    public e21(zl2 zl2Var) {
        this.e = zl2Var;
    }

    @Override // defpackage.ua1
    public final void r(Context context) throws pl2 {
        try {
            zl2 zl2Var = this.e;
            Objects.requireNonNull(zl2Var);
            try {
                zl2Var.a.pause();
            } catch (Throwable th) {
                throw new pl2(th);
            }
        } catch (pl2 e) {
            is0.zzd("Cannot invoke onPause for the mediation adapter.", e);
        }
    }

    @Override // defpackage.ua1
    public final void s(Context context) throws pl2 {
        try {
            zl2 zl2Var = this.e;
            Objects.requireNonNull(zl2Var);
            try {
                zl2Var.a.destroy();
            } catch (Throwable th) {
                throw new pl2(th);
            }
        } catch (pl2 e) {
            is0.zzd("Cannot invoke onDestroy for the mediation adapter.", e);
        }
    }

    @Override // defpackage.ua1
    public final void x(Context context) {
        pl2 pl2Var;
        try {
            zl2 zl2Var = this.e;
            Objects.requireNonNull(zl2Var);
            try {
                zl2Var.a.resume();
                if (context != null) {
                    zl2 zl2Var2 = this.e;
                    Objects.requireNonNull(zl2Var2);
                    try {
                        zl2Var2.a.R3(new y20(context));
                    } finally {
                    }
                }
            } finally {
            }
        } catch (pl2 e) {
            is0.zzd("Cannot invoke onResume for the mediation adapter.", e);
        }
    }
}
