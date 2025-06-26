package defpackage;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.R;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import com.google.android.gms.ads.admanager.AppEventListener;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;
import com.google.android.gms.ads.zza;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class bv3 {
    public final eg0 a;
    public final AtomicBoolean b;
    public final VideoController c;
    public final ev3 d;
    public er3 e;
    public AdListener f;
    public AdSize[] g;
    public AppEventListener h;
    public com.google.android.gms.ads.doubleclick.AppEventListener i;
    public it3 j;
    public OnCustomRenderedAdLoadedListener k;
    public VideoOptions l;
    public String m;
    public ViewGroup n;
    public int o;
    public boolean p;
    public OnPaidEventListener q;

    public bv3(ViewGroup viewGroup) {
        this(viewGroup, null, false, nr3.a, 0);
    }

    public static zzvt l(Context context, AdSize[] adSizeArr, int i) {
        for (AdSize adSize : adSizeArr) {
            if (adSize.equals(AdSize.INVALID)) {
                return zzvt.M0();
            }
        }
        zzvt zzvtVar = new zzvt(context, adSizeArr);
        zzvtVar.n = i == 1;
        return zzvtVar;
    }

    public final void a() {
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.destroy();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final AdSize b() {
        zzvt zzvtVarZzkk;
        try {
            it3 it3Var = this.j;
            if (it3Var != null && (zzvtVarZzkk = it3Var.zzkk()) != null) {
                return zza.zza(zzvtVarZzkk.i, zzvtVarZzkk.f, zzvtVarZzkk.e);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        AdSize[] adSizeArr = this.g;
        if (adSizeArr != null) {
            return adSizeArr[0];
        }
        return null;
    }

    public final String c() {
        it3 it3Var;
        if (this.m == null && (it3Var = this.j) != null) {
            try {
                this.m = it3Var.getAdUnitId();
            } catch (RemoteException e) {
                is0.zze("#007 Could not call remote method.", e);
            }
        }
        return this.m;
    }

    public final ResponseInfo d() {
        ru3 ru3VarZzkm = null;
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                ru3VarZzkm = it3Var.zzkm();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    public final boolean e() {
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                return it3Var.isLoading();
            }
            return false;
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final void f() {
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.pause();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void g() {
        if (this.b.getAndSet(true)) {
            return;
        }
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.zzkj();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void h() {
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.resume();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void i(AdListener adListener) {
        this.f = adListener;
        ev3 ev3Var = this.d;
        synchronized (ev3Var.a) {
            ev3Var.b = adListener;
        }
    }

    public final void j(String str) {
        if (this.m != null) {
            throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
        }
        this.m = str;
    }

    public final void k(VideoOptions videoOptions) {
        this.l = videoOptions;
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.zza(videoOptions == null ? null : new zzaaz(videoOptions));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void m(com.google.android.gms.ads.doubleclick.AppEventListener appEventListener) {
        try {
            this.i = appEventListener;
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.zza(appEventListener != null ? new sr3(this.i) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void n(er3 er3Var) {
        try {
            this.e = er3Var;
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.zza(er3Var != null ? new fr3(er3Var) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void o(zu3 zu3Var) {
        try {
            it3 it3Var = this.j;
            if (it3Var == null) {
                if ((this.g == null || this.m == null) && it3Var == null) {
                    throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
                }
                Context context = this.n.getContext();
                zzvt zzvtVarL = l(context, this.g, this.o);
                it3 it3VarB = "search_v2".equals(zzvtVarL.e) ? new hs3(os3.j.b, context, zzvtVarL, this.m).b(context, false) : new zr3(os3.j.b, context, zzvtVarL, this.m, this.a).b(context, false);
                this.j = it3VarB;
                it3VarB.zza(new hr3(this.d));
                if (this.e != null) {
                    this.j.zza(new fr3(this.e));
                }
                if (this.h != null) {
                    this.j.zza(new um3(this.h));
                }
                if (this.i != null) {
                    this.j.zza(new sr3(this.i));
                }
                if (this.k != null) {
                    this.j.zza(new x50(this.k));
                }
                VideoOptions videoOptions = this.l;
                if (videoOptions != null) {
                    this.j.zza(new zzaaz(videoOptions));
                }
                this.j.zza(new c40(this.q));
                this.j.setManualImpressionsEnabled(this.p);
                try {
                    x20 x20VarZzki = this.j.zzki();
                    if (x20VarZzki != null) {
                        this.n.addView((View) y20.l0(x20VarZzki));
                    }
                } catch (RemoteException e) {
                    is0.zze("#007 Could not call remote method.", e);
                }
            }
            if (this.j.zza(nr3.a(this.n.getContext(), zu3Var))) {
                this.a.e = zu3Var.i;
            }
        } catch (RemoteException e2) {
            is0.zze("#007 Could not call remote method.", e2);
        }
    }

    public final void p(AdSize... adSizeArr) {
        this.g = adSizeArr;
        try {
            it3 it3Var = this.j;
            if (it3Var != null) {
                it3Var.zza(l(this.n.getContext(), this.g, this.o));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        this.n.requestLayout();
    }

    public final boolean q(it3 it3Var) {
        if (it3Var == null) {
            return false;
        }
        try {
            x20 x20VarZzki = it3Var.zzki();
            if (x20VarZzki == null || ((View) y20.l0(x20VarZzki)).getParent() != null) {
                return false;
            }
            this.n.addView((View) y20.l0(x20VarZzki));
            this.j = it3Var;
            return true;
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return false;
        }
    }

    public final su3 r() {
        it3 it3Var = this.j;
        if (it3Var == null) {
            return null;
        }
        try {
            return it3Var.getVideoController();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    public bv3(ViewGroup viewGroup, AttributeSet attributeSet, boolean z) {
        this(viewGroup, attributeSet, z, nr3.a, 0);
    }

    public bv3(ViewGroup viewGroup, AttributeSet attributeSet, boolean z, nr3 nr3Var, int i) {
        AdSize[] adSizeArrA;
        zzvt zzvtVarM0;
        this.a = new eg0();
        this.c = new VideoController();
        this.d = new ev3(this);
        this.n = viewGroup;
        this.j = null;
        this.b = new AtomicBoolean(false);
        this.o = i;
        if (attributeSet != null) {
            Context context = viewGroup.getContext();
            try {
                TypedArray typedArrayObtainAttributes = context.getResources().obtainAttributes(attributeSet, R.styleable.AdsAttrs);
                String string = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adSize);
                String string2 = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adSizes);
                boolean z2 = !TextUtils.isEmpty(string);
                boolean z3 = !TextUtils.isEmpty(string2);
                if (z2 && !z3) {
                    adSizeArrA = xr3.a(string);
                } else {
                    if (z2 || !z3) {
                        if (z2) {
                            throw new IllegalArgumentException("Either XML attribute \"adSize\" or XML attribute \"supportedAdSizes\" should be specified, but not both.");
                        }
                        throw new IllegalArgumentException("Required XML attribute \"adSize\" was missing.");
                    }
                    adSizeArrA = xr3.a(string2);
                }
                String string3 = typedArrayObtainAttributes.getString(R.styleable.AdsAttrs_adUnitId);
                if (!TextUtils.isEmpty(string3)) {
                    if (!z && adSizeArrA.length != 1) {
                        throw new IllegalArgumentException("The adSizes XML attribute is only allowed on PublisherAdViews.");
                    }
                    this.g = adSizeArrA;
                    this.m = string3;
                    if (viewGroup.isInEditMode()) {
                        zr0 zr0Var = os3.j.a;
                        AdSize adSize = this.g[0];
                        int i2 = this.o;
                        if (adSize.equals(AdSize.INVALID)) {
                            zzvtVarM0 = zzvt.M0();
                        } else {
                            zzvt zzvtVar = new zzvt(context, adSize);
                            zzvtVar.n = i2 == 1;
                            zzvtVarM0 = zzvtVar;
                        }
                        Objects.requireNonNull(zr0Var);
                        zr0.d(viewGroup, zzvtVarM0, "Ads by Google", -16777216, -1);
                        return;
                    }
                    return;
                }
                throw new IllegalArgumentException("Required XML attribute \"adUnitId\" was missing.");
            } catch (IllegalArgumentException e) {
                zr0 zr0Var2 = os3.j.a;
                zzvt zzvtVar2 = new zzvt(context, AdSize.BANNER);
                String message = e.getMessage();
                String message2 = e.getMessage();
                Objects.requireNonNull(zr0Var2);
                is0.zzez(message2);
                zr0.d(viewGroup, zzvtVar2, message, -65536, -16777216);
            }
        }
    }
}
