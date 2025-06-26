package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaaz;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;
import com.google.android.gms.internal.ads.zzwc;
import com.google.android.gms.internal.ads.zzzj;

/* loaded from: classes.dex */
public interface it3 extends IInterface {
    void destroy() throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getAdUnitId() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    su3 getVideoController() throws RemoteException;

    boolean isLoading() throws RemoteException;

    boolean isReady() throws RemoteException;

    void pause() throws RemoteException;

    void resume() throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void setManualImpressionsEnabled(boolean z) throws RemoteException;

    void setUserId(String str) throws RemoteException;

    void showInterstitial() throws RemoteException;

    void stopLoading() throws RemoteException;

    void zza(zzaaz zzaazVar) throws RemoteException;

    void zza(zzvq zzvqVar, vs3 vs3Var) throws RemoteException;

    void zza(zzvt zzvtVar) throws RemoteException;

    void zza(zzwc zzwcVar) throws RemoteException;

    void zza(zzzj zzzjVar) throws RemoteException;

    void zza(gl0 gl0Var) throws RemoteException;

    void zza(jl0 jl0Var, String str) throws RemoteException;

    void zza(lt3 lt3Var) throws RemoteException;

    void zza(mu3 mu3Var) throws RemoteException;

    void zza(pn0 pn0Var) throws RemoteException;

    void zza(ps3 ps3Var) throws RemoteException;

    void zza(pt3 pt3Var) throws RemoteException;

    void zza(t50 t50Var) throws RemoteException;

    void zza(us3 us3Var) throws RemoteException;

    void zza(wt3 wt3Var) throws RemoteException;

    void zza(yn3 yn3Var) throws RemoteException;

    void zza(yt3 yt3Var) throws RemoteException;

    boolean zza(zzvq zzvqVar) throws RemoteException;

    void zzbl(String str) throws RemoteException;

    void zze(x20 x20Var) throws RemoteException;

    x20 zzki() throws RemoteException;

    void zzkj() throws RemoteException;

    zzvt zzkk() throws RemoteException;

    String zzkl() throws RemoteException;

    ru3 zzkm() throws RemoteException;

    pt3 zzkn() throws RemoteException;

    us3 zzko() throws RemoteException;
}
