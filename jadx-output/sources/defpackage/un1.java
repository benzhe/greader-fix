package defpackage;

import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import com.google.android.gms.ads.internal.zzr;
import java.util.Collections;

/* loaded from: classes.dex */
public final class un1 extends cd0 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, i70 {
    public View e;
    public su3 f;
    public kj1 g;
    public boolean h = false;
    public boolean i = false;

    public un1(kj1 kj1Var, wj1 wj1Var) {
        this.e = wj1Var.n();
        this.f = wj1Var.h();
        this.g = kj1Var;
        if (wj1Var.o() != null) {
            wj1Var.o().H(this);
        }
    }

    public static void X6(dd0 dd0Var, int i) {
        try {
            dd0Var.X2(i);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // defpackage.zc0
    public final void G4(x20 x20Var) throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        W6(x20Var, new wn1());
    }

    public final void W6(x20 x20Var, dd0 dd0Var) throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        if (this.h) {
            is0.zzex("Instream ad can not be shown after destroy().");
            X6(dd0Var, 2);
            return;
        }
        View view = this.e;
        if (view == null || this.f == null) {
            String str = view == null ? "can not get video view." : "can not get video controller.";
            is0.zzex(str.length() != 0 ? "Instream internal error: ".concat(str) : new String("Instream internal error: "));
            X6(dd0Var, 0);
            return;
        }
        if (this.i) {
            is0.zzex("Instream ad should not be used again.");
            X6(dd0Var, 1);
            return;
        }
        this.i = true;
        Y6();
        ((ViewGroup) y20.l0(x20Var)).addView(this.e, new ViewGroup.LayoutParams(-1, -1));
        zzr.zzls();
        ft0.a(this.e, this);
        zzr.zzls();
        ft0.b(this.e, this);
        Z6();
        try {
            dd0Var.a4();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void Y6() {
        View view = this.e;
        if (view == null) {
            return;
        }
        ViewParent parent = view.getParent();
        if (parent instanceof ViewGroup) {
            ((ViewGroup) parent).removeView(this.e);
        }
    }

    public final void Z6() {
        View view;
        kj1 kj1Var = this.g;
        if (kj1Var == null || (view = this.e) == null) {
            return;
        }
        kj1Var.g(view, Collections.emptyMap(), Collections.emptyMap(), kj1.o(this.e));
    }

    @Override // defpackage.zc0
    public final t70 a0() {
        rj1 rj1Var;
        bi.f("#008 Must be called on the main UI thread.");
        if (this.h) {
            is0.zzex("getVideoController: Instream ad should not be used after destroyed");
            return null;
        }
        kj1 kj1Var = this.g;
        if (kj1Var == null || (rj1Var = kj1Var.z) == null) {
            return null;
        }
        return rj1Var.a();
    }

    @Override // defpackage.zc0
    public final void destroy() throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        Y6();
        kj1 kj1Var = this.g;
        if (kj1Var != null) {
            kj1Var.a();
        }
        this.g = null;
        this.e = null;
        this.f = null;
        this.h = true;
    }

    @Override // defpackage.zc0
    public final su3 getVideoController() throws RemoteException {
        bi.f("#008 Must be called on the main UI thread.");
        if (!this.h) {
            return this.f;
        }
        is0.zzex("getVideoController: Instream ad should not be used after destroyed");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        Z6();
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final void onScrollChanged() {
        Z6();
    }
}
