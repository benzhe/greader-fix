package defpackage;

import android.net.Uri;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzb;
import com.google.android.gms.ads.internal.overlay.zzo;
import com.google.android.gms.ads.internal.overlay.zzp;
import com.google.android.gms.ads.internal.overlay.zzx;
import com.google.android.gms.ads.internal.util.zzd;
import com.google.android.gms.ads.internal.util.zzj;
import com.google.android.gms.ads.internal.zza;
import com.google.android.gms.ads.internal.zzr;
import com.google.android.gms.internal.ads.zzth;
import com.google.android.gms.internal.ads.zzti;
import java.io.ByteArrayInputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.ws.WebSocketProtocol;

/* loaded from: classes.dex */
public class ww0 extends WebViewClient implements hy0 {
    public boolean A;
    public final HashSet<String> B;
    public View.OnAttachStateChangeListener C;
    public xw0 e;
    public final ep3 f;
    public final HashMap<String, List<kb0<? super xw0>>> g;
    public final Object h;
    public er3 i;
    public zzp j;
    public gy0 k;
    public iy0 l;
    public ra0 m;
    public ta0 n;
    public boolean o;
    public boolean p;
    public boolean q;
    public boolean r;
    public zzx s;
    public final xj0 t;
    public zza u;
    public sj0 v;
    public np0 w;
    public boolean x;
    public boolean y;
    public int z;

    public ww0(xw0 xw0Var, ep3 ep3Var, boolean z) {
        xj0 xj0Var = new xj0(xw0Var, xw0Var.i0(), new l40(xw0Var.getContext()));
        this.g = new HashMap<>();
        this.h = new Object();
        this.o = false;
        this.f = ep3Var;
        this.e = xw0Var;
        this.p = z;
        this.t = xj0Var;
        this.v = null;
        this.B = new HashSet<>(Arrays.asList(((String) os3.j.f.a(y40.m3)).split(",")));
    }

    public static WebResourceResponse R() {
        if (((Boolean) os3.j.f.a(y40.s0)).booleanValue()) {
            return new WebResourceResponse("", "", new ByteArrayInputStream(new byte[0]));
        }
        return null;
    }

    public final void A(Map<String, String> map, List<kb0<? super xw0>> list, String str) {
        if (zzd.zzyz()) {
            String strValueOf = String.valueOf(str);
            zzd.zzed(strValueOf.length() != 0 ? "Received GMSG: ".concat(strValueOf) : new String("Received GMSG: "));
            for (String str2 : map.keySet()) {
                String str3 = map.get(str2);
                StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + String.valueOf(str2).length() + 4);
                sb.append("  ");
                sb.append(str2);
                sb.append(": ");
                sb.append(str3);
                zzd.zzed(sb.toString());
            }
        }
        Iterator<kb0<? super xw0>> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(this.e, map);
        }
    }

    public final boolean C() {
        boolean z;
        synchronized (this.h) {
            z = this.p;
        }
        return z;
    }

    public final boolean M() {
        boolean z;
        synchronized (this.h) {
            z = this.q;
        }
        return z;
    }

    public final void O() {
        np0 np0Var = this.w;
        if (np0Var != null) {
            WebView webView = this.e.getWebView();
            AtomicInteger atomicInteger = ha.a;
            if (webView.isAttachedToWindow()) {
                s(webView, np0Var, 10);
                return;
            }
            if (this.C != null) {
                this.e.getView().removeOnAttachStateChangeListener(this.C);
            }
            this.C = new ax0(this, np0Var);
            this.e.getView().addOnAttachStateChangeListener(this.C);
        }
    }

    public final void Q() {
        if (this.k != null && ((this.x && this.z <= 0) || this.y)) {
            if (((Boolean) os3.j.f.a(y40.l1)).booleanValue() && this.e.i() != null) {
                c50.w2(this.e.i().b, this.e.U(), "awfllc");
            }
            this.k.a(!this.y);
            this.k = null;
        }
        this.e.P();
    }

    public final WebResourceResponse U(String str, Map<String, String> map) {
        zzth zzthVarC;
        try {
            String strA3 = c50.A3(str, this.e.getContext(), this.A);
            if (!strA3.equals(str)) {
                return V(strA3, map);
            }
            zzti zztiVarN = zzti.n(Uri.parse(str));
            if (zztiVarN != null && (zzthVarC = zzr.zzlb().c(zztiVarN)) != null && zzthVarC.n()) {
                return new WebResourceResponse("", "", zzthVarC.C());
            }
            if (ds0.a() && m60.b.a().booleanValue()) {
                return V(str, map);
            }
            return null;
        } catch (Exception | NoClassDefFoundError e) {
            or0 or0VarZzkz = zzr.zzkz();
            xl0.d(or0VarZzkz.e, or0VarZzkz.f).a(e, "AdWebViewClient.interceptRequest");
            return R();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f8, code lost:
    
        com.google.android.gms.ads.internal.zzr.zzkv();
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0102, code lost:
    
        return com.google.android.gms.ads.internal.util.zzj.zzd(r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.webkit.WebResourceResponse V(java.lang.String r11, java.util.Map<java.lang.String, java.lang.String> r12) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 283
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ww0.V(java.lang.String, java.util.Map):android.webkit.WebResourceResponse");
    }

    public final void X(Uri uri) {
        final String path = uri.getPath();
        List<kb0<? super xw0>> list = this.g.get(path);
        if (path == null || list == null) {
            String strValueOf = String.valueOf(uri);
            StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
            sb.append("No GMSG handler found for GMSG: ");
            sb.append(strValueOf);
            zzd.zzed(sb.toString());
            if (!((Boolean) os3.j.f.a(y40.l4)).booleanValue() || zzr.zzkz().e() == null) {
                return;
            }
            ms0.a.execute(new Runnable(path) { // from class: yw0
                public final String e;

                {
                    this.e = path;
                }

                @Override // java.lang.Runnable
                public final void run() throws Throwable {
                    String str = this.e;
                    e50 e50VarE = zzr.zzkz().e();
                    String strSubstring = str.substring(1);
                    if (e50VarE.g.contains(strSubstring)) {
                        return;
                    }
                    LinkedHashMap linkedHashMap = new LinkedHashMap();
                    linkedHashMap.put("sdkVersion", e50VarE.f);
                    linkedHashMap.put("ue", strSubstring);
                    e50VarE.b(e50VarE.a(e50VarE.b, linkedHashMap), null);
                }
            });
            return;
        }
        String encodedQuery = uri.getEncodedQuery();
        if (((Boolean) os3.j.f.a(y40.l3)).booleanValue() && this.B.contains(path) && encodedQuery != null) {
            if (encodedQuery.length() >= ((Integer) os3.j.f.a(y40.n3)).intValue()) {
                zzd.zzed(path.length() != 0 ? "Parsing gmsg query params on BG thread: ".concat(path) : new String("Parsing gmsg query params on BG thread: "));
                aw2<Map<String, String>> aw2VarZzh = zzr.zzkv().zzh(uri);
                aw2VarZzh.i(new sv2(aw2VarZzh, new dx0(this, list, path, uri)), ms0.e);
                return;
            }
        }
        zzr.zzkv();
        A(zzj.zzg(uri), list, path);
    }

    public final void d() {
        np0 np0Var = this.w;
        if (np0Var != null) {
            np0Var.a();
            this.w = null;
        }
        if (this.C != null) {
            this.e.getView().removeOnAttachStateChangeListener(this.C);
        }
        synchronized (this.h) {
            this.g.clear();
            this.i = null;
            this.j = null;
            this.k = null;
            this.l = null;
            this.m = null;
            this.n = null;
            this.o = false;
            this.p = false;
            this.q = false;
            this.s = null;
            sj0 sj0Var = this.v;
            if (sj0Var != null) {
                sj0Var.f(true);
                this.v = null;
            }
        }
    }

    public final void o(String str, kb0<? super xw0> kb0Var) {
        synchronized (this.h) {
            List<kb0<? super xw0>> copyOnWriteArrayList = this.g.get(str);
            if (copyOnWriteArrayList == null) {
                copyOnWriteArrayList = new CopyOnWriteArrayList<>();
                this.g.put(str, copyOnWriteArrayList);
            }
            copyOnWriteArrayList.add(kb0Var);
        }
    }

    @Override // defpackage.er3
    public void onAdClicked() {
        er3 er3Var = this.i;
        if (er3Var != null) {
            er3Var.onAdClicked();
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onLoadResource(WebView webView, String str) {
        String strValueOf = String.valueOf(str);
        zzd.zzed(strValueOf.length() != 0 ? "Loading resource: ".concat(strValueOf) : new String("Loading resource: "));
        Uri uri = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uri.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uri.getHost())) {
            X(uri);
        }
    }

    @Override // android.webkit.WebViewClient
    public final void onPageFinished(WebView webView, String str) {
        synchronized (this.h) {
            if (this.e.j()) {
                zzd.zzed("Blank page loaded, 1...");
                this.e.w();
                return;
            }
            this.x = true;
            iy0 iy0Var = this.l;
            if (iy0Var != null) {
                iy0Var.a();
                this.l = null;
            }
            Q();
        }
    }

    @Override // android.webkit.WebViewClient
    public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
        return this.e.B(renderProcessGoneDetail.didCrash(), renderProcessGoneDetail.rendererPriorityAtExit());
    }

    public final void r(int i, int i2, boolean z) {
        this.t.f(i, i2);
        sj0 sj0Var = this.v;
        if (sj0Var != null) {
            synchronized (sj0Var.k) {
                sj0Var.e = i;
                sj0Var.f = i2;
            }
        }
    }

    public final void s(View view, np0 np0Var, int i) {
        if (!np0Var.e() || i <= 0) {
            return;
        }
        np0Var.f(view);
        if (np0Var.e()) {
            zzj.zzegq.postDelayed(new bx0(this, view, np0Var, i), 100L);
        }
    }

    @Override // android.webkit.WebViewClient
    public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return U(str, Collections.emptyMap());
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideKeyEvent(WebView webView, KeyEvent keyEvent) {
        int keyCode = keyEvent.getKeyCode();
        if (keyCode == 79 || keyCode == 222) {
            return true;
        }
        switch (keyCode) {
            case 85:
            case 86:
            case 87:
            case 88:
            case 89:
            case 90:
            case 91:
                return true;
            default:
                switch (keyCode) {
                    case WebSocketProtocol.PAYLOAD_SHORT /* 126 */:
                    case 127:
                    case 128:
                    case 129:
                    case 130:
                        return true;
                    default:
                        return false;
                }
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) throws f13 {
        String strValueOf = String.valueOf(str);
        zzd.zzed(strValueOf.length() != 0 ? "AdWebView shouldOverrideUrlLoading: ".concat(strValueOf) : new String("AdWebView shouldOverrideUrlLoading: "));
        Uri uriA = Uri.parse(str);
        if ("gmsg".equalsIgnoreCase(uriA.getScheme()) && "mobileads.google.com".equalsIgnoreCase(uriA.getHost())) {
            X(uriA);
        } else {
            if (this.o && webView == this.e.getWebView()) {
                String scheme = uriA.getScheme();
                if ("http".equalsIgnoreCase(scheme) || "https".equalsIgnoreCase(scheme)) {
                    er3 er3Var = this.i;
                    if (er3Var != null) {
                        er3Var.onAdClicked();
                        np0 np0Var = this.w;
                        if (np0Var != null) {
                            np0Var.b(str);
                        }
                        this.i = null;
                    }
                    return super.shouldOverrideUrlLoading(webView, str);
                }
            }
            if (this.e.getWebView().willNotDraw()) {
                String strValueOf2 = String.valueOf(str);
                is0.zzez(strValueOf2.length() != 0 ? "AdWebView unable to handle URL: ".concat(strValueOf2) : new String("AdWebView unable to handle URL: "));
            } else {
                try {
                    d23 d23VarL = this.e.l();
                    if (d23VarL != null && d23VarL.c(uriA)) {
                        uriA = d23VarL.a(uriA, this.e.getContext(), this.e.getView(), this.e.a());
                    }
                } catch (f13 unused) {
                    String strValueOf3 = String.valueOf(str);
                    is0.zzez(strValueOf3.length() != 0 ? "Unable to append parameter to URL: ".concat(strValueOf3) : new String("Unable to append parameter to URL: "));
                }
                zza zzaVar = this.u;
                if (zzaVar == null || zzaVar.zzkc()) {
                    x(new zzb("android.intent.action.VIEW", uriA.toString(), null, null, null, null, null, null));
                } else {
                    this.u.zzbk(str);
                }
            }
        }
        return true;
    }

    public final void t(AdOverlayInfoParcel adOverlayInfoParcel) {
        zzb zzbVar;
        sj0 sj0Var = this.v;
        if (sj0Var != null) {
            synchronized (sj0Var.k) {
                z = sj0Var.r != null;
            }
        }
        zzr.zzku();
        zzo.zza(this.e.getContext(), adOverlayInfoParcel, true ^ z);
        np0 np0Var = this.w;
        if (np0Var != null) {
            String str = adOverlayInfoParcel.url;
            if (str == null && (zzbVar = adOverlayInfoParcel.zzdue) != null) {
                str = zzbVar.url;
            }
            np0Var.b(str);
        }
    }

    public final void x(zzb zzbVar) {
        boolean zE0 = this.e.E0();
        t(new AdOverlayInfoParcel(zzbVar, (!zE0 || this.e.c().b()) ? this.i : null, zE0 ? null : this.j, this.s, this.e.b(), this.e));
    }

    public final void z(er3 er3Var, ra0 ra0Var, zzp zzpVar, ta0 ta0Var, zzx zzxVar, boolean z, ob0 ob0Var, zza zzaVar, yp1 yp1Var, np0 np0Var, final sy1 sy1Var, final jq2 jq2Var, ns1 ns1Var, pp2 pp2Var) {
        zza zzaVar2 = zzaVar == null ? new zza(this.e.getContext(), np0Var, null) : zzaVar;
        this.v = new sj0(this.e, yp1Var);
        this.w = np0Var;
        if (((Boolean) os3.j.f.a(y40.z0)).booleanValue()) {
            o("/adMetadata", new oa0(ra0Var));
        }
        o("/appEvent", new qa0(ta0Var));
        o("/backButton", va0.k);
        o("/refresh", va0.l);
        kb0<xw0> kb0Var = va0.a;
        o("/canOpenApp", xa0.a);
        o("/canOpenURLs", ua0.a);
        o("/canOpenIntents", wa0.a);
        o("/close", va0.e);
        o("/customClose", va0.f);
        o("/instrument", va0.o);
        o("/delayPageLoaded", va0.q);
        o("/delayPageClosed", va0.r);
        o("/getLocationInfo", va0.s);
        o("/log", va0.h);
        o("/mraid", new sb0(zzaVar2, this.v, yp1Var));
        o("/mraidLoaded", this.t);
        o("/open", new rb0(zzaVar2, this.v, sy1Var, ns1Var, pp2Var));
        o("/precache", new ew0());
        o("/touch", bb0.a);
        o("/video", va0.m);
        o("/videoMeta", va0.n);
        if (sy1Var == null || jq2Var == null) {
            o("/click", za0.a);
            o("/httpTrack", ya0.a);
        } else {
            o("/click", new kb0(jq2Var, sy1Var) { // from class: ql2
                public final jq2 a;
                public final sy1 b;

                {
                    this.a = jq2Var;
                    this.b = sy1Var;
                }

                /* JADX WARN: Type inference failed for: r9v1, types: [mw0, yx0] */
                @Override // defpackage.kb0
                public final void a(Object obj, Map map) throws NoSuchMethodException, SecurityException {
                    jq2 jq2Var2 = this.a;
                    sy1 sy1Var2 = this.b;
                    ?? r9 = (mw0) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        is0.zzez("URL missing from click GMSG.");
                        return;
                    }
                    String strA = va0.a(r9, str);
                    if (!r9.g().d0) {
                        jq2Var2.a(strA);
                        return;
                    }
                    long jA = zzr.zzlc().a();
                    String str2 = ((sx0) r9).e().b;
                    zzr.zzkv();
                    sy1Var2.c(new yy1(sy1Var2, new zy1(jA, str2, strA, zzj.zzbd(((yx0) r9).getContext()) ? 2 : 1)));
                }
            });
            o("/httpTrack", new kb0(jq2Var, sy1Var) { // from class: sl2
                public final jq2 a;
                public final sy1 b;

                {
                    this.a = jq2Var;
                    this.b = sy1Var;
                }

                @Override // defpackage.kb0
                public final void a(Object obj, Map map) {
                    jq2 jq2Var2 = this.a;
                    sy1 sy1Var2 = this.b;
                    mw0 mw0Var = (mw0) obj;
                    String str = (String) map.get("u");
                    if (str == null) {
                        is0.zzez("URL missing from httpTrack GMSG.");
                    } else if (mw0Var.g().d0) {
                        sy1Var2.c(new yy1(sy1Var2, new zy1(zzr.zzlc().a(), ((sx0) mw0Var).e().b, str, 2)));
                    } else {
                        jq2Var2.a.execute(new iq2(jq2Var2, str));
                    }
                }
            });
        }
        if (zzr.zzlt().h(this.e.getContext())) {
            o("/logScionEvent", new pb0(this.e.getContext()));
        }
        if (ob0Var != null) {
            o("/setInterstitialProperties", new mb0(ob0Var));
        }
        this.i = er3Var;
        this.j = zzpVar;
        this.m = ra0Var;
        this.n = ta0Var;
        this.s = zzxVar;
        this.u = zzaVar2;
        this.o = z;
    }
}
