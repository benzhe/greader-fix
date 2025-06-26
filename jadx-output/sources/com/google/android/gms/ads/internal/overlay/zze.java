package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.view.Window;
import android.webkit.WebChromeClient;
import android.widget.FrameLayout;
import android.widget.RelativeLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.internal.ads.zzbar;
import defpackage.cz1;
import defpackage.ep3;
import defpackage.er3;
import defpackage.fx0;
import defpackage.gy0;
import defpackage.hy0;
import defpackage.is0;
import defpackage.jy0;
import defpackage.ms2;
import defpackage.os3;
import defpackage.ra0;
import defpackage.ta0;
import defpackage.vv;
import defpackage.wk0;
import defpackage.wv;
import defpackage.ww0;
import defpackage.x20;
import defpackage.xv;
import defpackage.xw0;
import defpackage.y20;
import defpackage.y40;
import java.util.Collections;
import okhttp3.internal.http2.Http2Connection;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class zze extends wk0 implements zzab {
    public static final int y = Color.argb(0, 0, 0, 0);
    public final Activity e;
    public AdOverlayInfoParcel f;
    public xw0 g;
    public zzk h;
    public zzr i;
    public FrameLayout k;
    public WebChromeClient.CustomViewCallback l;
    public vv o;
    public Runnable s;
    public boolean t;
    public boolean u;
    public boolean j = false;
    public boolean m = false;
    public boolean n = false;
    public boolean p = false;
    public zzl q = zzl.BACK_BUTTON;
    public final Object r = new Object();
    public boolean v = false;
    public boolean w = false;
    public boolean x = true;

    public zze(Activity activity) {
        this.e = activity;
    }

    public final void W6(Configuration configuration) {
        com.google.android.gms.ads.internal.zzk zzkVar;
        com.google.android.gms.ads.internal.zzk zzkVar2;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        boolean z = true;
        boolean z2 = false;
        boolean z3 = (adOverlayInfoParcel == null || (zzkVar2 = adOverlayInfoParcel.zzdum) == null || !zzkVar2.zzbpp) ? false : true;
        boolean zZza = com.google.android.gms.ads.internal.zzr.zzkx().zza(this.e, configuration);
        if ((!this.n || z3) && !zZza) {
            AdOverlayInfoParcel adOverlayInfoParcel2 = this.f;
            if (adOverlayInfoParcel2 != null && (zzkVar = adOverlayInfoParcel2.zzdum) != null && zzkVar.zzbpu) {
                z2 = true;
            }
        } else {
            z = false;
        }
        Window window = this.e.getWindow();
        if (((Boolean) os3.j.f.a(y40.J0)).booleanValue()) {
            View decorView = window.getDecorView();
            int i = RecyclerView.a0.FLAG_TMP_DETACHED;
            if (z) {
                i = 5380;
                if (z2) {
                    i = 5894;
                }
            }
            decorView.setSystemUiVisibility(i);
            return;
        }
        if (!z) {
            window.addFlags(RecyclerView.a0.FLAG_MOVED);
            window.clearFlags(1024);
            return;
        }
        window.addFlags(1024);
        window.clearFlags(RecyclerView.a0.FLAG_MOVED);
        if (z2) {
            window.getDecorView().setSystemUiVisibility(4098);
        }
    }

    public final void X6(boolean z) throws JSONException {
        int iIntValue = ((Integer) os3.j.f.a(y40.M2)).intValue();
        zzq zzqVar = new zzq();
        zzqVar.size = 50;
        zzqVar.paddingLeft = z ? iIntValue : 0;
        zzqVar.paddingRight = z ? 0 : iIntValue;
        zzqVar.paddingTop = 0;
        zzqVar.paddingBottom = iIntValue;
        this.i = new zzr(this.e, zzqVar, this);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams.addRule(10);
        layoutParams.addRule(z ? 11 : 9);
        zza(z, this.f.zzduh);
        this.o.addView(this.i, layoutParams);
    }

    public final void Y6(boolean z) throws JSONException, wv {
        if (!this.u) {
            this.e.requestWindowFeature(1);
        }
        Window window = this.e.getWindow();
        if (window == null) {
            throw new wv("Invalid activity, no window available.");
        }
        xw0 xw0Var = this.f.zzdkm;
        hy0 hy0VarI = xw0Var != null ? xw0Var.I() : null;
        boolean z2 = hy0VarI != null && ((ww0) hy0VarI).C();
        this.p = false;
        if (z2) {
            int i = this.f.orientation;
            if (i == 6) {
                this.p = this.e.getResources().getConfiguration().orientation == 1;
            } else if (i == 7) {
                this.p = this.e.getResources().getConfiguration().orientation == 2;
            }
        }
        boolean z3 = this.p;
        StringBuilder sb = new StringBuilder(46);
        sb.append("Delay onShow to next orientation change: ");
        sb.append(z3);
        is0.zzdz(sb.toString());
        setRequestedOrientation(this.f.orientation);
        window.setFlags(Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE, Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE);
        is0.zzdz("Hardware acceleration on the AdActivity window enabled.");
        if (this.n) {
            this.o.setBackgroundColor(y);
        } else {
            this.o.setBackgroundColor(-16777216);
        }
        this.e.setContentView(this.o);
        this.u = true;
        if (z) {
            try {
                com.google.android.gms.ads.internal.zzr.zzkw();
                Activity activity = this.e;
                xw0 xw0Var2 = this.f.zzdkm;
                jy0 jy0VarC = xw0Var2 != null ? xw0Var2.c() : null;
                xw0 xw0Var3 = this.f.zzdkm;
                String strY = xw0Var3 != null ? xw0Var3.y() : null;
                AdOverlayInfoParcel adOverlayInfoParcel = this.f;
                zzbar zzbarVar = adOverlayInfoParcel.zzbpx;
                xw0 xw0Var4 = adOverlayInfoParcel.zzdkm;
                xw0 xw0VarA = fx0.a(activity, jy0VarC, strY, true, z2, null, null, zzbarVar, null, xw0Var4 != null ? xw0Var4.m() : null, new ep3(), null, null);
                this.g = xw0VarA;
                hy0 hy0VarI2 = xw0VarA.I();
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f;
                ra0 ra0Var = adOverlayInfoParcel2.zzdic;
                ta0 ta0Var = adOverlayInfoParcel2.zzdie;
                zzx zzxVar = adOverlayInfoParcel2.zzduj;
                xw0 xw0Var5 = adOverlayInfoParcel2.zzdkm;
                ((ww0) hy0VarI2).z(null, ra0Var, null, ta0Var, zzxVar, true, null, xw0Var5 != null ? ((ww0) xw0Var5.I()).u : null, null, null, null, null, null, null);
                ((ww0) this.g.I()).k = new gy0(this) { // from class: sv
                    public final zze a;

                    {
                        this.a = this;
                    }

                    @Override // defpackage.gy0
                    public final void a(boolean z4) {
                        xw0 xw0Var6 = this.a.g;
                        if (xw0Var6 != null) {
                            xw0Var6.h0();
                        }
                    }
                };
                AdOverlayInfoParcel adOverlayInfoParcel3 = this.f;
                String str = adOverlayInfoParcel3.url;
                if (str != null) {
                    this.g.loadUrl(str);
                } else {
                    String str2 = adOverlayInfoParcel3.zzdui;
                    if (str2 == null) {
                        throw new wv("No URL or HTML to display in ad overlay.");
                    }
                    this.g.loadDataWithBaseURL(adOverlayInfoParcel3.zzdug, str2, "text/html", "UTF-8", null);
                }
                xw0 xw0Var6 = this.f.zzdkm;
                if (xw0Var6 != null) {
                    xw0Var6.C0(this);
                }
            } catch (Exception e) {
                is0.zzc("Error obtaining webview.", e);
                throw new wv("Could not obtain webview for the overlay.");
            }
        } else {
            xw0 xw0Var7 = this.f.zzdkm;
            this.g = xw0Var7;
            xw0Var7.v0(this.e);
        }
        this.g.b0(this);
        xw0 xw0Var8 = this.f.zzdkm;
        if (xw0Var8 != null) {
            x20 x20VarR0 = xw0Var8.r0();
            vv vvVar = this.o;
            if (x20VarR0 != null && vvVar != null) {
                com.google.android.gms.ads.internal.zzr.zzlk().c(x20VarR0, vvVar);
            }
        }
        if (this.f.zzduk != 5) {
            ViewParent parent = this.g.getParent();
            if (parent != null && (parent instanceof ViewGroup)) {
                ((ViewGroup) parent).removeView(this.g.getView());
            }
            if (this.n) {
                this.g.j0();
            }
            this.o.addView(this.g.getView(), -1, -1);
        }
        if (!z && !this.p) {
            this.g.h0();
        }
        AdOverlayInfoParcel adOverlayInfoParcel4 = this.f;
        if (adOverlayInfoParcel4.zzduk == 5) {
            cz1.W6(this.e, this, adOverlayInfoParcel4.zzduo, adOverlayInfoParcel4.zzdun, adOverlayInfoParcel4.zzdje, adOverlayInfoParcel4.zzdjf, adOverlayInfoParcel4.zzbwe, adOverlayInfoParcel4.zzdup);
            return;
        }
        X6(z2);
        if (this.g.f0()) {
            zza(z2, true);
        }
    }

    public final void Z6() {
        if (!this.e.isFinishing() || this.v) {
            return;
        }
        this.v = true;
        if (this.g != null) {
            this.g.w0(this.q.zzwq());
            synchronized (this.r) {
                if (!this.t && this.g.L()) {
                    Runnable runnable = new Runnable(this) { // from class: uv
                        public final zze e;

                        {
                            this.e = this;
                        }

                        @Override // java.lang.Runnable
                        public final void run() {
                            this.e.a7();
                        }
                    };
                    this.s = runnable;
                    zzj.zzegq.postDelayed(runnable, ((Long) os3.j.f.a(y40.G0)).longValue());
                    return;
                }
            }
        }
        a7();
    }

    public final void a7() {
        xw0 xw0Var;
        zzp zzpVar;
        if (this.w) {
            return;
        }
        this.w = true;
        xw0 xw0Var2 = this.g;
        if (xw0Var2 != null) {
            this.o.removeView(xw0Var2.getView());
            zzk zzkVar = this.h;
            if (zzkVar != null) {
                this.g.v0(zzkVar.context);
                this.g.W(false);
                ViewGroup viewGroup = this.h.parent;
                View view = this.g.getView();
                zzk zzkVar2 = this.h;
                viewGroup.addView(view, zzkVar2.index, zzkVar2.zzdtv);
                this.h = null;
            } else if (this.e.getApplicationContext() != null) {
                this.g.v0(this.e.getApplicationContext());
            }
            this.g = null;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzduf) != null) {
            zzpVar.zza(this.q);
        }
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.f;
        if (adOverlayInfoParcel2 == null || (xw0Var = adOverlayInfoParcel2.zzdkm) == null) {
            return;
        }
        x20 x20VarR0 = xw0Var.r0();
        View view2 = this.f.zzdkm.getView();
        if (x20VarR0 == null || view2 == null) {
            return;
        }
        com.google.android.gms.ads.internal.zzr.zzlk().c(x20VarR0, view2);
    }

    public final void close() {
        this.q = zzl.CUSTOM_CLOSE;
        this.e.finish();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel == null || adOverlayInfoParcel.zzduk != 5) {
            return;
        }
        this.e.overridePendingTransition(0, 0);
    }

    @Override // defpackage.xk0
    public final void onActivityResult(int i, int i2, Intent intent) {
    }

    @Override // defpackage.xk0
    public final void onBackPressed() {
        this.q = zzl.BACK_BUTTON;
    }

    @Override // defpackage.xk0
    public void onCreate(Bundle bundle) throws JSONException, wv {
        er3 er3Var;
        this.e.requestWindowFeature(1);
        this.m = bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false);
        try {
            AdOverlayInfoParcel adOverlayInfoParcelZzd = AdOverlayInfoParcel.zzd(this.e.getIntent());
            this.f = adOverlayInfoParcelZzd;
            if (adOverlayInfoParcelZzd == null) {
                throw new wv("Could not get info for ad overlay.");
            }
            if (adOverlayInfoParcelZzd.zzbpx.g > 7500000) {
                this.q = zzl.OTHER;
            }
            if (this.e.getIntent() != null) {
                this.x = this.e.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true);
            }
            AdOverlayInfoParcel adOverlayInfoParcel = this.f;
            com.google.android.gms.ads.internal.zzk zzkVar = adOverlayInfoParcel.zzdum;
            if (zzkVar != null) {
                this.n = zzkVar.zzbpo;
            } else if (adOverlayInfoParcel.zzduk == 5) {
                this.n = true;
            } else {
                this.n = false;
            }
            if (this.n && adOverlayInfoParcel.zzduk != 5 && zzkVar.zzbpt != -1) {
                new xv(this, null).zzyx();
            }
            if (bundle == null) {
                zzp zzpVar = this.f.zzduf;
                if (zzpVar != null && this.x) {
                    zzpVar.zzvz();
                }
                AdOverlayInfoParcel adOverlayInfoParcel2 = this.f;
                if (adOverlayInfoParcel2.zzduk != 1 && (er3Var = adOverlayInfoParcel2.zzchr) != null) {
                    er3Var.onAdClicked();
                }
            }
            Activity activity = this.e;
            AdOverlayInfoParcel adOverlayInfoParcel3 = this.f;
            vv vvVar = new vv(activity, adOverlayInfoParcel3.zzdul, adOverlayInfoParcel3.zzbpx.e, adOverlayInfoParcel3.zzbvf);
            this.o = vvVar;
            vvVar.setId(1000);
            com.google.android.gms.ads.internal.zzr.zzkx().zzi(this.e);
            AdOverlayInfoParcel adOverlayInfoParcel4 = this.f;
            int i = adOverlayInfoParcel4.zzduk;
            if (i == 1) {
                Y6(false);
                return;
            }
            if (i == 2) {
                this.h = new zzk(adOverlayInfoParcel4.zzdkm);
                Y6(false);
            } else if (i == 3) {
                Y6(true);
            } else {
                if (i != 5) {
                    throw new wv("Could not determine ad overlay type.");
                }
                Y6(false);
            }
        } catch (wv e) {
            is0.zzez(e.getMessage());
            this.q = zzl.OTHER;
            this.e.finish();
        }
    }

    @Override // defpackage.xk0
    public final void onDestroy() {
        xw0 xw0Var = this.g;
        if (xw0Var != null) {
            try {
                this.o.removeView(xw0Var.getView());
            } catch (NullPointerException unused) {
            }
        }
        Z6();
    }

    @Override // defpackage.xk0
    public final void onPause() {
        zzp zzpVar;
        zzwf();
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzduf) != null) {
            zzpVar.onPause();
        }
        if (!((Boolean) os3.j.f.a(y40.K2)).booleanValue() && this.g != null && (!this.e.isFinishing() || this.h == null)) {
            this.g.onPause();
        }
        Z6();
    }

    @Override // defpackage.xk0
    public final void onRestart() {
    }

    @Override // defpackage.xk0
    public final void onResume() {
        zzp zzpVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && (zzpVar = adOverlayInfoParcel.zzduf) != null) {
            zzpVar.onResume();
        }
        W6(this.e.getResources().getConfiguration());
        if (((Boolean) os3.j.f.a(y40.K2)).booleanValue()) {
            return;
        }
        xw0 xw0Var = this.g;
        if (xw0Var == null || xw0Var.j()) {
            is0.zzez("The webview does not exist. Ignoring action.");
        } else {
            this.g.onResume();
        }
    }

    @Override // defpackage.xk0
    public final void onSaveInstanceState(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.m);
    }

    @Override // defpackage.xk0
    public final void onStart() {
        if (((Boolean) os3.j.f.a(y40.K2)).booleanValue()) {
            xw0 xw0Var = this.g;
            if (xw0Var == null || xw0Var.j()) {
                is0.zzez("The webview does not exist. Ignoring action.");
            } else {
                this.g.onResume();
            }
        }
    }

    @Override // defpackage.xk0
    public final void onStop() {
        if (((Boolean) os3.j.f.a(y40.K2)).booleanValue() && this.g != null && (!this.e.isFinishing() || this.h == null)) {
            this.g.onPause();
        }
        Z6();
    }

    @Override // defpackage.xk0
    public final void onUserLeaveHint() {
        zzp zzpVar;
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel == null || (zzpVar = adOverlayInfoParcel.zzduf) == null) {
            return;
        }
        zzpVar.onUserLeaveHint();
    }

    public final void setRequestedOrientation(int i) {
        if (this.e.getApplicationInfo().targetSdkVersion >= ((Integer) os3.j.f.a(y40.B3)).intValue()) {
            if (this.e.getApplicationInfo().targetSdkVersion <= ((Integer) os3.j.f.a(y40.C3)).intValue()) {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= ((Integer) os3.j.f.a(y40.D3)).intValue()) {
                    if (i2 <= ((Integer) os3.j.f.a(y40.E3)).intValue()) {
                        return;
                    }
                }
            }
        }
        try {
            this.e.setRequestedOrientation(i);
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzr.zzkz().c(th, "AdOverlay.setRequestedOrientation");
        }
    }

    public final void zza(boolean z, boolean z2) throws JSONException {
        AdOverlayInfoParcel adOverlayInfoParcel;
        com.google.android.gms.ads.internal.zzk zzkVar;
        AdOverlayInfoParcel adOverlayInfoParcel2;
        com.google.android.gms.ads.internal.zzk zzkVar2;
        boolean z3 = true;
        boolean z4 = ((Boolean) os3.j.f.a(y40.H0)).booleanValue() && (adOverlayInfoParcel2 = this.f) != null && (zzkVar2 = adOverlayInfoParcel2.zzdum) != null && zzkVar2.zzbpv;
        boolean z5 = ((Boolean) os3.j.f.a(y40.I0)).booleanValue() && (adOverlayInfoParcel = this.f) != null && (zzkVar = adOverlayInfoParcel.zzdum) != null && zzkVar.zzbpw;
        if (z && z2 && z4 && !z5) {
            xw0 xw0Var = this.g;
            try {
                JSONObject jSONObjectPut = new JSONObject().put("message", "Custom close has been disabled for interstitial ads in this ad slot.").put("action", "useCustomClose");
                if (xw0Var != null) {
                    xw0Var.d0("onError", jSONObjectPut);
                }
            } catch (JSONException e) {
                is0.zzc("Error occurred while dispatching error event.", e);
            }
        }
        zzr zzrVar = this.i;
        if (zzrVar != null) {
            if (!z5 && (!z2 || z4)) {
                z3 = false;
            }
            zzrVar.zzap(z3);
        }
    }

    public final void zzac(boolean z) {
        if (z) {
            this.o.setBackgroundColor(0);
        } else {
            this.o.setBackgroundColor(-16777216);
        }
    }

    @Override // defpackage.xk0
    public final void zzae(x20 x20Var) {
        W6((Configuration) y20.l0(x20Var));
    }

    @Override // defpackage.xk0
    public final void zzdq() {
        this.u = true;
    }

    public final void zzwf() {
        AdOverlayInfoParcel adOverlayInfoParcel = this.f;
        if (adOverlayInfoParcel != null && this.j) {
            setRequestedOrientation(adOverlayInfoParcel.orientation);
        }
        if (this.k != null) {
            this.e.setContentView(this.o);
            this.u = true;
            this.k.removeAllViews();
            this.k = null;
        }
        WebChromeClient.CustomViewCallback customViewCallback = this.l;
        if (customViewCallback != null) {
            customViewCallback.onCustomViewHidden();
            this.l = null;
        }
        this.j = false;
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzab
    public final void zzwg() {
        this.q = zzl.CLOSE_BUTTON;
        this.e.finish();
    }

    @Override // defpackage.xk0
    public final boolean zzwh() {
        this.q = zzl.BACK_BUTTON;
        xw0 xw0Var = this.g;
        if (xw0Var == null) {
            return true;
        }
        boolean zD = xw0Var.D();
        if (!zD) {
            this.g.x("onbackblocked", Collections.emptyMap());
        }
        return zD;
    }

    public final void zzwi() throws JSONException {
        this.o.removeView(this.i);
        X6(true);
    }

    public final void zzwl() {
        if (this.p) {
            this.p = false;
            this.g.h0();
        }
    }

    public final void zzwn() {
        this.o.f = true;
    }

    public final void zzwo() {
        synchronized (this.r) {
            this.t = true;
            Runnable runnable = this.s;
            if (runnable != null) {
                ms2 ms2Var = zzj.zzegq;
                ms2Var.removeCallbacks(runnable);
                ms2Var.post(this.s);
            }
        }
    }

    public final void zza(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        FrameLayout frameLayout = new FrameLayout(this.e);
        this.k = frameLayout;
        frameLayout.setBackgroundColor(-16777216);
        this.k.addView(view, -1, -1);
        this.e.setContentView(this.k);
        this.u = true;
        this.l = customViewCallback;
        this.j = true;
    }
}
