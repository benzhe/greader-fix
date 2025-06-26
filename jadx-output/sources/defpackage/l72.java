package defpackage;

import android.app.Activity;
import android.content.Context;
import android.graphics.Point;
import android.net.Uri;
import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.internal.ads.zzatj;
import com.google.android.gms.internal.ads.zzazi;
import com.google.android.gms.internal.ads.zzbar;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.n91;
import defpackage.y72;
import defpackage.yd1;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class l72 extends cr0 {
    public static final List<String> p = new ArrayList(Arrays.asList("/aclk", "/pcs/click"));
    public static final List<String> q = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com"));
    public static final List<String> r = new ArrayList(Arrays.asList("/pagead/adview", "/pcs/view", "/pagead/conversion"));
    public static final List<String> s = new ArrayList(Arrays.asList(".doubleclick.net", ".googleadservices.com", ".googlesyndication.com"));
    public sy0 f;
    public Context g;
    public d23 h;
    public zzbar i;
    public yl2<io1> j;
    public final zv2 k;
    public final ScheduledExecutorService l;
    public zzatj m;
    public Point n = new Point();
    public Point o = new Point();

    public l72(sy0 sy0Var, Context context, d23 d23Var, zzbar zzbarVar, yl2<io1> yl2Var, zv2 zv2Var, ScheduledExecutorService scheduledExecutorService) {
        this.f = sy0Var;
        this.g = context;
        this.h = d23Var;
        this.i = zzbarVar;
        this.j = yl2Var;
        this.k = zv2Var;
        this.l = scheduledExecutorService;
    }

    public static Uri W6(Uri uri, String str, String str2) {
        String string = uri.toString();
        int iIndexOf = string.indexOf("&adurl=");
        if (iIndexOf == -1) {
            iIndexOf = string.indexOf("?adurl=");
        }
        if (iIndexOf == -1) {
            return uri.buildUpon().appendQueryParameter(str, str2).build();
        }
        int i = iIndexOf + 1;
        StringBuilder sb = new StringBuilder(string.substring(0, i));
        jo.J(sb, str, "=", str2, "&");
        sb.append(string.substring(i));
        return Uri.parse(sb.toString());
    }

    public static boolean X6(Uri uri, List<String> list, List<String> list2) {
        String host = uri.getHost();
        String path = uri.getPath();
        if (host != null && path != null) {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                if (path.contains(it.next())) {
                    Iterator<String> it2 = list2.iterator();
                    while (it2.hasNext()) {
                        if (host.endsWith(it2.next())) {
                            return true;
                        }
                    }
                }
            }
        }
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v18, types: [db3] */
    /* JADX WARN: Type inference failed for: r11v36, types: [db3] */
    /* JADX WARN: Type inference failed for: r11v39, types: [db3] */
    /* JADX WARN: Type inference failed for: r13v31, types: [db3] */
    /* JADX WARN: Type inference failed for: r9v46, types: [db3] */
    @Override // defpackage.zq0
    public final void R5(x20 x20Var, zzazi zzaziVar, yq0 yq0Var) {
        Context context = (Context) y20.l0(x20Var);
        this.g = context;
        String str = zzaziVar.e;
        String str2 = zzaziVar.f;
        zzvt zzvtVar = zzaziVar.g;
        zzvq zzvqVar = zzaziVar.h;
        t01 t01VarV = this.f.v();
        n91.a aVar = new n91.a();
        aVar.a = context;
        nl2 nl2Var = new nl2();
        if (str == null) {
            str = "adUnitId";
        }
        nl2Var.d = str;
        if (zzvqVar == null) {
            zzvqVar = new zzvq(8, -1L, new Bundle(), -1, new ArrayList(), false, -1, false, null, null, null, null, new Bundle(), new Bundle(), new ArrayList(), null, null, false, null, -1, null, new ArrayList(), 60000);
        }
        nl2Var.a = zzvqVar;
        if (zzvtVar == null) {
            zzvtVar = new zzvt();
        }
        nl2Var.b = zzvtVar;
        aVar.b = nl2Var.a();
        n91 n91VarA = aVar.a();
        Objects.requireNonNull(t01VarV);
        t01VarV.a = n91VarA;
        y72.a aVar2 = new y72.a();
        aVar2.a = str2;
        t01VarV.b = new y72(aVar2, null);
        new yd1.a().h();
        c50.l2(t01VarV.a, n91.class);
        c50.l2(t01VarV.b, y72.class);
        pz0 pz0Var = t01VarV.c;
        y72 y72Var = t01VarV.b;
        at1 at1Var = new at1();
        n91 n91Var = t01VarV.a;
        im2 im2Var = new im2();
        km2 km2Var = new km2(im2Var, pz0Var.g);
        ru1 ru1Var = new ru1(km2Var);
        mb3 c82Var = new c82(y72Var);
        Object obj = db3.c;
        if (!(c82Var instanceof db3)) {
            c82Var = new db3(c82Var);
        }
        mb3 mb3Var = wu1.a;
        mb3 db3Var = mb3Var instanceof db3 ? mb3Var : new db3(mb3Var);
        mb3 mb3VarA = tq1.a(pz0Var.g, ru1Var, pz0Var.h, c82Var, db3Var);
        if (!(mb3VarA instanceof db3)) {
            mb3VarA = new db3(mb3VarA);
        }
        cr1 db3Var2 = br1.a;
        if (!(db3Var2 instanceof db3)) {
            db3Var2 = new db3(db3Var2);
        }
        er1 db3Var3 = dr1.a;
        if (!(db3Var3 instanceof db3)) {
            db3Var3 = new db3(db3Var3);
        }
        gb3 gb3VarA = eb3.a(2);
        ap2 ap2Var = ap2.SIGNALS;
        LinkedHashMap linkedHashMap = gb3VarA.a;
        Objects.requireNonNull(db3Var2, "provider");
        linkedHashMap.put(ap2Var, db3Var2);
        ap2 ap2Var2 = ap2.RENDERER;
        LinkedHashMap linkedHashMap2 = gb3VarA.a;
        Objects.requireNonNull(db3Var3, "provider");
        linkedHashMap2.put(ap2Var2, db3Var3);
        xr1 xr1Var = new xr1(mb3VarA, gb3VarA.a());
        yn2 yn2Var = bo2.a;
        gr1 gr1Var = new gr1(yn2Var, xr1Var);
        if (!(gr1Var instanceof db3)) {
            gr1Var = new db3(gr1Var);
        }
        nm2 nm2Var = new nm2(im2Var, pz0Var.R);
        mb3 js1Var = new js1(pz0Var.x, nm2Var);
        if (!(js1Var instanceof db3)) {
            js1Var = new db3(js1Var);
        }
        lb3 lb3VarA = jb3.a(1, 0);
        lb3VarA.a.add(hs1.a);
        mb3 ts1Var = new ts1(js1Var, lb3VarA.a(), pz0Var.q);
        if (!(ts1Var instanceof db3)) {
            ts1Var = new db3(ts1Var);
        }
        lb3 lb3VarA2 = jb3.a(1, 0);
        lb3VarA2.a.add(mx1.a);
        jb3 jb3VarA = lb3VarA2.a();
        mb3 vu1Var = new vu1(db3Var);
        if (!(vu1Var instanceof db3)) {
            vu1Var = new db3(vu1Var);
        }
        mb3 rx1Var = new rx1(jb3VarA, vu1Var);
        if (!(rx1Var instanceof db3)) {
            rx1Var = new db3(rx1Var);
        }
        fs1 fs1Var = new fs1(ts1Var, yn2Var, rx1Var);
        if (!(fs1Var instanceof db3)) {
            fs1Var = new db3(fs1Var);
        }
        mb3 nt1Var = new nt1(pz0Var.S, pz0Var.H);
        if (!(nt1Var instanceof db3)) {
            nt1Var = new db3(nt1Var);
        }
        kt1 kt1Var = new kt1(at1Var, nt1Var, yn2Var);
        mb3 db3Var4 = fy1.a;
        if (!(db3Var4 instanceof db3)) {
            db3Var4 = new db3(db3Var4);
        }
        sx1 sx1Var = new sx1(new hy1(db3Var4), yn2Var);
        if (!(sx1Var instanceof db3)) {
            sx1Var = new db3(sx1Var);
        }
        lb3 lb3VarA3 = jb3.a(2, 2);
        lb3VarA3.b.add(gr1Var);
        lb3VarA3.a.add(fs1Var);
        lb3VarA3.b.add(kt1Var);
        lb3VarA3.a.add(sx1Var);
        ip2 ip2Var = new ip2(yn2Var, pz0Var.m, new hp2(lb3VarA3.a()));
        mb3 db3Var5 = ip2Var instanceof db3 ? ip2Var : new db3(ip2Var);
        mb3<Context> mb3Var2 = pz0Var.g;
        j82 j82Var = new j82(yn2Var, new av1(pz0Var.m, yn2Var, new qv1(mb3Var2), cx1.a(mb3Var2, pz0Var.o, nz0.a, pz0Var.c0, pz0Var.d0, pz0Var.e0)));
        mb3 o91Var = new o91(n91Var, km2Var);
        if (!(o91Var instanceof db3)) {
            o91Var = new db3(o91Var);
        }
        lu1 lu1Var = new lu1(o91Var);
        mb3 su1Var = new su1(o91Var, lu1Var);
        mb3 db3Var6 = su1Var instanceof db3 ? su1Var : new db3(su1Var);
        mb3 ju1Var = new ju1(db3Var5, o91Var);
        mb3 db3Var7 = ju1Var instanceof db3 ? ju1Var : new db3(ju1Var);
        lm2 lm2Var = new lm2(im2Var, pz0Var.R);
        r91 r91Var = new r91(n91Var);
        mb3 r71Var = new r71(pz0Var.q, nm2Var, r91Var);
        if (!(r71Var instanceof db3)) {
            r71Var = new db3(r71Var);
        }
        mb3 s71Var = new s71(pz0Var.q, r71Var);
        if (!(s71Var instanceof db3)) {
            s71Var = new db3(s71Var);
        }
        p91 p91Var = new p91(n91Var, s71Var);
        mb3 jm2Var = new jm2(km2Var, nm2Var);
        if (!(jm2Var instanceof db3)) {
            jm2Var = new db3(jm2Var);
        }
        v92 v92VarA = v92.a(p91Var, pz0Var.w, s71Var, jm2Var, r91Var);
        y82 y82Var = new y82(pz0Var.V, r91Var, km2Var, pz0Var.R);
        q82 q82Var = new q82(r91Var);
        mb3 e82Var = new e82(y72Var);
        if (!(e82Var instanceof db3)) {
            e82Var = new db3(e82Var);
        }
        mb3<zv2> mb3Var3 = pz0Var.T;
        mb3 mb3Var4 = db3Var5;
        bc2 bc2Var = new bc2(mb3Var3, km2Var, e82Var);
        m92 m92Var = new m92(mb3Var3, pz0Var.s, pz0Var.D, pz0Var.W);
        bb2 bb2Var = new bb2(o91Var, yn2Var);
        d92 d92Var = new d92(e82Var);
        jc2 jc2Var = new jc2(yn2Var, new q91(n91Var));
        xa2 xa2Var = new xa2(km2Var, yn2Var);
        fc2 fc2Var = new fc2(lu1Var, db3Var6);
        mb3 mb3Var5 = db3Var6;
        hd2 hd2Var = new hd2(fb3.b(null));
        q92 q92Var = new q92(yn2Var, r91Var, pz0Var.h);
        z92 z92Var = new z92(yn2Var, km2Var);
        mb3 ku1Var = new ku1(pz0Var.I, km2Var, yn2Var);
        if (!(ku1Var instanceof db3)) {
            ku1Var = new db3(ku1Var);
        }
        u82 u82Var = new u82(ku1Var, yn2Var);
        cd2 cd2Var = new cd2(yn2Var, km2Var, pz0Var.h);
        ce2 ce2Var = new ce2(yn2Var, km2Var);
        ob2 ob2Var = new ob2(yn2Var);
        yc2 yc2Var = new yc2(pz0Var.E, yn2Var, km2Var);
        fb2 fb2Var = new fb2(yn2Var);
        sb2 sb2Var = new sb2(yn2Var, pz0Var.Z);
        u92 u92Var = new u92(yn2Var, pz0Var.R);
        mb3 b82Var = new b82(y72Var);
        if (!(b82Var instanceof db3)) {
            b82Var = new db3(b82Var);
        }
        mb3 h52Var = new h52(pz0Var.s);
        uc2 uc2VarA = uc2.a(yn2Var, pz0Var.m, b82Var, pz0Var.u, o91Var, r91Var, h52Var instanceof db3 ? h52Var : new db3(h52Var));
        od2 od2Var = new od2(yn2Var, km2Var);
        ja2 ja2Var = new ja2(fb3.b(null));
        mb3 db3Var8 = pu1.a;
        if (!(db3Var8 instanceof db3)) {
            db3Var8 = new db3(db3Var8);
        }
        pc2 pc2Var = new pc2(db3Var, db3Var8);
        mb3 mb3Var6 = db3Var;
        pa2 pa2Var = new pa2(yn2Var, pz0Var.F, r91Var, b82Var);
        lb3 lb3VarA4 = jb3.a(28, 0);
        lb3VarA4.a.add(v92VarA);
        lb3VarA4.a.add(y82Var);
        lb3VarA4.a.add(q82Var);
        lb3VarA4.a.add(bc2Var);
        lb3VarA4.a.add(m92Var);
        lb3VarA4.a.add(bb2Var);
        lb3VarA4.a.add(d92Var);
        lb3VarA4.a.add(jc2Var);
        lb3VarA4.a.add(xa2Var);
        lb3VarA4.a.add(fc2Var);
        lb3VarA4.a.add(hd2Var);
        lb3VarA4.a.add(q92Var);
        lb3VarA4.a.add(z92Var);
        lb3VarA4.a.add(u82Var);
        lb3VarA4.a.add(cd2Var);
        lb3VarA4.a.add(pz0Var.V);
        lb3VarA4.a.add(ce2Var);
        lb3VarA4.a.add(pz0Var.Y);
        lb3VarA4.a.add(ob2Var);
        lb3VarA4.a.add(yc2Var);
        lb3VarA4.a.add(fb2Var);
        lb3VarA4.a.add(sb2Var);
        lb3VarA4.a.add(u92Var);
        lb3VarA4.a.add(uc2VarA);
        lb3VarA4.a.add(od2Var);
        lb3VarA4.a.add(ja2Var);
        lb3VarA4.a.add(pc2Var);
        lb3VarA4.a.add(pa2Var);
        mb3 d82Var = new d82(mb3Var4, j82Var, i91.a(mb3Var4, pz0Var.h, lu1Var, ru1Var, nu1.a, mb3Var5, db3Var7, lm2Var, mb3Var6, new ud2(yn2Var, lb3VarA4.a())));
        if (!(d82Var instanceof db3)) {
            d82Var = new db3(d82Var);
        }
        aw2<i82> aw2Var = d82Var.get();
        aw2Var.i(new sv2(aw2Var, new u72(this, yq0Var)), this.f.e());
    }

    @Override // defpackage.zq0
    public final void U5(List<Uri> list, final x20 x20Var, kl0 kl0Var) {
        try {
            if (!((Boolean) os3.j.f.a(y40.t4)).booleanValue()) {
                kl0Var.onError("The updating URL feature is not enabled.");
                return;
            }
            if (list.size() != 1) {
                kl0Var.onError("There should be only 1 click URL.");
                return;
            }
            final Uri uri = list.get(0);
            if (!X6(uri, p, q)) {
                String strValueOf = String.valueOf(uri);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 18);
                sb.append("Not a Google URL: ");
                sb.append(strValueOf);
                is0.zzez(sb.toString());
                kl0Var.w3(list);
                return;
            }
            aw2 aw2VarY = this.k.y(new Callable(this, uri, x20Var) { // from class: m72
                public final l72 e;
                public final Uri f;
                public final x20 g;

                {
                    this.e = this;
                    this.f = uri;
                    this.g = x20Var;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() throws Exception {
                    l72 l72Var = this.e;
                    Uri uriA = this.f;
                    x20 x20Var2 = this.g;
                    Objects.requireNonNull(l72Var);
                    try {
                        uriA = l72Var.h.a(uriA, l72Var.g, (View) y20.l0(x20Var2), null);
                    } catch (f13 e) {
                        is0.zzd("", e);
                    }
                    if (uriA.getQueryParameter("ms") != null) {
                        return uriA;
                    }
                    throw new Exception("Failed to append spam signals to click url.");
                }
            });
            if (Y6()) {
                aw2VarY = vt2.m(aw2VarY, new cv2(this) { // from class: p72
                    public final l72 a;

                    {
                        this.a = this;
                    }

                    @Override // defpackage.cv2
                    public final aw2 a(Object obj) {
                        final l72 l72Var = this.a;
                        final Uri uri2 = (Uri) obj;
                        return vt2.l(l72Var.Z6("google.afma.nativeAds.getPublisherCustomRenderedClickSignals"), new vs2(l72Var, uri2) { // from class: r72
                            public final Uri a;

                            {
                                this.a = uri2;
                            }

                            @Override // defpackage.vs2
                            public final Object apply(Object obj2) {
                                Uri uri3 = this.a;
                                String str = (String) obj2;
                                return !TextUtils.isEmpty(str) ? l72.W6(uri3, "nas", str) : uri3;
                            }
                        }, l72Var.k);
                    }
                }, this.k);
            } else {
                is0.zzey("Asset view map is empty.");
            }
            w72 w72Var = new w72(kl0Var);
            aw2VarY.i(new sv2(aw2VarY, w72Var), this.f.e());
        } catch (RemoteException e) {
            is0.zzc("", e);
        }
    }

    public final boolean Y6() {
        Map<String, WeakReference<View>> map;
        zzatj zzatjVar = this.m;
        return (zzatjVar == null || (map = zzatjVar.f) == null || map.isEmpty()) ? false : true;
    }

    @Override // defpackage.zq0
    public final void Z1(zzatj zzatjVar) {
        this.m = zzatjVar;
        this.j.a(1);
    }

    public final aw2<String> Z6(final String str) {
        final io1[] io1VarArr = new io1[1];
        aw2 aw2VarM = vt2.m(this.j.b(), new cv2(this, io1VarArr, str) { // from class: s72
            public final l72 a;
            public final io1[] b;
            public final String c;

            {
                this.a = this;
                this.b = io1VarArr;
                this.c = str;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) throws JSONException {
                l72 l72Var = this.a;
                io1[] io1VarArr2 = this.b;
                String str2 = this.c;
                io1 io1Var = (io1) obj;
                Objects.requireNonNull(l72Var);
                io1VarArr2[0] = io1Var;
                Context context = l72Var.g;
                zzatj zzatjVar = l72Var.m;
                Map<String, WeakReference<View>> map = zzatjVar.f;
                JSONObject jSONObjectZza = zzbn.zza(context, map, map, zzatjVar.e);
                JSONObject jSONObjectZza2 = zzbn.zza(l72Var.g, l72Var.m.e);
                JSONObject jSONObjectZzt = zzbn.zzt(l72Var.m.e);
                JSONObject jSONObjectZzb = zzbn.zzb(l72Var.g, l72Var.m.e);
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("asset_view_signal", jSONObjectZza);
                jSONObject.put("ad_view_signal", jSONObjectZza2);
                jSONObject.put("scroll_view_signal", jSONObjectZzt);
                jSONObject.put("lock_screen_signal", jSONObjectZzb);
                if (str2 == "google.afma.nativeAds.getPublisherCustomRenderedClickSignals") {
                    jSONObject.put("click_signal", zzbn.zza((String) null, l72Var.g, l72Var.o, l72Var.n));
                }
                return io1Var.e(str2, jSONObject);
            }
        }, this.k);
        ((su2) aw2VarM).i(new Runnable(this, io1VarArr) { // from class: v72
            public final l72 e;
            public final io1[] f;

            {
                this.e = this;
                this.f = io1VarArr;
            }

            @Override // java.lang.Runnable
            public final void run() {
                l72 l72Var = this.e;
                io1[] io1VarArr2 = this.f;
                Objects.requireNonNull(l72Var);
                if (io1VarArr2[0] != null) {
                    yl2<io1> yl2Var = l72Var.j;
                    aw2<io1> aw2VarJ = vt2.j(io1VarArr2[0]);
                    synchronized (yl2Var) {
                        yl2Var.a.addFirst(aw2VarJ);
                    }
                }
            }
        }, this.k);
        nv2 nv2VarY = nv2.A(aw2VarM).x(((Integer) os3.j.f.a(y40.u4)).intValue(), TimeUnit.MILLISECONDS, this.l).y(q72.a, this.k);
        vs2 vs2Var = t72.a;
        zv2 zv2Var = this.k;
        qu2 qu2Var = new qu2(nv2VarY, Exception.class, vs2Var);
        nv2VarY.i(qu2Var, vt2.g(zv2Var, qu2Var));
        return qu2Var;
    }

    @Override // defpackage.zq0
    public final void h1(final List<Uri> list, final x20 x20Var, kl0 kl0Var) {
        if (!((Boolean) os3.j.f.a(y40.t4)).booleanValue()) {
            try {
                kl0Var.onError("The updating URL feature is not enabled.");
                return;
            } catch (RemoteException e) {
                is0.zzc("", e);
                return;
            }
        }
        aw2 aw2VarY = this.k.y(new Callable(this, list, x20Var) { // from class: k72
            public final l72 e;
            public final List f;
            public final x20 g;

            {
                this.e = this;
                this.f = list;
                this.g = x20Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws Exception {
                l72 l72Var = this.e;
                List<Uri> list2 = this.f;
                x20 x20Var2 = this.g;
                ws2 ws2Var = l72Var.h.b;
                String strZza = ws2Var != null ? ws2Var.zza(l72Var.g, (View) y20.l0(x20Var2), (Activity) null) : "";
                if (TextUtils.isEmpty(strZza)) {
                    throw new Exception("Failed to get view signals.");
                }
                ArrayList arrayList = new ArrayList();
                for (Uri uri : list2) {
                    if (l72.X6(uri, l72.r, l72.s)) {
                        arrayList.add(l72.W6(uri, "ms", strZza));
                    } else {
                        String strValueOf = String.valueOf(uri);
                        StringBuilder sb = new StringBuilder(strValueOf.length() + 18);
                        sb.append("Not a Google URL: ");
                        sb.append(strValueOf);
                        is0.zzez(sb.toString());
                        arrayList.add(uri);
                    }
                }
                if (arrayList.isEmpty()) {
                    throw new Exception("Empty impression URLs result.");
                }
                return arrayList;
            }
        });
        if (Y6()) {
            aw2VarY = vt2.m(aw2VarY, new cv2(this) { // from class: n72
                public final l72 a;

                {
                    this.a = this;
                }

                @Override // defpackage.cv2
                public final aw2 a(Object obj) {
                    final l72 l72Var = this.a;
                    final ArrayList arrayList = (ArrayList) obj;
                    return vt2.l(l72Var.Z6("google.afma.nativeAds.getPublisherCustomRenderedImpressionSignals"), new vs2(l72Var, arrayList) { // from class: o72
                        public final List a;

                        {
                            this.a = arrayList;
                        }

                        @Override // defpackage.vs2
                        public final Object apply(Object obj2) {
                            List<Uri> list2 = this.a;
                            String str = (String) obj2;
                            ArrayList arrayList2 = new ArrayList();
                            for (Uri uri : list2) {
                                if (!l72.X6(uri, l72.r, l72.s) || TextUtils.isEmpty(str)) {
                                    arrayList2.add(uri);
                                } else {
                                    arrayList2.add(l72.W6(uri, "nas", str));
                                }
                            }
                            return arrayList2;
                        }
                    }, l72Var.k);
                }
            }, this.k);
        } else {
            is0.zzey("Asset view map is empty.");
        }
        x72 x72Var = new x72(kl0Var);
        aw2VarY.i(new sv2(aw2VarY, x72Var), this.f.e());
    }

    @Override // defpackage.zq0
    public final void o0(x20 x20Var) {
        if (((Boolean) os3.j.f.a(y40.t4)).booleanValue()) {
            MotionEvent motionEvent = (MotionEvent) y20.l0(x20Var);
            zzatj zzatjVar = this.m;
            this.n = zzbn.zza(motionEvent, zzatjVar == null ? null : zzatjVar.e);
            if (motionEvent.getAction() == 0) {
                this.o = this.n;
            }
            MotionEvent motionEventObtain = MotionEvent.obtain(motionEvent);
            Point point = this.n;
            motionEventObtain.setLocation(point.x, point.y);
            this.h.b.zza(motionEventObtain);
            motionEventObtain.recycle();
        }
    }
}
