package com.google.android.gms.ads.search;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdSize;
import defpackage.bv3;
import defpackage.is0;

/* loaded from: classes.dex */
public final class SearchAdView extends ViewGroup {
    public final bv3 e;

    public SearchAdView(Context context) {
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

    public final String getAdUnitId() {
        return this.e.c();
    }

    public final void loadAd(SearchAdRequest searchAdRequest) {
        this.e.o(searchAdRequest.a);
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

    public final void resume() {
        this.e.h();
    }

    public final void setAdListener(AdListener adListener) {
        this.e.i(adListener);
    }

    public final void setAdSize(AdSize adSize) {
        bv3 bv3Var = this.e;
        AdSize[] adSizeArr = {adSize};
        if (bv3Var.g != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        bv3Var.p(adSizeArr);
    }

    public final void setAdUnitId(String str) {
        this.e.j(str);
    }

    public SearchAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = new bv3(this, attributeSet, false);
    }

    public final void loadAd(DynamicHeightSearchAdRequest dynamicHeightSearchAdRequest) {
        if (AdSize.SEARCH.equals(getAdSize())) {
            this.e.o(dynamicHeightSearchAdRequest.a.a);
            return;
        }
        throw new IllegalStateException("You must use AdSize.SEARCH for a DynamicHeightSearchAdRequest");
    }

    public SearchAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = new bv3(this, attributeSet, false);
    }
}
