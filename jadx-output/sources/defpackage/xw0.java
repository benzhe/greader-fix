package defpackage;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.internal.ads.zzbar;

/* loaded from: classes.dex */
public interface xw0 extends zzm, od0, zd0, iu0, mw0, sx0, yx0, cy0, dy0, ey0, fy0, em3, er3 {
    void A0();

    boolean B(boolean z, int i);

    void C0(zze zzeVar);

    boolean D();

    void E(sk2 sk2Var, wk2 wk2Var);

    boolean E0();

    void F(String str, String str2, String str3);

    void G();

    void H(i70 i70Var);

    hy0 I();

    void J(jy0 jy0Var);

    void K(j70 j70Var);

    boolean L();

    void N(boolean z);

    void P();

    void S(qn3 qn3Var);

    WebViewClient T();

    void W(boolean z);

    j70 Y();

    Activity a();

    zzbar b();

    void b0(zze zzeVar);

    jy0 c();

    void destroy();

    wk2 e();

    void e0(boolean z);

    rx0 f();

    boolean f0();

    sk2 g();

    void g0(boolean z);

    @Override // defpackage.iu0, defpackage.yx0
    Context getContext();

    int getHeight();

    ViewGroup.LayoutParams getLayoutParams();

    void getLocationOnScreen(int[] iArr);

    ViewParent getParent();

    View getView();

    WebView getWebView();

    int getWidth();

    void h(String str, zv0 zv0Var);

    void h0();

    l50 i();

    Context i0();

    boolean j();

    void j0();

    void k(rx0 rx0Var);

    void k0(String str, ud0<kb0<? super xw0>> ud0Var);

    d23 l();

    void loadData(String str, String str2, String str3);

    void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5);

    void loadUrl(String str);

    zzb m();

    void measure(int i, int i2);

    void n(String str, kb0<? super xw0> kb0Var);

    zze n0();

    void o(String str, kb0<? super xw0> kb0Var);

    void onPause();

    void onResume();

    void p(boolean z);

    void p0();

    boolean q();

    x20 r0();

    @Override // defpackage.iu0
    void setBackgroundColor(int i);

    void setOnClickListener(View.OnClickListener onClickListener);

    void setOnTouchListener(View.OnTouchListener onTouchListener);

    void setRequestedOrientation(int i);

    void setWebChromeClient(WebChromeClient webChromeClient);

    void setWebViewClient(WebViewClient webViewClient);

    void u();

    void u0(x20 x20Var);

    void v(boolean z);

    void v0(Context context);

    void w();

    void w0(int i);

    String y();

    zze y0();

    qn3 z0();
}
