package com.google.android.gms.ads.formats;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import defpackage.bi;
import defpackage.is0;
import defpackage.os3;
import defpackage.x20;
import defpackage.x70;
import defpackage.y20;
import defpackage.y40;

@Deprecated
/* loaded from: classes.dex */
public class NativeAdView extends FrameLayout {
    public final FrameLayout e;
    public final x70 f;

    public NativeAdView(Context context) {
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
    public void addView(View view, int i, ViewGroup.LayoutParams layoutParams) {
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
    public void bringChildToFront(View view) {
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
        bi.j(this.e, "createDelegate must be called after mOverlayFrame has been created");
        if (isInEditMode()) {
            return null;
        }
        return os3.j.b.a(this.e.getContext(), this, this.e);
    }

    public void destroy() {
        try {
            this.f.destroy();
        } catch (RemoteException e) {
            is0.zzc("Unable to destroy native ad view", e);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchTouchEvent(MotionEvent motionEvent) {
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

    public AdChoicesView getAdChoicesView() {
        View viewB = b(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW);
        if (viewB instanceof AdChoicesView) {
            return (AdChoicesView) viewB;
        }
        return null;
    }

    @Override // android.view.View
    public void onVisibilityChanged(View view, int i) {
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
    public void removeAllViews() {
        super.removeAllViews();
        super.addView(this.e);
    }

    @Override // android.view.ViewGroup, android.view.ViewManager
    public void removeView(View view) {
        if (this.e == view) {
            return;
        }
        super.removeView(view);
    }

    public void setAdChoicesView(AdChoicesView adChoicesView) {
        a(NativeAd.ASSET_ADCHOICES_CONTAINER_VIEW, adChoicesView);
    }

    public void setNativeAd(NativeAd nativeAd) {
        try {
            this.f.c0((x20) nativeAd.a());
        } catch (RemoteException e) {
            is0.zzc("Unable to call setNativeAd on delegate", e);
        }
    }

    public NativeAdView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.e = c(context);
        this.f = d();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        this.e = c(context);
        this.f = d();
    }

    public NativeAdView(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i, i2);
        this.e = c(context);
        this.f = d();
    }
}
