package com.google.android.gms.ads.formats;

import android.os.RemoteException;
import android.view.View;
import defpackage.bi;
import defpackage.f80;
import defpackage.is0;
import defpackage.ks3;
import defpackage.os3;
import defpackage.wr3;
import defpackage.x20;
import defpackage.y20;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.WeakHashMap;

@Deprecated
/* loaded from: classes.dex */
public final class NativeAdViewHolder {
    public static WeakHashMap<View, NativeAdViewHolder> zzbol = new WeakHashMap<>();
    public f80 a;
    public WeakReference<View> b;

    public NativeAdViewHolder(View view, Map<String, View> map, Map<String, View> map2) {
        bi.j(view, "ContainerView must not be null");
        if ((view instanceof NativeAdView) || (view instanceof UnifiedNativeAdView)) {
            is0.zzex("The provided containerView is of type of NativeAdView, which cannot be usedwith NativeAdViewHolder.");
            return;
        }
        if (zzbol.get(view) != null) {
            is0.zzex("The provided containerView is already in use with another NativeAdViewHolder.");
            return;
        }
        zzbol.put(view, this);
        this.b = new WeakReference<>(view);
        HashMap map3 = map == null ? new HashMap() : new HashMap(map);
        HashMap map4 = map2 == null ? new HashMap() : new HashMap(map2);
        wr3 wr3Var = os3.j.b;
        Objects.requireNonNull(wr3Var);
        this.a = new ks3(wr3Var, view, map3, map4).b(view.getContext(), false);
    }

    public final void a(x20 x20Var) {
        WeakReference<View> weakReference = this.b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view == null) {
            is0.zzez("NativeAdViewHolder.setNativeAd containerView doesn't exist, returning");
            return;
        }
        if (!zzbol.containsKey(view)) {
            zzbol.put(view, this);
        }
        f80 f80Var = this.a;
        if (f80Var != null) {
            try {
                f80Var.c0(x20Var);
            } catch (RemoteException e) {
                is0.zzc("Unable to call setNativeAd on delegate", e);
            }
        }
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.a.I(new y20(view));
        } catch (RemoteException e) {
            is0.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setNativeAd(NativeAd nativeAd) {
        a((x20) nativeAd.a());
    }

    public final void unregisterNativeAd() {
        f80 f80Var = this.a;
        if (f80Var != null) {
            try {
                f80Var.o5();
            } catch (RemoteException e) {
                is0.zzc("Unable to call unregisterNativeAd on delegate", e);
            }
        }
        WeakReference<View> weakReference = this.b;
        View view = weakReference != null ? weakReference.get() : null;
        if (view != null) {
            zzbol.remove(view);
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        a((x20) unifiedNativeAd.a());
    }
}
