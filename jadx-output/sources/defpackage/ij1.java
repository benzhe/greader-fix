package defpackage;

import android.graphics.drawable.Drawable;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class ij1 extends s70 {
    public final wj1 f;
    public x20 g;

    public ij1(wj1 wj1Var) {
        this.f = wj1Var;
    }

    public static float W6(x20 x20Var) {
        Drawable drawable;
        if (x20Var == null || (drawable = (Drawable) y20.l0(x20Var)) == null || drawable.getIntrinsicWidth() == -1 || drawable.getIntrinsicHeight() == -1) {
            return 0.0f;
        }
        return drawable.getIntrinsicWidth() / drawable.getIntrinsicHeight();
    }

    @Override // defpackage.t70
    public final void c1(x20 x20Var) {
        if (((Boolean) os3.j.f.a(y40.X1)).booleanValue()) {
            this.g = x20Var;
        }
    }

    @Override // defpackage.t70
    public final float getAspectRatio() throws RemoteException {
        float f;
        float f2;
        if (!((Boolean) os3.j.f.a(y40.P3)).booleanValue()) {
            return 0.0f;
        }
        wj1 wj1Var = this.f;
        synchronized (wj1Var) {
            f = wj1Var.t;
        }
        if (f != 0.0f) {
            wj1 wj1Var2 = this.f;
            synchronized (wj1Var2) {
                f2 = wj1Var2.t;
            }
            return f2;
        }
        if (this.f.h() != null) {
            try {
                return this.f.h().getAspectRatio();
            } catch (RemoteException e) {
                is0.zzc("Remote exception getting video controller aspect ratio.", e);
                return 0.0f;
            }
        }
        x20 x20Var = this.g;
        if (x20Var != null) {
            return W6(x20Var);
        }
        u70 u70VarL = this.f.l();
        if (u70VarL == null) {
            return 0.0f;
        }
        float width = (u70VarL.getWidth() == -1 || u70VarL.getHeight() == -1) ? 0.0f : u70VarL.getWidth() / u70VarL.getHeight();
        return width != 0.0f ? width : W6(u70VarL.q2());
    }

    @Override // defpackage.t70
    public final float getCurrentTime() throws RemoteException {
        if (((Boolean) os3.j.f.a(y40.Q3)).booleanValue() && this.f.h() != null) {
            return this.f.h().getCurrentTime();
        }
        return 0.0f;
    }

    @Override // defpackage.t70
    public final float getDuration() throws RemoteException {
        if (((Boolean) os3.j.f.a(y40.Q3)).booleanValue() && this.f.h() != null) {
            return this.f.h().getDuration();
        }
        return 0.0f;
    }

    @Override // defpackage.t70
    public final su3 getVideoController() throws RemoteException {
        if (((Boolean) os3.j.f.a(y40.Q3)).booleanValue()) {
            return this.f.h();
        }
        return null;
    }

    @Override // defpackage.t70
    public final boolean hasVideoContent() throws RemoteException {
        return ((Boolean) os3.j.f.a(y40.Q3)).booleanValue() && this.f.h() != null;
    }

    @Override // defpackage.t70
    public final x20 w5() throws RemoteException {
        x20 x20Var = this.g;
        if (x20Var != null) {
            return x20Var;
        }
        u70 u70VarL = this.f.l();
        if (u70VarL == null) {
            return null;
        }
        return u70VarL.q2();
    }
}
