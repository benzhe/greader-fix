package defpackage;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Canvas;
import android.net.Uri;
import android.os.Build;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.webkit.DownloadListener;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zze;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzae;
import com.google.android.gms.ads.internal.util.zzbg;
import com.google.android.gms.ads.internal.util.zzbz;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zzb;
import com.google.android.gms.ads.internal.zzm;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzbar;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class mx0 extends WebView implements ViewTreeObserver.OnGlobalLayoutListener, DownloadListener, xw0 {
    public static final /* synthetic */ int f0 = 0;
    public int A;
    public boolean B;
    public String C;
    public rx0 D;
    public boolean E;
    public boolean F;
    public j70 G;
    public i70 H;
    public qn3 I;
    public int J;
    public int K;
    public m50 L;
    public m50 M;
    public m50 N;
    public l50 O;
    public int P;
    public int Q;
    public int R;
    public zze S;
    public boolean T;
    public zzbz U;
    public int V;
    public int W;
    public int a0;
    public int b0;
    public Map<String, zv0> c0;
    public final WindowManager d0;
    public final ky0 e;
    public final ep3 e0;
    public final d23 f;
    public final b60 g;
    public final zzbar h;
    public final zzm i;
    public final zzb j;
    public final DisplayMetrics k;
    public final float l;
    public sk2 m;
    public wk2 n;
    public boolean o;
    public boolean p;
    public ww0 q;
    public zze r;
    public x20 s;
    public jy0 t;
    public String u;
    public boolean v;
    public boolean w;
    public boolean x;
    public boolean y;
    public Boolean z;

    public mx0(ky0 ky0Var, jy0 jy0Var, String str, boolean z, d23 d23Var, b60 b60Var, zzbar zzbarVar, o50 o50Var, zzm zzmVar, zzb zzbVar, ep3 ep3Var, sk2 sk2Var, wk2 wk2Var) {
        wk2 wk2Var2;
        String str2;
        super(ky0Var);
        this.o = false;
        this.p = false;
        this.B = true;
        this.C = "";
        this.V = -1;
        this.W = -1;
        this.a0 = -1;
        this.b0 = -1;
        this.e = ky0Var;
        this.t = jy0Var;
        this.u = str;
        this.x = z;
        this.A = -1;
        this.f = d23Var;
        this.g = b60Var;
        this.h = zzbarVar;
        this.i = zzmVar;
        this.j = zzbVar;
        WindowManager windowManager = (WindowManager) getContext().getSystemService("window");
        this.d0 = windowManager;
        zzr.zzkv();
        DisplayMetrics displayMetricsZza = zzj.zza(windowManager);
        this.k = displayMetricsZza;
        this.l = displayMetricsZza.density;
        this.e0 = ep3Var;
        this.m = sk2Var;
        this.n = wk2Var;
        setBackgroundColor(0);
        WebSettings settings = getSettings();
        settings.setAllowFileAccess(false);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e) {
            is0.zzc("Unable to enable Javascript.", e);
        }
        settings.setSavePassword(false);
        settings.setSupportMultipleWindows(true);
        settings.setJavaScriptCanOpenWindowsAutomatically(true);
        settings.setMixedContentMode(2);
        settings.setUserAgentString(zzr.zzkv().zzq(ky0Var, zzbarVar.e));
        zzr.zzkx().zza(getContext(), settings);
        setDownloadListener(this);
        H0();
        addJavascriptInterface(new vx0(this, new ux0(this)), "googleAdsJsInterface");
        removeJavascriptInterface("accessibility");
        removeJavascriptInterface("accessibilityTraversal");
        this.U = new zzbz(this.e.a, this, this, null);
        K0();
        o50 o50Var2 = new o50("make_wv", this.u);
        this.O = new l50(o50Var2);
        synchronized (o50Var2.d) {
            o50Var2.e = o50Var;
        }
        if (((Boolean) os3.j.f.a(y40.l1)).booleanValue() && (wk2Var2 = this.n) != null && (str2 = wk2Var2.b) != null) {
            this.O.b.b("gqi", str2);
        }
        m50 m50VarS2 = c50.S2(this.O.b);
        this.M = m50VarS2;
        this.O.a.put("native:view_create", m50VarS2);
        this.N = null;
        this.L = null;
        zzr.zzkx().zzbh(ky0Var);
        zzr.zzkz().i.incrementAndGet();
    }

    @Override // defpackage.iu0
    public final xt0 A() {
        return null;
    }

    @Override // defpackage.xw0
    public final void A0() {
        c50.w2(this.O.b, this.M, "aeh2");
        HashMap map = new HashMap(1);
        map.put("version", this.h.e);
        x("onhide", map);
    }

    @Override // defpackage.xw0
    public final boolean B(final boolean z, final int i) {
        destroy();
        this.e0.a(new dp3(z, i) { // from class: lx0
            public final boolean a;
            public final int b;

            {
                this.a = z;
                this.b = i;
            }

            /*  JADX ERROR: StackOverflowError in pass: TypeInferenceVisitor
                java.lang.StackOverflowError
                	at jadx.core.dex.nodes.RootNode.resolveClass(RootNode.java:479)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:363)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                	at jadx.core.dex.nodes.utils.TypeUtils.visitSuperTypes(TypeUtils.java:365)
                	at jadx.core.dex.nodes.ClassNode.visitSuperTypes(ClassNode.java:708)
                */
            @Override // defpackage.dp3
            public final void a(yp3.a r6) {
                /*
                    r5 = this;
                    boolean r0 = r5.a
                    int r1 = r5.b
                    qp3$a r2 = defpackage.qp3.A()
                    MessageType extends s63<MessageType, BuilderType> r3 = r2.f
                    qp3 r3 = (defpackage.qp3) r3
                    boolean r3 = r3.z()
                    r4 = 0
                    if (r3 == r0) goto L23
                    boolean r3 = r2.g
                    if (r3 == 0) goto L1c
                    r2.o()
                    r2.g = r4
                L1c:
                    MessageType extends s63<MessageType, BuilderType> r3 = r2.f
                    qp3 r3 = (defpackage.qp3) r3
                    defpackage.qp3.y(r3, r0)
                L23:
                    boolean r0 = r2.g
                    if (r0 == 0) goto L2c
                    r2.o()
                    r2.g = r4
                L2c:
                    MessageType extends s63<MessageType, BuilderType> r0 = r2.f
                    qp3 r0 = (defpackage.qp3) r0
                    defpackage.qp3.x(r0, r1)
                    e83 r0 = r2.j()
                    s63 r0 = (defpackage.s63) r0
                    qp3 r0 = (defpackage.qp3) r0
                    boolean r1 = r6.g
                    if (r1 == 0) goto L44
                    r6.o()
                    r6.g = r4
                L44:
                    MessageType extends s63<MessageType, BuilderType> r6 = r6.f
                    yp3 r6 = (defpackage.yp3) r6
                    defpackage.yp3.z(r6, r0)
                    return
                */
                throw new UnsupportedOperationException("Method not decompiled: defpackage.lx0.a(yp3$a):void");
            }
        });
        this.e0.b(gp3.ANDROID_WEBVIEW_CRASH);
        return true;
    }

    @Override // defpackage.cy0
    public final void B0(boolean z, int i, String str, String str2) {
        ww0 ww0Var = this.q;
        boolean zE0 = ww0Var.e.E0();
        er3 er3Var = (!zE0 || ww0Var.e.c().b()) ? ww0Var.i : null;
        cx0 cx0Var = zE0 ? null : new cx0(ww0Var.e, ww0Var.j);
        ra0 ra0Var = ww0Var.m;
        ta0 ta0Var = ww0Var.n;
        zzx zzxVar = ww0Var.s;
        xw0 xw0Var = ww0Var.e;
        ww0Var.t(new AdOverlayInfoParcel(er3Var, cx0Var, ra0Var, ta0Var, zzxVar, xw0Var, z, i, str, str2, xw0Var.b()));
    }

    @Override // defpackage.iu0
    public final int C() {
        return this.Q;
    }

    @Override // defpackage.xw0
    public final synchronized void C0(zze zzeVar) {
        this.S = zzeVar;
    }

    @Override // defpackage.xw0
    public final synchronized boolean D() {
        return this.B;
    }

    @Override // defpackage.iu0
    public final int D0() {
        return getMeasuredWidth();
    }

    @Override // defpackage.xw0
    public final void E(sk2 sk2Var, wk2 wk2Var) {
        this.m = sk2Var;
        this.n = wk2Var;
    }

    @Override // defpackage.xw0
    public final synchronized boolean E0() {
        return this.x;
    }

    @Override // defpackage.xw0
    public final synchronized void F(String str, String str2, String str3) {
        if (j()) {
            is0.zzez("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, by0.b(str2, by0.a()), "text/html", "UTF-8", str3);
        }
    }

    public final void F0(Boolean bool) {
        synchronized (this) {
            this.z = bool;
        }
        or0 or0VarZzkz = zzr.zzkz();
        synchronized (or0VarZzkz.a) {
            or0VarZzkz.h = bool;
        }
    }

    @Override // defpackage.xw0
    public final void G() {
        this.U.zzaal();
    }

    public final boolean G0() {
        int iG;
        int iG2;
        if (!this.q.C() && !this.q.M()) {
            return false;
        }
        zr0 zr0Var = os3.j.a;
        DisplayMetrics displayMetrics = this.k;
        int iG3 = zr0.g(displayMetrics, displayMetrics.widthPixels);
        zr0 zr0Var2 = os3.j.a;
        DisplayMetrics displayMetrics2 = this.k;
        int iG4 = zr0.g(displayMetrics2, displayMetrics2.heightPixels);
        Activity activity = this.e.a;
        if (activity == null || activity.getWindow() == null) {
            iG = iG3;
            iG2 = iG4;
        } else {
            zzr.zzkv();
            int[] iArrZzf = zzj.zzf(activity);
            zr0 zr0Var3 = os3.j.a;
            iG = zr0.g(this.k, iArrZzf[0]);
            zr0 zr0Var4 = os3.j.a;
            iG2 = zr0.g(this.k, iArrZzf[1]);
        }
        int i = this.W;
        if (i == iG3 && this.V == iG4 && this.a0 == iG && this.b0 == iG2) {
            return false;
        }
        boolean z = (i == iG3 && this.V == iG4) ? false : true;
        this.W = iG3;
        this.V = iG4;
        this.a0 = iG;
        this.b0 = iG2;
        try {
            d0("onScreenInfoChanged", new JSONObject().put("width", iG3).put("height", iG4).put("maxSizeWidth", iG).put("maxSizeHeight", iG2).put("density", this.k.density).put("rotation", this.d0.getDefaultDisplay().getRotation()));
        } catch (JSONException e) {
            is0.zzc("Error occurred while obtaining screen information.", e);
        }
        return z;
    }

    @Override // defpackage.xw0
    public final synchronized void H(i70 i70Var) {
        this.H = i70Var;
    }

    public final synchronized void H0() {
        if (!this.x && !this.t.b()) {
            is0.zzdz("Enabling hardware acceleration on an AdView.");
            I0();
            return;
        }
        is0.zzdz("Enabling hardware acceleration on an overlay.");
        I0();
    }

    @Override // defpackage.xw0
    public final /* synthetic */ hy0 I() {
        return this.q;
    }

    public final synchronized void I0() {
        if (this.y) {
            setLayerType(0, null);
        }
        this.y = false;
    }

    @Override // defpackage.xw0
    public final synchronized void J(jy0 jy0Var) {
        this.t = jy0Var;
        requestLayout();
    }

    public final synchronized void J0() {
        Map<String, zv0> map = this.c0;
        if (map != null) {
            Iterator<zv0> it = map.values().iterator();
            while (it.hasNext()) {
                it.next().release();
            }
        }
        this.c0 = null;
    }

    @Override // defpackage.xw0
    public final synchronized void K(j70 j70Var) {
        this.G = j70Var;
    }

    public final void K0() {
        o50 o50Var;
        l50 l50Var = this.O;
        if (l50Var == null || (o50Var = l50Var.b) == null || zzr.zzkz().e() == null) {
            return;
        }
        zzr.zzkz().e().a.offer(o50Var);
    }

    @Override // defpackage.xw0
    public final synchronized boolean L() {
        return this.J > 0;
    }

    @Override // defpackage.iu0
    public final int M() {
        return this.R;
    }

    public final void M0(boolean z) {
        HashMap map = new HashMap();
        map.put("isVisible", z ? "1" : "0");
        x("onAdVisibilityChanged", map);
    }

    @Override // defpackage.xw0
    public final synchronized void N(boolean z) {
        this.B = z;
    }

    public final synchronized void N0(String str) {
        if (j()) {
            is0.zzez("#004 The webview is destroyed. Ignoring action.");
        } else {
            loadUrl(str);
        }
    }

    @Override // defpackage.iu0
    public final synchronized int O() {
        return this.P;
    }

    public final void O0(String str) {
        Boolean bool;
        Boolean bool2;
        Boolean bool3;
        synchronized (this) {
            bool = this.z;
        }
        if (bool == null) {
            synchronized (this) {
                or0 or0VarZzkz = zzr.zzkz();
                synchronized (or0VarZzkz.a) {
                    bool3 = or0VarZzkz.h;
                }
                this.z = bool3;
                if (bool3 == null) {
                    try {
                        evaluateJavascript("(function(){})()", null);
                        F0(Boolean.TRUE);
                    } catch (IllegalStateException unused) {
                        F0(Boolean.FALSE);
                    }
                }
            }
        }
        synchronized (this) {
            bool2 = this.z;
        }
        if (!bool2.booleanValue()) {
            String strValueOf = String.valueOf(str);
            N0(strValueOf.length() != 0 ? "javascript:".concat(strValueOf) : new String("javascript:"));
            return;
        }
        synchronized (this) {
            if (j()) {
                is0.zzez("#004 The webview is destroyed. Ignoring action.");
            } else {
                evaluateJavascript(str, null);
            }
        }
    }

    @Override // defpackage.xw0
    public final void P() {
        if (this.N == null) {
            m50 m50VarS2 = c50.S2(this.O.b);
            this.N = m50VarS2;
            this.O.a.put("native:view_load", m50VarS2);
        }
    }

    public final synchronized void P0() {
        if (!this.T) {
            this.T = true;
            zzr.zzkz().i.decrementAndGet();
        }
    }

    @Override // defpackage.iu0
    public final void Q() {
        zze zzeVarN0 = n0();
        if (zzeVarN0 != null) {
            zzeVarN0.zzwn();
        }
    }

    @Override // defpackage.iu0
    public final void R(boolean z, long j) {
        HashMap map = new HashMap(2);
        map.put("success", z ? "1" : "0");
        map.put("duration", Long.toString(j));
        x("onCacheAccessComplete", map);
    }

    @Override // defpackage.xw0
    public final synchronized void S(qn3 qn3Var) {
        this.I = qn3Var;
    }

    @Override // defpackage.xw0
    public final WebViewClient T() {
        return this.q;
    }

    @Override // defpackage.iu0
    public final m50 U() {
        return this.M;
    }

    @Override // defpackage.cy0
    public final void V(com.google.android.gms.ads.internal.overlay.zzb zzbVar) {
        this.q.x(zzbVar);
    }

    @Override // defpackage.xw0
    public final synchronized void W(boolean z) {
        boolean z2 = z != this.x;
        this.x = z;
        H0();
        if (z2) {
            if (!((Boolean) os3.j.f.a(y40.J)).booleanValue() || !this.t.b()) {
                try {
                    d0("onStateChanged", new JSONObject().put("state", z ? "expanded" : "default"));
                } catch (JSONException e) {
                    is0.zzc("Error occurred while dispatching state change.", e);
                }
            }
        }
    }

    @Override // defpackage.cy0
    public final void X(zzbg zzbgVar, sy1 sy1Var, ns1 ns1Var, pp2 pp2Var, String str, String str2, int i) {
        ww0 ww0Var = this.q;
        Objects.requireNonNull(ww0Var);
        xw0 xw0Var = ww0Var.e;
        ww0Var.t(new AdOverlayInfoParcel(xw0Var, xw0Var.b(), zzbgVar, sy1Var, ns1Var, pp2Var, str, str2, i));
    }

    @Override // defpackage.xw0
    public final synchronized j70 Y() {
        return this.G;
    }

    @Override // defpackage.zd0
    public final void Z(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        O0(jo.d(jo.x(string, jo.x(str, 3)), str, "(", string, ");"));
    }

    @Override // defpackage.xw0, defpackage.iu0, defpackage.yx0
    public final Activity a() {
        return this.e.a;
    }

    @Override // defpackage.xw0, defpackage.iu0, defpackage.fy0
    public final zzbar b() {
        return this.h;
    }

    @Override // defpackage.xw0
    public final synchronized void b0(zze zzeVar) {
        this.r = zzeVar;
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final synchronized jy0 c() {
        return this.t;
    }

    @Override // defpackage.em3
    public final void c0(fm3 fm3Var) {
        boolean z;
        synchronized (this) {
            z = fm3Var.j;
            this.E = z;
        }
        M0(z);
    }

    @Override // defpackage.zd0
    public final void d(String str) {
        O0(str);
    }

    @Override // defpackage.od0
    public final void d0(String str, JSONObject jSONObject) {
        if (jSONObject == null) {
            jSONObject = new JSONObject();
        }
        String string = jSONObject.toString();
        StringBuilder sb = new StringBuilder();
        sb.append("(window.AFMA_ReceiveMessage || function() {})('");
        sb.append(str);
        sb.append("'");
        sb.append(",");
        sb.append(string);
        sb.append(");");
        String strValueOf = String.valueOf(sb.toString());
        is0.zzdz(strValueOf.length() != 0 ? "Dispatching AFMA event: ".concat(strValueOf) : new String("Dispatching AFMA event: "));
        O0(sb.toString());
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final synchronized void destroy() {
        K0();
        this.U.zzaam();
        zze zzeVar = this.r;
        if (zzeVar != null) {
            zzeVar.close();
            this.r.onDestroy();
            this.r = null;
        }
        this.s = null;
        this.q.d();
        if (this.w) {
            return;
        }
        zzr.zzlr();
        wv0.d(this);
        J0();
        this.w = true;
        zzd.zzed("Initiating WebView self destruct sequence in 3...");
        zzd.zzed("Loading blank page in WebView, 2...");
        synchronized (this) {
            try {
                super.loadUrl("about:blank");
            } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError | UnsatisfiedLinkError e) {
                or0 or0VarZzkz = zzr.zzkz();
                xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AdWebViewImpl.loadUrlUnsafe");
                is0.zzd("Could not call loadUrl. ", e);
            }
        }
    }

    @Override // defpackage.xw0, defpackage.sx0
    public final wk2 e() {
        return this.n;
    }

    @Override // defpackage.xw0
    public final synchronized void e0(boolean z) {
        zze zzeVar = this.r;
        if (zzeVar != null) {
            zzeVar.zza(this.q.C(), z);
        } else {
            this.v = z;
        }
    }

    @Override // android.webkit.WebView
    public final synchronized void evaluateJavascript(String str, ValueCallback<String> valueCallback) {
        if (!j()) {
            super.evaluateJavascript(str, valueCallback);
            return;
        }
        is0.zzfb("#004 The webview is destroyed. Ignoring action.");
        if (valueCallback != null) {
            valueCallback.onReceiveValue(null);
        }
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final synchronized rx0 f() {
        return this.D;
    }

    @Override // defpackage.xw0
    public final synchronized boolean f0() {
        return this.v;
    }

    public final void finalize() throws Throwable {
        try {
            synchronized (this) {
                if (!this.w) {
                    this.q.d();
                    zzr.zzlr();
                    wv0.d(this);
                    J0();
                    P0();
                }
            }
        } finally {
            super.finalize();
        }
    }

    @Override // defpackage.xw0, defpackage.mw0
    public final sk2 g() {
        return this.m;
    }

    @Override // defpackage.xw0
    public final void g0(boolean z) {
        this.q.A = z;
    }

    @Override // defpackage.iu0
    public final synchronized String getRequestId() {
        return this.C;
    }

    @Override // defpackage.xw0, defpackage.ey0
    public final View getView() {
        return this;
    }

    @Override // defpackage.xw0
    public final WebView getWebView() {
        return this;
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final synchronized void h(String str, zv0 zv0Var) {
        if (this.c0 == null) {
            this.c0 = new HashMap();
        }
        this.c0.put(str, zv0Var);
    }

    @Override // defpackage.xw0
    public final void h0() {
        if (this.L == null) {
            c50.w2(this.O.b, this.M, "aes2");
            m50 m50VarS2 = c50.S2(this.O.b);
            this.L = m50VarS2;
            this.O.a.put("native:view_show", m50VarS2);
        }
        HashMap map = new HashMap(1);
        map.put("version", this.h.e);
        x("onshow", map);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final l50 i() {
        return this.O;
    }

    @Override // defpackage.xw0
    public final Context i0() {
        return this.e.c;
    }

    @Override // defpackage.xw0
    public final synchronized boolean j() {
        return this.w;
    }

    @Override // defpackage.xw0
    public final void j0() {
        setBackgroundColor(0);
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final synchronized void k(rx0 rx0Var) {
        if (this.D != null) {
            is0.zzex("Attempt to create multiple AdWebViewVideoControllers.");
        } else {
            this.D = rx0Var;
        }
    }

    @Override // defpackage.xw0
    public final void k0(String str, ud0<kb0<? super xw0>> ud0Var) {
        ww0 ww0Var = this.q;
        if (ww0Var != null) {
            synchronized (ww0Var.h) {
                List<kb0<? super xw0>> list = ww0Var.g.get(str);
                if (list == null) {
                    return;
                }
                ArrayList arrayList = new ArrayList();
                for (kb0<? super xw0> kb0Var : list) {
                    if ((kb0Var instanceof wd0) && ((wd0) kb0Var).a.equals(ud0Var.a)) {
                        arrayList.add(kb0Var);
                    }
                }
                list.removeAll(arrayList);
            }
        }
    }

    @Override // defpackage.xw0, defpackage.dy0
    public final d23 l() {
        return this.f;
    }

    @Override // defpackage.iu0
    public final void l0(boolean z) {
        this.q.o = z;
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final synchronized void loadData(String str, String str2, String str3) {
        if (j()) {
            is0.zzez("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadData(str, str2, str3);
        }
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final synchronized void loadDataWithBaseURL(String str, String str2, String str3, String str4, String str5) {
        if (j()) {
            is0.zzez("#004 The webview is destroyed. Ignoring action.");
        } else {
            super.loadDataWithBaseURL(str, str2, str3, str4, str5);
        }
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final synchronized void loadUrl(String str) {
        if (j()) {
            is0.zzez("#004 The webview is destroyed. Ignoring action.");
            return;
        }
        try {
            super.loadUrl(str);
        } catch (Exception | IncompatibleClassChangeError | NoClassDefFoundError e) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AdWebViewImpl.loadUrl");
            is0.zzd("Could not call loadUrl. ", e);
        }
    }

    @Override // defpackage.xw0, defpackage.iu0
    public final zzb m() {
        return this.j;
    }

    @Override // defpackage.cy0
    public final void m0(boolean z, int i, String str) {
        ww0 ww0Var = this.q;
        boolean zE0 = ww0Var.e.E0();
        er3 er3Var = (!zE0 || ww0Var.e.c().b()) ? ww0Var.i : null;
        cx0 cx0Var = zE0 ? null : new cx0(ww0Var.e, ww0Var.j);
        ra0 ra0Var = ww0Var.m;
        ta0 ta0Var = ww0Var.n;
        zzx zzxVar = ww0Var.s;
        xw0 xw0Var = ww0Var.e;
        ww0Var.t(new AdOverlayInfoParcel(er3Var, cx0Var, ra0Var, ta0Var, zzxVar, xw0Var, z, i, str, xw0Var.b()));
    }

    @Override // defpackage.xw0
    public final void n(String str, kb0<? super xw0> kb0Var) {
        ww0 ww0Var = this.q;
        if (ww0Var != null) {
            synchronized (ww0Var.h) {
                List<kb0<? super xw0>> list = ww0Var.g.get(str);
                if (list != null) {
                    list.remove(kb0Var);
                }
            }
        }
    }

    @Override // defpackage.xw0
    public final synchronized zze n0() {
        return this.r;
    }

    @Override // defpackage.xw0
    public final void o(String str, kb0<? super xw0> kb0Var) {
        ww0 ww0Var = this.q;
        if (ww0Var != null) {
            ww0Var.o(str, kb0Var);
        }
    }

    @Override // defpackage.er3
    public final void onAdClicked() {
        ww0 ww0Var = this.q;
        if (ww0Var != null) {
            ww0Var.onAdClicked();
        }
    }

    @Override // android.webkit.WebView, android.view.ViewGroup, android.view.View
    public final synchronized void onAttachedToWindow() {
        super.onAttachedToWindow();
        if (!j()) {
            this.U.onAttachedToWindow();
        }
        boolean z = this.E;
        ww0 ww0Var = this.q;
        if (ww0Var != null && ww0Var.M()) {
            if (!this.F) {
                synchronized (this.q.h) {
                }
                synchronized (this.q.h) {
                }
                this.F = true;
            }
            G0();
            z = true;
        }
        M0(z);
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onDetachedFromWindow() {
        ww0 ww0Var;
        synchronized (this) {
            if (!j()) {
                this.U.onDetachedFromWindow();
            }
            super.onDetachedFromWindow();
            if (this.F && (ww0Var = this.q) != null && ww0Var.M() && getViewTreeObserver() != null && getViewTreeObserver().isAlive()) {
                synchronized (this.q.h) {
                }
                synchronized (this.q.h) {
                }
                this.F = false;
            }
        }
        M0(false);
    }

    @Override // android.webkit.DownloadListener
    public final void onDownloadStart(String str, String str2, String str3, String str4, long j) {
        try {
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(Uri.parse(str), str4);
            zzr.zzkv();
            zzj.zza(getContext(), intent);
        } catch (ActivityNotFoundException unused) {
            StringBuilder sb = new StringBuilder(String.valueOf(str4).length() + String.valueOf(str).length() + 51);
            sb.append("Couldn't find an Activity to view url/mimetype: ");
            sb.append(str);
            sb.append(" / ");
            sb.append(str4);
            is0.zzdz(sb.toString());
        }
    }

    @Override // android.webkit.WebView, android.view.View
    public final void onDraw(Canvas canvas) {
        if (j()) {
            return;
        }
        if (Build.VERSION.SDK_INT == 21 && canvas.isHardwareAccelerated() && !isAttachedToWindow()) {
            return;
        }
        super.onDraw(canvas);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onGenericMotionEvent(MotionEvent motionEvent) {
        float axisValue = motionEvent.getAxisValue(9);
        float axisValue2 = motionEvent.getAxisValue(10);
        if (motionEvent.getActionMasked() == 8) {
            if (axisValue > 0.0f && !canScrollVertically(-1)) {
                return false;
            }
            if (axisValue < 0.0f && !canScrollVertically(1)) {
                return false;
            }
            if (axisValue2 > 0.0f && !canScrollHorizontally(-1)) {
                return false;
            }
            if (axisValue2 < 0.0f && !canScrollHorizontally(1)) {
                return false;
            }
        }
        return super.onGenericMotionEvent(motionEvent);
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final void onGlobalLayout() {
        boolean zG0 = G0();
        zze zzeVarN0 = n0();
        if (zzeVarN0 == null || !zG0) {
            return;
        }
        zzeVarN0.zzwl();
    }

    @Override // android.webkit.WebView, android.widget.AbsoluteLayout, android.view.View
    public final synchronized void onMeasure(int i, int i2) {
        if (j()) {
            setMeasuredDimension(0, 0);
            return;
        }
        if (!isInEditMode() && !this.x) {
            jy0 jy0Var = this.t;
            int i3 = jy0Var.a;
            if (!(i3 == 0)) {
                if (i3 == 5) {
                    super.onMeasure(i, i2);
                    return;
                }
                if (i3 == 4) {
                    if (((Boolean) os3.j.f.a(y40.a2)).booleanValue()) {
                        super.onMeasure(i, i2);
                        return;
                    }
                    rx0 rx0VarF = f();
                    float aspectRatio = rx0VarF != null ? rx0VarF.getAspectRatio() : 0.0f;
                    if (aspectRatio == 0.0f) {
                        super.onMeasure(i, i2);
                        return;
                    }
                    int size = View.MeasureSpec.getSize(i);
                    int size2 = View.MeasureSpec.getSize(i2);
                    int i4 = (int) (size2 * aspectRatio);
                    int i5 = (int) (size / aspectRatio);
                    if (size2 == 0 && i5 != 0) {
                        i4 = (int) (i5 * aspectRatio);
                        size2 = i5;
                    } else if (size == 0 && i4 != 0) {
                        i5 = (int) (i4 / aspectRatio);
                        size = i4;
                    }
                    setMeasuredDimension(Math.min(i4, size), Math.min(i5, size2));
                    return;
                }
                if (i3 == 2) {
                    if (((Boolean) os3.j.f.a(y40.c2)).booleanValue()) {
                        super.onMeasure(i, i2);
                        return;
                    }
                    px0 px0Var = new px0(this);
                    ww0 ww0Var = this.q;
                    if (ww0Var != null) {
                        ww0Var.o("/contentHeight", px0Var);
                    }
                    O0("(function() {  var height = -1;  if (document.body) {    height = document.body.offsetHeight;  } else if (document.documentElement) {    height = document.documentElement.offsetHeight;  }  var url = 'gmsg://mobileads.google.com/contentHeight?';  url += 'height=' + height;  try {    window.googleAdsJsInterface.notify(url);  } catch (e) {    var frame = document.getElementById('afma-notify-fluid');    if (!frame) {      frame = document.createElement('IFRAME');      frame.id = 'afma-notify-fluid';      frame.style.display = 'none';      var body = document.body || document.documentElement;      body.appendChild(frame);    }    frame.src = url;  }})();");
                    float f = this.k.density;
                    int size3 = View.MeasureSpec.getSize(i);
                    int i6 = this.K;
                    setMeasuredDimension(size3, i6 != -1 ? (int) (i6 * f) : View.MeasureSpec.getSize(i2));
                    return;
                }
                if (jy0Var.b()) {
                    DisplayMetrics displayMetrics = this.k;
                    setMeasuredDimension(displayMetrics.widthPixels, displayMetrics.heightPixels);
                    return;
                }
                int mode = View.MeasureSpec.getMode(i);
                int size4 = View.MeasureSpec.getSize(i);
                int mode2 = View.MeasureSpec.getMode(i2);
                int size5 = View.MeasureSpec.getSize(i2);
                int i7 = (mode == Integer.MIN_VALUE || mode == 1073741824) ? size4 : Integer.MAX_VALUE;
                int i8 = (mode2 == Integer.MIN_VALUE || mode2 == 1073741824) ? size5 : Integer.MAX_VALUE;
                jy0 jy0Var2 = this.t;
                boolean z = jy0Var2.c > i7 || jy0Var2.b > i8;
                if (((Boolean) os3.j.f.a(y40.c3)).booleanValue()) {
                    jy0 jy0Var3 = this.t;
                    float f2 = jy0Var3.c;
                    float f3 = this.l;
                    boolean z2 = f2 / f3 <= ((float) i7) / f3 && ((float) jy0Var3.b) / f3 <= ((float) i8) / f3;
                    if (z) {
                        z = z2;
                    }
                }
                if (z) {
                    float f4 = this.t.c;
                    float f5 = this.l;
                    StringBuilder sb = new StringBuilder(103);
                    sb.append("Not enough space to show ad. Needs ");
                    sb.append((int) (f4 / f5));
                    sb.append("x");
                    sb.append((int) (r2.b / f5));
                    sb.append(" dp, but only has ");
                    sb.append((int) (size4 / f5));
                    sb.append("x");
                    sb.append((int) (size5 / f5));
                    sb.append(" dp.");
                    is0.zzez(sb.toString());
                    if (getVisibility() != 8) {
                        setVisibility(4);
                    }
                    setMeasuredDimension(0, 0);
                    if (!this.o) {
                        this.e0.b(gp3.BANNER_SIZE_INVALID);
                        this.o = true;
                        return;
                    }
                } else {
                    if (getVisibility() != 8) {
                        setVisibility(0);
                    }
                    if (!this.p) {
                        this.e0.b(gp3.BANNER_SIZE_VALID);
                        this.p = true;
                    }
                    jy0 jy0Var4 = this.t;
                    setMeasuredDimension(jy0Var4.c, jy0Var4.b);
                }
                return;
            }
        }
        super.onMeasure(i, i2);
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final void onPause() {
        if (j()) {
            return;
        }
        try {
            super.onPause();
        } catch (Exception e) {
            is0.zzc("Could not pause webview.", e);
        }
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final void onResume() {
        if (j()) {
            return;
        }
        try {
            super.onResume();
        } catch (Exception e) {
            is0.zzc("Could not resume webview.", e);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0022  */
    @Override // android.webkit.WebView, android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean onTouchEvent(android.view.MotionEvent r7) {
        /*
            r6 = this;
            ww0 r0 = r6.q
            boolean r0 = r0.M()
            if (r0 == 0) goto L22
            ww0 r0 = r6.q
            java.lang.Object r1 = r0.h
            monitor-enter(r1)
            boolean r0 = r0.r     // Catch: java.lang.Throwable -> L1f
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            if (r0 != 0) goto L22
            monitor-enter(r6)
            j70 r0 = r6.G     // Catch: java.lang.Throwable -> L1c
            if (r0 == 0) goto L1a
            r0.b0(r7)     // Catch: java.lang.Throwable -> L1c
        L1a:
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L1c
            goto L68
        L1c:
            r7 = move-exception
            monitor-exit(r6)     // Catch: java.lang.Throwable -> L1c
            throw r7
        L1f:
            r7 = move-exception
            monitor-exit(r1)     // Catch: java.lang.Throwable -> L1f
            throw r7
        L22:
            d23 r0 = r6.f
            if (r0 == 0) goto L2b
            ws2 r0 = r0.b
            r0.zza(r7)
        L2b:
            b60 r0 = r6.g
            if (r0 == 0) goto L68
            java.util.Objects.requireNonNull(r0)
            int r1 = r7.getAction()
            r2 = 1
            if (r1 != r2) goto L4e
            long r1 = r7.getEventTime()
            android.view.MotionEvent r3 = r0.a
            long r3 = r3.getEventTime()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L4e
            android.view.MotionEvent r1 = android.view.MotionEvent.obtain(r7)
            r0.a = r1
            goto L68
        L4e:
            int r1 = r7.getAction()
            if (r1 != 0) goto L68
            long r1 = r7.getEventTime()
            android.view.MotionEvent r3 = r0.b
            long r3 = r3.getEventTime()
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 <= 0) goto L68
            android.view.MotionEvent r1 = android.view.MotionEvent.obtain(r7)
            r0.b = r1
        L68:
            boolean r0 = r6.j()
            if (r0 == 0) goto L70
            r7 = 0
            return r7
        L70:
            boolean r7 = super.onTouchEvent(r7)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mx0.onTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // defpackage.xw0
    public final synchronized void p(boolean z) {
        zze zzeVar;
        int i = this.J + (z ? 1 : -1);
        this.J = i;
        if (i <= 0 && (zzeVar = this.r) != null) {
            zzeVar.zzwo();
        }
    }

    @Override // defpackage.xw0
    public final void p0() {
        zzd.zzed("Cannot add text view to inner AdWebView");
    }

    @Override // defpackage.xw0
    public final boolean q() {
        return false;
    }

    @Override // defpackage.iu0
    public final void q0(int i) {
        this.R = i;
    }

    @Override // defpackage.iu0
    public final synchronized void r(int i) {
        this.P = i;
    }

    @Override // defpackage.xw0
    public final synchronized x20 r0() {
        return this.s;
    }

    @Override // defpackage.iu0
    public final synchronized void s() {
        i70 i70Var = this.H;
        if (i70Var != null) {
            final un1 un1Var = (un1) i70Var;
            Objects.requireNonNull(un1Var);
            zzj.zzegq.post(new Runnable(un1Var) { // from class: xn1
                public final un1 e;

                {
                    this.e = un1Var;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    un1 un1Var2 = this.e;
                    Objects.requireNonNull(un1Var2);
                    try {
                        un1Var2.destroy();
                    } catch (RemoteException e) {
                        is0.zze("#007 Could not call remote method.", e);
                    }
                }
            });
        }
    }

    @Override // defpackage.iu0
    public final int s0() {
        return getMeasuredHeight();
    }

    @Override // android.view.View, defpackage.xw0
    public final void setOnClickListener(View.OnClickListener onClickListener) {
        new WeakReference(onClickListener);
        super.setOnClickListener(onClickListener);
    }

    @Override // defpackage.xw0
    public final synchronized void setRequestedOrientation(int i) {
        this.A = i;
        zze zzeVar = this.r;
        if (zzeVar != null) {
            zzeVar.setRequestedOrientation(i);
        }
    }

    @Override // android.webkit.WebView, defpackage.xw0
    public final void setWebViewClient(WebViewClient webViewClient) {
        super.setWebViewClient(webViewClient);
        if (webViewClient instanceof ww0) {
            this.q = (ww0) webViewClient;
        }
    }

    @Override // android.webkit.WebView
    public final void stopLoading() {
        if (j()) {
            return;
        }
        try {
            super.stopLoading();
        } catch (Exception e) {
            is0.zzc("Could not stop loading webview.", e);
        }
    }

    @Override // defpackage.cy0
    public final void t(boolean z, int i) {
        ww0 ww0Var = this.q;
        er3 er3Var = (!ww0Var.e.E0() || ww0Var.e.c().b()) ? ww0Var.i : null;
        zzp zzpVar = ww0Var.j;
        zzx zzxVar = ww0Var.s;
        xw0 xw0Var = ww0Var.e;
        ww0Var.t(new AdOverlayInfoParcel(er3Var, zzpVar, zzxVar, xw0Var, z, i, xw0Var.b()));
    }

    @Override // defpackage.iu0
    public final synchronized String t0() {
        wk2 wk2Var = this.n;
        if (wk2Var == null) {
            return null;
        }
        return wk2Var.b;
    }

    @Override // defpackage.xw0
    public final void u() {
        HashMap map = new HashMap(3);
        map.put("app_muted", String.valueOf(zzr.zzla().zzrh()));
        map.put("app_volume", String.valueOf(zzr.zzla().zzrg()));
        map.put("device_volume", String.valueOf(zzae.zzbj(getContext())));
        x("volume", map);
    }

    @Override // defpackage.xw0
    public final synchronized void u0(x20 x20Var) {
        this.s = x20Var;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x000b A[Catch: all -> 0x0010, TRY_LEAVE, TryCatch #0 {, blocks: (B:5:0x0004, B:6:0x0007, B:8:0x000b), top: B:14:0x0004 }] */
    @Override // defpackage.xw0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized void v(boolean r2) {
        /*
            r1 = this;
            monitor-enter(r1)
            if (r2 == 0) goto L7
            r0 = 0
            r1.setBackgroundColor(r0)     // Catch: java.lang.Throwable -> L10
        L7:
            com.google.android.gms.ads.internal.overlay.zze r0 = r1.r     // Catch: java.lang.Throwable -> L10
            if (r0 == 0) goto Le
            r0.zzac(r2)     // Catch: java.lang.Throwable -> L10
        Le:
            monitor-exit(r1)
            return
        L10:
            r2 = move-exception
            monitor-exit(r1)
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.mx0.v(boolean):void");
    }

    @Override // defpackage.xw0
    public final void v0(Context context) {
        this.e.setBaseContext(context);
        this.U.zzj(this.e.a);
    }

    @Override // defpackage.xw0
    public final synchronized void w() {
        zzd.zzed("Destroying WebView!");
        P0();
        zzj.zzegq.post(new nx0(this));
    }

    @Override // defpackage.xw0
    public final void w0(int i) {
        if (i == 0) {
            c50.w2(this.O.b, this.M, "aebb2");
        }
        c50.w2(this.O.b, this.M, "aeh2");
        o50 o50Var = this.O.b;
        if (o50Var != null) {
            o50Var.b("close_type", String.valueOf(i));
        }
        HashMap map = new HashMap(2);
        map.put("closetype", String.valueOf(i));
        map.put("version", this.h.e);
        x("onhide", map);
    }

    @Override // defpackage.od0
    public final void x(String str, Map<String, ?> map) {
        try {
            d0(str, zzr.zzkv().zzj(map));
        } catch (JSONException unused) {
            is0.zzez("Could not convert parameters to JSON.");
        }
    }

    @Override // defpackage.iu0
    public final synchronized zv0 x0(String str) {
        Map<String, zv0> map = this.c0;
        if (map == null) {
            return null;
        }
        return map.get(str);
    }

    @Override // defpackage.xw0
    public final synchronized String y() {
        return this.u;
    }

    @Override // defpackage.xw0
    public final synchronized zze y0() {
        return this.S;
    }

    @Override // defpackage.iu0
    public final void z(int i) {
        this.Q = i;
    }

    @Override // defpackage.xw0
    public final synchronized qn3 z0() {
        return this.I;
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final synchronized void zzkr() {
        zzm zzmVar = this.i;
        if (zzmVar != null) {
            zzmVar.zzkr();
        }
    }

    @Override // com.google.android.gms.ads.internal.zzm
    public final synchronized void zzks() {
        zzm zzmVar = this.i;
        if (zzmVar != null) {
            zzmVar.zzks();
        }
    }
}
