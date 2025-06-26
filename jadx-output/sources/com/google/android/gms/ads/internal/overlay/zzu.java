package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.RemoteException;
import defpackage.er3;
import defpackage.os3;
import defpackage.wk0;
import defpackage.x20;
import defpackage.y40;

/* loaded from: classes.dex */
public final class zzu extends wk0 {
    public AdOverlayInfoParcel e;
    public Activity f;
    public boolean g = false;
    public boolean h = false;

    public zzu(Activity activity, AdOverlayInfoParcel adOverlayInfoParcel) {
        this.e = adOverlayInfoParcel;
        this.f = activity;
    }

    public final synchronized void W6() {
        if (!this.h) {
            zzp zzpVar = this.e.zzduf;
            if (zzpVar != null) {
                zzpVar.zza(zzl.OTHER);
            }
            this.h = true;
        }
    }

    @Override // defpackage.xk0
    public final void onActivityResult(int i, int i2, Intent intent) throws RemoteException {
    }

    @Override // defpackage.xk0
    public final void onBackPressed() throws RemoteException {
    }

    @Override // defpackage.xk0
    public final void onCreate(Bundle bundle) {
        zzp zzpVar;
        if (((Boolean) os3.j.f.a(y40.j5)).booleanValue()) {
            this.f.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.e;
        if (adOverlayInfoParcel == null) {
            this.f.finish();
            return;
        }
        if (z) {
            this.f.finish();
            return;
        }
        if (bundle == null) {
            er3 er3Var = adOverlayInfoParcel.zzchr;
            if (er3Var != null) {
                er3Var.onAdClicked();
            }
            if (this.f.getIntent() != null && this.f.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzpVar = this.e.zzduf) != null) {
                zzpVar.zzvz();
            }
        }
        com.google.android.gms.ads.internal.zzr.zzkt();
        Activity activity = this.f;
        AdOverlayInfoParcel adOverlayInfoParcel2 = this.e;
        zzb zzbVar = adOverlayInfoParcel2.zzdue;
        if (zza.zza(activity, zzbVar, adOverlayInfoParcel2.zzduj, zzbVar.zzdjj)) {
            return;
        }
        this.f.finish();
    }

    @Override // defpackage.xk0
    public final void onDestroy() throws RemoteException {
        if (this.f.isFinishing()) {
            W6();
        }
    }

    @Override // defpackage.xk0
    public final void onPause() throws RemoteException {
        zzp zzpVar = this.e.zzduf;
        if (zzpVar != null) {
            zzpVar.onPause();
        }
        if (this.f.isFinishing()) {
            W6();
        }
    }

    @Override // defpackage.xk0
    public final void onRestart() throws RemoteException {
    }

    @Override // defpackage.xk0
    public final void onResume() throws RemoteException {
        if (this.g) {
            this.f.finish();
            return;
        }
        this.g = true;
        zzp zzpVar = this.e.zzduf;
        if (zzpVar != null) {
            zzpVar.onResume();
        }
    }

    @Override // defpackage.xk0
    public final void onSaveInstanceState(Bundle bundle) throws RemoteException {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.g);
    }

    @Override // defpackage.xk0
    public final void onStart() throws RemoteException {
    }

    @Override // defpackage.xk0
    public final void onStop() throws RemoteException {
        if (this.f.isFinishing()) {
            W6();
        }
    }

    @Override // defpackage.xk0
    public final void onUserLeaveHint() throws RemoteException {
        zzp zzpVar = this.e.zzduf;
        if (zzpVar != null) {
            zzpVar.onUserLeaveHint();
        }
    }

    @Override // defpackage.xk0
    public final void zzae(x20 x20Var) throws RemoteException {
    }

    @Override // defpackage.xk0
    public final void zzdq() throws RemoteException {
    }

    @Override // defpackage.xk0
    public final boolean zzwh() throws RemoteException {
        return false;
    }
}
