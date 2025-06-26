package defpackage;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.FrameLayout;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.formats.NativeContentAd;
import com.google.android.gms.ads.internal.zzr;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class ok1 extends e80 implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener, xl1 {
    public final WeakReference<View> f;
    public final Map<String, WeakReference<View>> g = new HashMap();
    public final Map<String, WeakReference<View>> h = new HashMap();
    public final Map<String, WeakReference<View>> i = new HashMap();
    public kj1 j;
    public am3 k;

    public ok1(View view, HashMap<String, View> map, HashMap<String, View> map2) {
        view.setOnTouchListener(this);
        view.setOnClickListener(this);
        zzr.zzls();
        ft0.a(view, this);
        zzr.zzls();
        ft0.b(view, this);
        this.f = new WeakReference<>(view);
        for (Map.Entry<String, View> entry : map.entrySet()) {
            String key = entry.getKey();
            View value = entry.getValue();
            if (value != null) {
                this.g.put(key, new WeakReference<>(value));
                if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(key) && !"3011".equals(key)) {
                    value.setOnTouchListener(this);
                    value.setClickable(true);
                    value.setOnClickListener(this);
                }
            }
        }
        this.i.putAll(this.g);
        for (Map.Entry<String, View> entry2 : map2.entrySet()) {
            View value2 = entry2.getValue();
            if (value2 != null) {
                this.h.put(entry2.getKey(), new WeakReference<>(value2));
                value2.setOnTouchListener(this);
                value2.setClickable(false);
            }
        }
        this.i.putAll(this.h);
        this.k = new am3(view.getContext(), view);
    }

    @Override // defpackage.f80
    public final synchronized void I(x20 x20Var) {
        if (this.j != null) {
            Object objL0 = y20.l0(x20Var);
            if (!(objL0 instanceof View)) {
                is0.zzez("Calling NativeAdViewHolderNonagonDelegate.setClickConfirmingView with wrong wrapped object");
            }
            kj1 kj1Var = this.j;
            View view = (View) objL0;
            synchronized (kj1Var) {
                kj1Var.j.c(view);
            }
        }
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> L3() {
        return this.i;
    }

    @Override // defpackage.xl1
    public final synchronized View S2(String str) {
        WeakReference<View> weakReference = this.i.get(str);
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    @Override // defpackage.xl1
    public final am3 Y2() {
        return this.k;
    }

    @Override // defpackage.xl1
    public final synchronized JSONObject Z() {
        return null;
    }

    @Override // defpackage.f80
    public final synchronized void c0(x20 x20Var) {
        Object objL0 = y20.l0(x20Var);
        if (!(objL0 instanceof kj1)) {
            is0.zzez("Not an instance of InternalNativeAd. This is most likely a transient error");
            return;
        }
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            kj1Var.i(this);
        }
        if (!((kj1) objL0).l.d()) {
            is0.zzex("Your account must be enabled to use this feature. Talk to your account manager to request this feature for your account.");
            return;
        }
        kj1 kj1Var2 = (kj1) objL0;
        this.j = kj1Var2;
        kj1Var2.d(this);
        this.j.e(y5());
    }

    @Override // defpackage.xl1
    public final FrameLayout e2() {
        return null;
    }

    @Override // defpackage.xl1
    public final synchronized x20 g0() {
        return null;
    }

    @Override // defpackage.xl1
    public final synchronized void l0(String str, View view, boolean z) {
        if (view == null) {
            this.i.remove(str);
            this.g.remove(str);
            this.h.remove(str);
            return;
        }
        this.i.put(str, new WeakReference<>(view));
        if (!NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW.equals(str) && !"3011".equals(str)) {
            this.g.put(str, new WeakReference<>(view));
            view.setClickable(true);
            view.setOnClickListener(this);
            view.setOnTouchListener(this);
        }
    }

    @Override // defpackage.f80
    public final synchronized void o5() {
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            kj1Var.i(this);
            this.j = null;
        }
    }

    @Override // android.view.View.OnClickListener
    public final synchronized void onClick(View view) {
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            kj1Var.c(view, y5(), L3(), z4(), true);
        }
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public final synchronized void onGlobalLayout() {
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            kj1Var.g(y5(), L3(), z4(), kj1.o(y5()));
        }
    }

    @Override // android.view.ViewTreeObserver.OnScrollChangedListener
    public final synchronized void onScrollChanged() {
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            kj1Var.g(y5(), L3(), z4(), kj1.o(y5()));
        }
    }

    @Override // android.view.View.OnTouchListener
    public final synchronized boolean onTouch(View view, MotionEvent motionEvent) {
        kj1 kj1Var = this.j;
        if (kj1Var != null) {
            View viewY5 = y5();
            synchronized (kj1Var) {
                kj1Var.j.f(view, motionEvent, viewY5);
            }
        }
        return false;
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> s5() {
        return this.h;
    }

    @Override // defpackage.xl1
    public final synchronized String v6() {
        return NativeContentAd.ASSET_ATTRIBUTION_ICON_IMAGE;
    }

    @Override // defpackage.xl1
    public final View y5() {
        return this.f.get();
    }

    @Override // defpackage.xl1
    public final synchronized Map<String, WeakReference<View>> z4() {
        return this.g;
    }
}
