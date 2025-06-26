package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeAppInstallAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.util.zzbn;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class rk1 extends a80 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, xl1 {
    public static final String[] s = {NativeAppInstallAd.ASSET_MEDIA_VIDEO, NativeContentAd.ASSET_MEDIA_VIDEO, "3010"};
    public final String f;
    public FrameLayout h;
    public FrameLayout i;
    public zv2 j;
    public View k;
    public kj1 m;
    public am3 n;
    public t70 p;
    public boolean q;
    public Map<String, WeakReference<View>> g = new HashMap();
    public x20 o = null;
    public boolean r = false;
    public final int l = 204890000;

    public rk1(FrameLayout frameLayout, FrameLayout frameLayout2) {
        String str;
        this.h = frameLayout;
        this.i = frameLayout2;
        String canonicalName = frameLayout.getClass().getCanonicalName();
        if ("com.google.android.gms.ads.formats.NativeContentAdView".equals(canonicalName)) {
            str = NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else if ("com.google.android.gms.ads.formats.NativeAppInstallAdView".equals(canonicalName)) {
            str = NativeAppInstallAd.ASSET_ATTRIBUTION_ICON_IMAGE;
        } else {
            "com.google.android.gms.ads.formats.UnifiedNativeAdView".equals(canonicalName);
            str = "3012";
        }
        this.f = str;
        zzr.zzls();
        ft0.a(frameLayout, this);
        zzr.zzls();
        ft0.b(frameLayout, this);
        this.j = ms0.e;
        this.n = new am3(this.h.getContext(), this.h);
        frameLayout.setOnTouchListener(this);
        frameLayout.setOnClickListener(this);
    }

    @Override // defpackage.x70
    public final synchronized void B0(x20 x20Var, int i) {
    }

    @Override // defpackage.x70
    public final synchronized x20 C4(String str) {
        return new y20(S2(str));
    }

    @Override // defpackage.x70
    public final synchronized void I(x20 x20Var) {
        kj1 kj1Var = this.m;
        View view = (View) y20.l0(x20Var);
        synchronized (kj1Var) {
            kj1Var.j.c(view);
        }
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> L3() {
        return this.g;
    }

    @Override // defpackage.xl1
    public final synchronized View S2(String str) {
        if (this.r) {
            return null;
        }
        WeakReference<View> weakReference = this.g.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // defpackage.xl1
    public final am3 Y2() {
        return this.n;
    }

    @Override // defpackage.xl1
    public final synchronized JSONObject Z() {
        JSONObject jSONObjectJ;
        kj1 kj1Var = this.m;
        if (kj1Var == null) {
            return null;
        }
        FrameLayout frameLayout = this.h;
        Map<String, WeakReference<View>> mapL3 = L3();
        Map<String, WeakReference<View>> mapZ4 = z4();
        synchronized (kj1Var) {
            jSONObjectJ = kj1Var.j.j(frameLayout, mapL3, mapZ4);
        }
        return jSONObjectJ;
    }

    @Override // defpackage.x70
    public final synchronized void c0(x20 x20Var) {
        if (this.r) {
            return;
        }
        Object objL0 = y20.l0(x20Var);
        if (!(objL0 instanceof kj1)) {
            is0.zzez("Not an instance of native engine. This is most likely a transient error");
            return;
        }
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            kj1Var.i(this);
        }
        synchronized (this) {
            this.j.execute(new Runnable(this) { // from class: qk1
                public final rk1 e;

                {
                    this.e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    rk1 rk1Var = this.e;
                    if (rk1Var.k == null) {
                        View view = new View(rk1Var.h.getContext());
                        rk1Var.k = view;
                        view.setLayoutParams(new FrameLayout.LayoutParams(-1, 0));
                    }
                    if (rk1Var.h != rk1Var.k.getParent()) {
                        rk1Var.h.addView(rk1Var.k);
                    }
                }
            });
            kj1 kj1Var2 = (kj1) objL0;
            this.m = kj1Var2;
            kj1Var2.d(this);
            this.m.e(this.h);
            this.m.f(this.i);
            if (this.q) {
                rj1 rj1Var = this.m.z;
                t70 t70Var = this.p;
                synchronized (rj1Var) {
                    rj1Var.a = t70Var;
                }
            }
        }
    }

    @Override // defpackage.x70
    public final synchronized void destroy() {
        if (this.r) {
            return;
        }
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            kj1Var.i(this);
            this.m = null;
        }
        this.g.clear();
        this.h.removeAllViews();
        this.i.removeAllViews();
        this.g = null;
        this.h = null;
        this.i = null;
        this.k = null;
        this.n = null;
        this.r = true;
    }

    @Override // defpackage.xl1
    public final FrameLayout e2() {
        return this.i;
    }

    @Override // defpackage.xl1
    public final x20 g0() {
        return this.o;
    }

    @Override // defpackage.x70
    public final synchronized void j2(x20 x20Var) {
        if (this.r) {
            return;
        }
        this.o = x20Var;
    }

    @Override // defpackage.x70
    public final void k3(x20 x20Var) {
        onTouch(this.h, (MotionEvent) y20.l0(x20Var));
    }

    @Override // defpackage.xl1
    public final synchronized void l0(String str, View view, boolean z) {
        if (this.r) {
            return;
        }
        if (view == null) {
            this.g.remove(str);
            return;
        }
        this.g.put(str, new WeakReference<>(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
            if (zzbn.zzdn(this.l)) {
                view.setOnTouchListener(this);
            }
            view.setClickable(true);
            view.setOnClickListener(this);
        }
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            synchronized (kj1Var) {
                kj1Var.j.N();
            }
            this.m.c(view, this.h, L3(), z4(), false);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            kj1Var.g(this.h, L3(), z4(), kj1.o(this.h));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            kj1Var.g(this.h, L3(), z4(), kj1.o(this.h));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            FrameLayout frameLayout = this.h;
            synchronized (kj1Var) {
                kj1Var.j.f(view, motionEvent, frameLayout);
            }
        }
        return false;
    }

    @Override // defpackage.x70
    public final synchronized void s2(String str, x20 x20Var) {
        l0(str, (View) y20.l0(x20Var), true);
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> s5() {
        return null;
    }

    @Override // defpackage.xl1
    public final synchronized String v6() {
        return this.f;
    }

    @Override // defpackage.x70
    public final synchronized void x6(t70 t70Var) {
        if (this.r) {
            return;
        }
        this.q = true;
        this.p = t70Var;
        kj1 kj1Var = this.m;
        if (kj1Var != null) {
            rj1 rj1Var = kj1Var.z;
            synchronized (rj1Var) {
                rj1Var.a = t70Var;
            }
        }
    }

    @Override // defpackage.xl1
    public final /* synthetic */ View y5() {
        return this.h;
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> z4() {
        return this.g;
    }
}
