package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.formats.UnifiedNativeAdView;
import defpackage.bi;
import defpackage.is0;
import defpackage.k70;
import defpackage.l70;
import defpackage.os3;
import defpackage.x20;
import defpackage.x70;
import defpackage.y20;
import defpackage.y40;
import java.util.Objects;

@Deprecated
/* loaded from: classes.dex */
public final class UnifiedNativeAdView extends FrameLayout {
    public final FrameLayout e;
    public final x70 f;

    public UnifiedNativeAdView(Context context) {
        super(context);
        this.e = c(context);
        this.f = d();
    }

    public final void a(String str, View view) {
        try {
            this.f.s2(str, new y20(view));
        } catch (RemoteException e) {
            is0.zzc("Unable to call setAssetView on delegate", e);
        }
    }

    @Override // android.view.ViewGroup
    public final void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
        super.addView(view, i, layoutParams);
        super.bringChildToFront(this.e);
    }

    public final View b(String str) {
        try {
            x20 x20VarC4 = this.f.C4(str);
            if (x20VarC4 != null) {
                return (View) y20.l0(x20VarC4);
            }
            return null;
        } catch (RemoteException e) {
            is0.zzc("Unable to call getAssetView on delegate", e);
            return null;
        }
    }

    @Override // android.view.ViewGroup, android.view.ViewParent
    public final void bringChildToFront(View view) {
        super.bringChildToFront(view);
        FrameLayout frameLayout = this.e;
        if (frameLayout != view) {
            super.bringChildToFront(frameLayout);
        }
    }

    public final FrameLayout c(Context context) {
        FrameLayout frameLayout = new FrameLayout(context);
        frameLayout.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        addView(frameLayout);
        return frameLayout;
    }

    public final x70 d() {
        bi.j(this.e, "createDelegate must be called after overlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return os3.j.b.a(this.e.getContext(), this, this.e);
    }

    public final void destroy() {
        try {
            this.f.destroy();
        } catch (RemoteException e) {
            is0.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public final boolean dispatchTouchEvent(MotionEvent motionEvent) {
        x70 x70Var;
        if (((Boolean) os3.j.f.a(y40.L1)).booleanValue() && (x70Var = this.f) != null) {
            try {
                x70Var.k3(new y20(motionEvent));
            } catch (RemoteException e) {
                is0.zzc("Unable to call handleTouchEvent on delegate", e);
            }
        }
        return super.dispatchTouchEvent(motionEvent);
    }

    public final AdChoicesView getAdChoicesView() {
        View viewB = b("3011");
        if (viewB instanceof AdChoicesView) {
            return (AdChoicesView) viewB;
        }
        return null;
    }

    public final View getAdvertiserView() {
        return b("3005");
    }

    public final View getBodyView() {
        return b("3004");
    }

    public final View getCallToActionView() {
        return b("3002");
    }

    public final View getHeadlineView() {
        return b("3001");
    }

    public final View getIconView() {
        return b("3003");
    }

    public final View getImageView() {
        return b("3008");
    }

    public final MediaView getMediaView() {
        View viewB = b("3010");
        if (viewB instanceof MediaView) {
            return (MediaView) viewB;
        }
        if (viewB == null) {
            return null;
        }
        is0.zzdz("View is not an instance of MediaView");
        return null;
    }

    public final View getPriceView() {
        return b("3007");
    }

    public final View getStarRatingView() {
        return b("3009");
    }

    public final View getStoreView() {
        return b("3006");
    }

    @Override // android.view.View
    public final void onVisibilityChanged(View view, int i) {
        super.onVisibilityChanged(view, i);
        x70 x70Var = this.f;
        if (x70Var != null) {
            try {
                x70Var.B0(new y20(view), i);
            } catch (RemoteException e) {
                is0.zzc("Unable to call onVisibilityChanged on delegate", e);
            }
        }
    }

    @Override // android.view.ViewGroup
    public final void removeAllViews() {
        super.removeAllViews();
        addView(this.e);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public final void removeView(View view) {
        if (this.e == view) {
            return;
        }
        super.removeView(view);
    }

    public final void setAdChoicesView(AdChoicesView adChoicesView) {
        a("3011", adChoicesView);
    }

    public final void setAdvertiserView(View view) {
        a("3005", view);
    }

    public final void setBodyView(View view) {
        a("3004", view);
    }

    public final void setCallToActionView(View view) {
        a("3002", view);
    }

    public final void setClickConfirmingView(View view) {
        try {
            this.f.I(new y20(view));
        } catch (RemoteException e) {
            is0.zzc("Unable to call setClickConfirmingView on delegate", e);
        }
    }

    public final void setHeadlineView(View view) {
        a("3001", view);
    }

    public final void setIconView(View view) {
        a("3003", view);
    }

    public final void setImageView(View view) {
        a("3008", view);
    }

    public final void setMediaView(MediaView mediaView) {
        a("3010", mediaView);
        if (mediaView != null) {
            k70 k70Var = new k70(this) { // from class: pv
                public final UnifiedNativeAdView a;

                {
                    this.a = this;
                }

                @Override // defpackage.k70
                public final void a(MediaContent mediaContent) {
                    UnifiedNativeAdView unifiedNativeAdView = this.a;
                    Objects.requireNonNull(unifiedNativeAdView);
                    try {
                        if (mediaContent instanceof n30) {
                            unifiedNativeAdView.f.x6(((n30) mediaContent).a);
                        } else if (mediaContent == null) {
                            unifiedNativeAdView.f.x6(null);
                        } else {
                            is0.zzdz("Use MediaContent provided by UnifiedNativeAd.getMediaContent");
                        }
                    } catch (RemoteException e) {
                        is0.zzc("Unable to call setMediaContent on delegate", e);
                    }
                }
            };
            synchronized (mediaView) {
                mediaView.g = k70Var;
                if (mediaView.f) {
                    k70Var.a(mediaView.e);
                }
            }
            l70 l70Var = new l70(this) { // from class: qv
                public final UnifiedNativeAdView a;

                {
                    this.a = this;
                }

                @Override // defpackage.l70
                public final void a(ImageView.ScaleType scaleType) {
                    UnifiedNativeAdView unifiedNativeAdView = this.a;
                    Objects.requireNonNull(unifiedNativeAdView);
                    if (scaleType != null) {
                        try {
                            unifiedNativeAdView.f.j2(new y20(scaleType));
                        } catch (RemoteException e) {
                            is0.zzc("Unable to call setMediaViewImageScaleType on delegate", e);
                        }
                    }
                }
            };
            synchronized (mediaView) {
                mediaView.j = l70Var;
                if (mediaView.i) {
                    l70Var.a(mediaView.h);
                }
            }
        }
    }

    public final void setNativeAd(UnifiedNativeAd unifiedNativeAd) {
        try {
            this.f.c0((x20) unifiedNativeAd.a());
        } catch (RemoteException e) {
            is0.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public final void setPriceView(View view) {
        a("3007", view);
    }

    public final void setStarRatingView(View view) {
        a("3009", view);
    }

    public final void setStoreView(View view) {
        a("3006", view);
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = c(context);
        this.f = d();
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = c(context);
        this.f = d();
    }

    public UnifiedNativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = c(context);
        this.f = d();
    }
}
