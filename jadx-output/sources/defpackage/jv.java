package defpackage;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.AdRequest;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.doubleclick.AppEventListener;
import java.util.Objects;

/* loaded from: classes.dex */
public class jv extends ViewGroup {
    public final bv3 e;

    public jv(Context context, int i) {
        super(context);
        this.e = new bv3(this, null, false, nr3.a, i);
    }

    public void destroy() {
        this.e.a();
    }

    public AdListener getAdListener() {
        return this.e.f;
    }

    public AdSize getAdSize() {
        return this.e.b();
    }

    public String getAdUnitId() {
        return this.e.c();
    }

    @Deprecated
    public String getMediationAdapterClassName() {
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

    public ResponseInfo getResponseInfo() {
        return this.e.d();
    }

    public boolean isLoading() {
        return this.e.e();
    }

    public void loadAd(AdRequest adRequest) {
        this.e.o(adRequest.zzdt());
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z, int i, int i2, int i3, int i4) {
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
    public void onMeasure(int i, int i2) {
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

    public void pause() {
        this.e.f();
    }

    public void resume() {
        this.e.h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void setAdListener(AdListener adListener) {
        this.e.i(adListener);
        if (adListener == 0) {
            this.e.n(null);
            this.e.m(null);
            return;
        }
        if (adListener instanceof er3) {
            this.e.n((er3) adListener);
        }
        if (adListener instanceof AppEventListener) {
            this.e.m((AppEventListener) adListener);
        }
    }

    public void setAdSize(AdSize adSize) {
        bv3 bv3Var = this.e;
        AdSize[] adSizeArr = {adSize};
        if (bv3Var.g != null) {
            throw new IllegalStateException("The ad size can only be set once on AdView.");
        }
        bv3Var.p(adSizeArr);
    }

    public void setAdUnitId(String str) {
        this.e.j(str);
    }

    public void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        bv3 bv3Var = this.e;
        Objects.requireNonNull(bv3Var);
        try {
            bv3Var.q = onPaidEventListener;
            it3 it3Var = bv3Var.j;
            if (it3Var != null) {
                it3Var.zza(new c40(onPaidEventListener));
            }
        } catch (RemoteException e) {
            is0.zze("#008 Must be called on the main UI thread.", e);
        }
    }

    public jv(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet);
        this.e = new bv3(this, attributeSet, false, nr3.a, i);
    }

    public jv(Context context, AttributeSet attributeSet, int i, int i2) {
        super(context, attributeSet, i);
        this.e = new bv3(this, attributeSet, false, nr3.a, i2);
    }
}
