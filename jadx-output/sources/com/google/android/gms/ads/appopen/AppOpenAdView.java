package com.google.android.gms.ads.appopen;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.zza;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.bi;
import defpackage.is0;
import defpackage.it3;
import defpackage.sn3;
import defpackage.x20;
import defpackage.y20;

@Deprecated
/* loaded from: classes.dex */
public final class AppOpenAdView extends ViewGroup {
    public AppOpenAd e;
    public AppOpenAdPresentationCallback f;

    public AppOpenAdView(Context context) {
        super(context);
        bi.j(context, "Context cannot be null");
    }

    private final AdSize getAdSize() {
        it3 it3VarB = this.e.b();
        if (it3VarB == null) {
            return null;
        }
        try {
            zzvt zzvtVarZzkk = it3VarB.zzkk();
            if (zzvtVarZzkk != null) {
                return zza.zza(zzvtVarZzkk.i, zzvtVarZzkk.f, zzvtVarZzkk.e);
            }
            return null;
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z, int i, int i2, int i3, int i4) {
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            return;
        }
        int measuredWidth = childAt.getMeasuredWidth();
        int measuredHeight = childAt.getMeasuredHeight();
        int i5 = ((i3 - i) - measuredWidth) / 2;
        int i6 = ((i4 - i2) - measuredHeight) / 2;
        childAt.layout(i5, i6, measuredWidth + i5, measuredHeight + i6);
    }

    @Override // android.view.View
    public final void onMeasure(int i, int i2) {
        int heightInPixels;
        int measuredWidth = 0;
        View childAt = getChildAt(0);
        if (childAt == null || childAt.getVisibility() == 8) {
            AdSize adSize = null;
            try {
                adSize = getAdSize();
            } catch (NullPointerException e) {
                is0.zzc("Unable to retrieve ad size.", e);
            }
            if (adSize != null) {
                Context context = getContext();
                int widthInPixels = adSize.getWidthInPixels(context);
                heightInPixels = adSize.getHeightInPixels(context);
                measuredWidth = widthInPixels;
            } else {
                heightInPixels = 0;
            }
        } else {
            measureChild(childAt, i, i2);
            measuredWidth = childAt.getMeasuredWidth();
            heightInPixels = childAt.getMeasuredHeight();
        }
        setMeasuredDimension(View.resolveSize(Math.max(measuredWidth, getSuggestedMinimumWidth()), i), View.resolveSize(Math.max(heightInPixels, getSuggestedMinimumHeight()), i2));
    }

    public final void setAppOpenAd(AppOpenAd appOpenAd) {
        x20 x20VarZzki;
        try {
            it3 it3VarB = appOpenAd.b();
            if (it3VarB == null || (x20VarZzki = it3VarB.zzki()) == null) {
                return;
            }
            View view = (View) y20.l0(x20VarZzki);
            if (view.getParent() != null) {
                is0.zzex("Trying to set AppOpenAd which is already in use.");
                return;
            }
            removeAllViews();
            addView(view);
            this.e = appOpenAd;
            if (this.f != null) {
                appOpenAd.a(new sn3(this.f));
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setAppOpenAdPresentationCallback(AppOpenAdPresentationCallback appOpenAdPresentationCallback) {
        this.f = appOpenAdPresentationCallback;
        AppOpenAd appOpenAd = this.e;
        if (appOpenAd == null || appOpenAdPresentationCallback == null) {
            return;
        }
        appOpenAd.a(new sn3(this.f));
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    public AppOpenAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
    }
}
