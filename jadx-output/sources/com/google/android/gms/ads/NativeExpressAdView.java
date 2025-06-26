package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import defpackage.jv;

@Deprecated
/* loaded from: classes.dex */
public final class NativeExpressAdView extends jv {
    public NativeExpressAdView(Context context) {
        super(context, 1);
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void destroy() {
        super.destroy();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ AdListener getAdListener() {
        return super.getAdListener();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ AdSize getAdSize() {
        return super.getAdSize();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ String getAdUnitId() {
        return super.getAdUnitId();
    }

    @Override // defpackage.jv
    @Deprecated
    public final /* bridge */ /* synthetic */ String getMediationAdapterClassName() {
        return super.getMediationAdapterClassName();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ ResponseInfo getResponseInfo() {
        return super.getResponseInfo();
    }

    public final VideoController getVideoController() {
        return this.e.c;
    }

    public final VideoOptions getVideoOptions() {
        return this.e.l;
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ boolean isLoading() {
        return super.isLoading();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void loadAd(AdRequest adRequest) {
        super.loadAd(adRequest);
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void pause() {
        super.pause();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void resume() {
        super.resume();
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void setAdListener(AdListener adListener) {
        super.setAdListener(adListener);
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void setAdSize(AdSize adSize) {
        super.setAdSize(adSize);
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void setAdUnitId(String str) {
        super.setAdUnitId(str);
    }

    @Override // defpackage.jv
    public final /* bridge */ /* synthetic */ void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        super.setOnPaidEventListener(onPaidEventListener);
    }

    public final void setVideoOptions(VideoOptions videoOptions) {
        this.e.k(videoOptions);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 1);
    }

    public NativeExpressAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 1);
    }
}
