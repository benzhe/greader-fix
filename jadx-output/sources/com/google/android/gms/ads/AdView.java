package com.google.android.gms.ads;

import android.content.Context;
import android.util.AttributeSet;
import defpackage.bi;
import defpackage.bv3;
import defpackage.jv;

/* loaded from: classes.dex */
public final class AdView extends jv {
    public AdView(Context context) {
        super(context, 0);
        bi.j(context, "Context cannot be null");
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
        bv3 bv3Var = this.e;
        if (bv3Var != null) {
            return bv3Var.c;
        }
        return null;
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

    public AdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet, 0);
    }

    public AdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i, 0);
    }
}
