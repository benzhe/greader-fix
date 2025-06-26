package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaww;
import com.google.android.gms.internal.ads.zzvq;

/* loaded from: classes.dex */
public interface fo0 extends IInterface {
    void E6(zzaww zzawwVar) throws RemoteException;

    void I5(zzvq zzvqVar, no0 no0Var) throws RemoteException;

    void J5(go0 go0Var) throws RemoteException;

    void S6(x20 x20Var, boolean z) throws RemoteException;

    void T4(zzvq zzvqVar, no0 no0Var) throws RemoteException;

    bo0 c2() throws RemoteException;

    Bundle getAdMetadata() throws RemoteException;

    String getMediationAdapterClassName() throws RemoteException;

    boolean isLoaded() throws RemoteException;

    void r4(lu3 lu3Var) throws RemoteException;

    void setImmersiveMode(boolean z) throws RemoteException;

    void t5(oo0 oo0Var) throws RemoteException;

    void zza(mu3 mu3Var) throws RemoteException;

    void zze(x20 x20Var) throws RemoteException;

    ru3 zzkm() throws RemoteException;
}
