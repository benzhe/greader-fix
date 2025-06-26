package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.GradientDrawable;
import android.os.RemoteException;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.google.android.gms.ads.impl.R;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbft;
import defpackage.bi;
import defpackage.d23;
import defpackage.fm3;
import defpackage.hy0;
import defpackage.i70;
import defpackage.j70;
import defpackage.jx0;
import defpackage.jy0;
import defpackage.kb0;
import defpackage.l50;
import defpackage.m50;
import defpackage.ms2;
import defpackage.mx0;
import defpackage.ns1;
import defpackage.os3;
import defpackage.pp2;
import defpackage.qn3;
import defpackage.rx0;
import defpackage.sk2;
import defpackage.sy1;
import defpackage.ud0;
import defpackage.wk2;
import defpackage.x20;
import defpackage.xt0;
import defpackage.xw0;
import defpackage.y40;
import defpackage.zv0;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicBoolean;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class zzbft extends FrameLayout implements xw0 {
    public static final /* synthetic */ int h = 0;
    public final xw0 e;
    public final xt0 f;
    public final AtomicBoolean g;

    public zzbft(xw0 xw0Var) {
        super(xw0Var.getContext());
        this.g = new AtomicBoolean();
        this.e = xw0Var;
        mx0 mx0Var = (mx0) xw0Var;
        this.f = new xt0(mx0Var.e.c, this, this);
        addView(mx0Var);
    }

    @Override // defpackage.iu0
    public final xt0 A() {
        return this.f;
    }

    @Override // defpackage.xw0
    public final void A0() {
        this.e.A0();
    }

    @Override // defpackage.xw0
    public final boolean B(boolean z, int i) {
        if (!this.g.compareAndSet(false, true)) {
            return true;
        }
        if (((Boolean) os3.j.f.a(y40.u0)).booleanValue()) {
            return false;
        }
        if (this.e.getParent() instanceof ViewGroup) {
            ((ViewGroup) this.e.getParent()).removeView(this.e.getView());
        }
        return this.e.B(z, i);
    }

    @Override // defpackage.cy0
    public final void B0(boolean z, int i, String str, String str2) {
        this.e.B0(z, i, str, str2);
    }

    @Override // defpackage.iu0
    public final int C() {
        return this.e.C();
    }

    @Override // defpackage.xw0
    public final void C0(zze zzeVar) {
        this.e.C0(zzeVar);
    }

    @Override // defpackage.xw0
    public final boolean D() {
        return this.e.D();
    }

    @Override // defpackage.iu0
    public final int D0() {
        return getMeasuredWidth();
    }

    @Override // defpackage.xw0
    public final void E(sk2 sk2Var, wk2 wk2Var) {
        this.e.E(sk2Var, wk2Var);
    }

    @Override // defpackage.xw0
    public final boolean E0() {
        return this.e.E0();
    }

    @Override // defpackage.xw0
    public final void F(String str, String str2, String str3) {
        this.e.F(str, str2, str3);
    }

    @Override // defpackage.xw0
    public final void G() {
        this.e.G();
    }

    @Override // defpackage.xw0
    public final void H(i70 i70Var) {
        this.e.H(i70Var);
    }

    @Override // defpackage.xw0
    public final hy0 I() {
        return this.e.I();
    }

    @Override // defpackage.xw0
    public final void J(jy0 jy0Var) {
        this.e.J(jy0Var);
    }

    @Override // defpackage.xw0
    public final void K(j70 j70Var) {
        this.e.K(j70Var);
    }

    @Override // defpackage.xw0
    public final boolean L() {
        return this.e.L();
    }

    @Override // defpackage.iu0
    public final int M() {
        return this.e.M();
    }

    @Override // defpackage.xw0
    public final void N(boolean z) {
        this.e.N(z);
    }

    @Override // defpackage.iu0
    public final int O() {
        return this.e.O();
    }

    @Override // defpackage.xw0
    public final void P() {
        this.e.P();
    }

    @Override // defpackage.iu0
    public final void Q() {
        this.e.Q();
    }

    @Override // defpackage.iu0
    public final void R(boolean z, long j) {
        this.e.R(z, j);
    }

    @Override // defpackage.xw0
    public final void S(qn3 qn3Var) {
        this.e.S(qn3Var);
    }

    @Override // defpackage.xw0
    public final WebViewClient T() {
        return this.e.T();
    }

    @Override // defpackage.iu0
    public final m50 U() {
        return this.e.U();
    }

    @Override // defpackage.cy0
    public final void V(zzb zzbVar) {
        this.e.V(zzbVar);
    }

    @Override // defpackage.xw0
    public final void W(boolean z) {
        this.e.W(z);
    }

    @Override // defpackage.cy0
    public final void X(zzbg zzbgVar, sy1 sy1Var, ns1 ns1Var, pp2 pp2Var, String str, String str2, int i) {
        this.e.X(zzbgVar, sy1Var, ns1Var, pp2Var, str, str2, i);
    }

    @Override // defpackage.xw0
    public final j70 Y() {
        return this.e.Y();
    }

    @Override // defpackage.zd0
    public final void Z(String str, JSONObject jSONObject) {
        this.e.Z(str, jSONObject);
    }

    @Override // defpackage.xw0, defpackage.iu0, defpackage.yx0
    public final Activity a() {
        return this.e.a();
    }

    @Override // defpackage.xw0, defpackage.iu0, defpackage.fy0
    public final zzbar b() {
        return this.e.b();
    }

    @Override // defpackage.xw0
    public final void b0(zze zzeVar) {
        this.e.b0(zzeVar);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final jy0 c() {
        return this.e.c();
    }

    @Override // defpackage.em3
    public final void c0(fm3 fm3Var) {
        this.e.c0(fm3Var);
    }

    @Override // defpackage.zd0
    public final void d(String str) {
        this.e.d(str);
    }

    @Override // defpackage.od0
    public final void d0(String str, JSONObject jSONObject) {
        this.e.d0(str, jSONObject);
    }

    @Override // defpackage.xw0
    public final void destroy() {
        final x20 x20VarR0 = r0();
        if (x20VarR0 == null) {
            this.e.destroy();
            return;
        }
        ms2 ms2Var = zzj.zzegq;
        ms2Var.post(new Runnable(x20VarR0) { // from class: kx0
            public final x20 e;

            {
                this.e = x20VarR0;
            }

            @Override // java.lang.Runnable
            public final void run() {
                x20 x20Var = this.e;
                int i = zzbft.h;
                rk0 rk0VarZzlk = zzr.zzlk();
                Objects.requireNonNull(rk0VarZzlk);
                synchronized (rk0.b) {
                    if (((Boolean) os3.j.f.a(y40.T2)).booleanValue() && rk0.c) {
                        try {
                            rk0VarZzlk.a.l5(x20Var);
                        } catch (RemoteException | NullPointerException e) {
                            is0.zze("#007 Could not call remote method.", e);
                        }
                    }
                }
            }
        });
        ms2Var.postDelayed(new jx0(this), ((Integer) os3.j.f.a(y40.U2)).intValue());
    }

    @Override // defpackage.xw0, defpackage.sx0
    public final wk2 e() {
        return this.e.e();
    }

    @Override // defpackage.xw0
    public final void e0(boolean z) {
        this.e.e0(z);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final rx0 f() {
        return this.e.f();
    }

    @Override // defpackage.xw0
    public final boolean f0() {
        return this.e.f0();
    }

    @Override // defpackage.xw0, defpackage.mw0
    public final sk2 g() {
        return this.e.g();
    }

    @Override // defpackage.xw0
    public final void g0(boolean z) {
        this.e.g0(z);
    }

    @Override // defpackage.iu0
    public final String getRequestId() {
        return this.e.getRequestId();
    }

    @Override // defpackage.xw0, defpackage.ey0
    public final View getView() {
        return this;
    }

    @Override // defpackage.xw0
    public final WebView getWebView() {
        return this.e.getWebView();
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final void h(String str, zv0 zv0Var) {
        this.e.h(str, zv0Var);
    }

    @Override // defpackage.xw0
    public final void h0() {
        this.e.h0();
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final l50 i() {
        return this.e.i();
    }

    @Override // defpackage.xw0
    public final Context i0() {
        return this.e.i0();
    }

    @Override // defpackage.xw0
    public final boolean j() {
        return this.e.j();
    }

    @Override // defpackage.xw0
    public final void j0() {
        setBackgroundColor(0);
        this.e.setBackgroundColor(0);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final void k(rx0 rx0Var) {
        this.e.k(rx0Var);
    }

    @Override // defpackage.xw0
    public final void k0(String str, ud0<kb0<? super xw0>> ud0Var) {
        this.e.k0(str, ud0Var);
    }

    @Override // defpackage.xw0, defpackage.dy0
    public final d23 l() {
        return this.e.l();
    }

    @Override // defpackage.iu0
    public final void l0(boolean z) {
        this.e.l0(z);
    }

    @Override // defpackage.xw0
    public final void loadData(String str, String str2, String str3) {
        this.e.loadData(str, str2, str3);
    }

    @Override // defpackage.xw0
    public final void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        this.e.loadDataWithBaseURL(str, str2, str3, str4, str5);
    }

    @Override // defpackage.xw0
    public final void loadUrl(String str) {
        this.e.loadUrl(str);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final com.google.android.gms.ads.internal.zzb m() {
        return this.e.m();
    }

    @Override // defpackage.cy0
    public final void m0(boolean z, int i, String str) {
        this.e.m0(z, i, str);
    }

    @Override // defpackage.xw0
    public final void n(String str, kb0<? super xw0> kb0Var) {
        this.e.n(str, kb0Var);
    }

    @Override // defpackage.xw0
    public final zze n0() {
        return this.e.n0();
    }

    @Override // defpackage.xw0
    public final void o(String str, kb0<? super xw0> kb0Var) {
        this.e.o(str, kb0Var);
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        xw0 xw0Var = this.e;
        if (xw0Var != null) {
            xw0Var.onAdClicked();
        }
    }

    @Override // defpackage.xw0
    public final void onPause() {
        zzbbz zzbbzVar;
        xt0 xt0Var = this.f;
        Objects.requireNonNull(xt0Var);
        bi.f("onPause must be called from the UI thread.");
        zzbcb zzbcbVar = xt0Var.d;
        if (zzbcbVar != null && (zzbbzVar = zzbcbVar.j) != null) {
            zzbbzVar.e();
        }
        this.e.onPause();
    }

    @Override // defpackage.xw0
    public final void onResume() {
        this.e.onResume();
    }

    @Override // defpackage.xw0
    public final void p(boolean z) {
        this.e.p(z);
    }

    @Override // defpackage.xw0
    public final void p0() {
        TextView textView = new TextView(getContext());
        Resources resourcesA = zzr.zzkz().a();
        textView.setText(resourcesA != null ? resourcesA.getString(R.string.s7) : "Test Ad");
        textView.setTextSize(15.0f);
        textView.setTextColor(-1);
        textView.setPadding(5, 0, 5, 0);
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setShape(0);
        gradientDrawable.setColor(-12303292);
        gradientDrawable.setCornerRadius(8.0f);
        textView.setBackground(gradientDrawable);
        addView(textView, new FrameLayout.LayoutParams(-2, -2, 49));
        bringChildToFront(textView);
    }

    @Override // defpackage.xw0
    public final boolean q() {
        return this.g.get();
    }

    @Override // defpackage.iu0
    public final void q0(int i) {
        this.e.q0(i);
    }

    @Override // defpackage.iu0
    public final void r(int i) {
        this.e.r(i);
    }

    @Override // defpackage.xw0
    public final x20 r0() {
        return this.e.r0();
    }

    @Override // defpackage.iu0
    public final void s() {
        this.e.s();
    }

    @Override // defpackage.iu0
    public final int s0() {
        return getMeasuredHeight();
    }

    @Override // android.view.View, defpackage.xw0
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        this.e.setOnClickListener(onClickListener);
    }

    @Override // android.view.View, defpackage.xw0
    public final void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.e.setOnTouchListener(onTouchListener);
    }

    @Override // defpackage.xw0
    public final void setRequestedOrientation(int i) {
        this.e.setRequestedOrientation(i);
    }

    @Override // defpackage.xw0
    public final void setWebChromeClient(WebChromeClient webChromeClient) {
        this.e.setWebChromeClient(webChromeClient);
    }

    @Override // defpackage.xw0
    public final void setWebViewClient(WebViewClient webViewClient) {
        this.e.setWebViewClient(webViewClient);
    }

    @Override // defpackage.cy0
    public final void t(boolean z, int i) {
        this.e.t(z, i);
    }

    @Override // defpackage.iu0
    public final String t0() {
        return this.e.t0();
    }

    @Override // defpackage.xw0
    public final void u() {
        this.e.u();
    }

    @Override // defpackage.xw0
    public final void u0(x20 x20Var) {
        this.e.u0(x20Var);
    }

    @Override // defpackage.xw0
    public final void v(boolean z) {
        this.e.v(z);
    }

    @Override // defpackage.xw0
    public final void v0(Context context) {
        this.e.v0(context);
    }

    @Override // defpackage.xw0
    public final void w() {
        xt0 xt0Var = this.f;
        Objects.requireNonNull(xt0Var);
        bi.f("onDestroy must be called from the UI thread.");
        zzbcb zzbcbVar = xt0Var.d;
        if (zzbcbVar != null) {
            zzbcbVar.h.a();
            zzbbz zzbbzVar = zzbcbVar.j;
            if (zzbbzVar != null) {
                zzbbzVar.j();
            }
            zzbcbVar.f();
            xt0Var.c.removeView(xt0Var.d);
            xt0Var.d = null;
        }
        this.e.w();
    }

    @Override // defpackage.xw0
    public final void w0(int i) {
        this.e.w0(i);
    }

    @Override // defpackage.od0
    public final void x(String str, Map<String, ?> map) {
        this.e.x(str, map);
    }

    @Override // defpackage.iu0
    public final zv0 x0(String str) {
        return this.e.x0(str);
    }

    @Override // defpackage.xw0
    public final String y() {
        return this.e.y();
    }

    @Override // defpackage.xw0
    public final zze y0() {
        return this.e.y0();
    }

    @Override // defpackage.iu0
    public final void z(int i) {
        this.e.z(i);
    }

    @Override // defpackage.xw0
    public final qn3 z0() {
        return this.e.z0();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzkr() {
        this.e.zzkr();
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final void zzks() {
        this.e.zzks();
    }
}
