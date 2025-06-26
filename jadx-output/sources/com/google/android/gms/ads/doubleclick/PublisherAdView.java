package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.Correlator;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.VideoOptions;
import defpackage.bi;
import defpackage.bv3;
import defpackage.is0;
import defpackage.it3;
import defpackage.x50;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class PublisherAdView extends ViewGroup {
    public final bv3 e;

    public PublisherAdView(Context context) {
        super(context);
        this.e = new bv3(this);
    }

    public final void destroy() {
        this.e.a();
    }

    public final AdListener getAdListener() {
        return this.e.f;
    }

    public final AdSize getAdSize() {
        return this.e.b();
    }

    public final AdSize[] getAdSizes() {
        return this.e.g;
    }

    public final String getAdUnitId() {
        return this.e.c();
    }

    public final AppEventListener getAppEventListener() {
        return this.e.i;
    }

    @Deprecated
    public final String getMediationAdapterClassName() {
        bv3 bv3Var = this.e;
        Objects.requireNonNull(bv3Var);
        try {
            it3 it3Var = bv3Var.j;
            if (it3Var != null) {
                return it3Var.zzkl();
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
        return null;
    }

    public final OnCustomRenderedAdLoadedListener getOnCustomRenderedAdLoadedListener() {
        return this.e.k;
    }

    public final ResponseInfo getResponseInfo() {
        return this.e.d();
    }

    public final VideoController getVideoController() {
        return this.e.c;
    }

    public final VideoOptions getVideoOptions() {
        return this.e.l;
    }

    public final boolean isLoading() {
        return this.e.e();
    }

    public final void loadAd(PublisherAdRequest publisherAdRequest) {
        this.e.o(publisherAdRequest.zzdt());
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

    public final void pause() {
        this.e.f();
    }

    public final void recordManualImpression() {
        this.e.g();
    }

    public final void resume() {
        this.e.h();
    }

    public final void setAdListener(AdListener adListener) {
        this.e.i(adListener);
    }

    public final void setAdSizes(AdSize... adSizeArr) {
        if (adSizeArr == null || adSizeArr.length <= 0) {
            throw new IllegalArgumentException("The supported ad sizes must contain at least one valid ad size.");
        }
        this.e.p(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.e.j(str);
    }

    public final void setAppEventListener(AppEventListener appEventListener) {
        this.e.m(appEventListener);
    }

    @Deprecated
    public final void setCorrelator(Correlator correlator) {
    }

    public final void setManualImpressionsEnabled(boolean z) {
        bv3 bv3Var = this.e;
        bv3Var.p = z;
        try {
            it3 it3Var = bv3Var.j;
            if (it3Var != null) {
                it3Var.setManualImpressionsEnabled(z);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setOnCustomRenderedAdLoadedListener(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        bv3 bv3Var = this.e;
        bv3Var.k = onCustomRenderedAdLoadedListener;
        try {
            it3 it3Var = bv3Var.j;
            if (it3Var != null) {
                it3Var.zza(onCustomRenderedAdLoadedListener != null ? new x50(onCustomRenderedAdLoadedListener) : null);
            }
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.e.k(videoOptions);
    }

    public final boolean zza(it3 it3Var) {
        return this.e.q(it3Var);
    }

    public PublisherAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new bv3(this, attributeSet, true);
        bi.j(context, "Context cannot be null");
    }

    public PublisherAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new bv3(this, attributeSet, true);
    }
}
