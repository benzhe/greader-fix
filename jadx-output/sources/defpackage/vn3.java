package defpackage;

import android.app.Activity;
import android.os.RemoteException;
import com.google.android.gms.ads.FullScreenContentCallback;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.appopen.AppOpenAd;

/* loaded from: classes.dex */
public final class vn3 extends AppOpenAd {
    public final xn3 a;
    public final String b;
    public final un3 c = new un3();
    public FullScreenContentCallback d;
    public OnPaidEventListener e;

    public vn3(xn3 xn3Var, String str) {
        this.a = xn3Var;
        this.b = str;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void a(co3 co3Var) {
        try {
            this.a.r6(co3Var);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final it3 b() {
        try {
            return this.a.d2();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final String getAdUnitId() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final FullScreenContentCallback getFullScreenContentCallback() {
        return this.d;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final OnPaidEventListener getOnPaidEventListener() {
        return this.e;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final ResponseInfo getResponseInfo() {
        ru3 ru3VarZzkm;
        try {
            ru3VarZzkm = this.a.zzkm();
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
            ru3VarZzkm = null;
        }
        return ResponseInfo.zza(ru3VarZzkm);
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setFullScreenContentCallback(FullScreenContentCallback fullScreenContentCallback) {
        this.d = fullScreenContentCallback;
        this.c.e = fullScreenContentCallback;
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setImmersiveMode(boolean z) {
        try {
            this.a.setImmersiveMode(z);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void setOnPaidEventListener(OnPaidEventListener onPaidEventListener) {
        this.e = onPaidEventListener;
        try {
            this.a.zza(new c40(onPaidEventListener));
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity, FullScreenContentCallback fullScreenContentCallback) {
        this.d = fullScreenContentCallback;
        this.c.e = fullScreenContentCallback;
        if (activity == null) {
            is0.zzez("The activity for show is null, will proceed with show using the context provided when loading the ad.");
        }
        try {
            this.a.d1(new y20(activity), this.c);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }

    @Override // com.google.android.gms.ads.appopen.AppOpenAd
    public final void show(Activity activity) {
        try {
            this.a.d1(new y20(activity), this.c);
        } catch (RemoteException e) {
            is0.zze("#007 Could not call remote method.", e);
        }
    }
}
