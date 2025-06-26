package defpackage;

import android.os.Bundle;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.measurement.internal.zzaa;
import com.google.android.gms.measurement.internal.zzas;
import com.google.android.gms.measurement.internal.zzkr;
import com.google.android.gms.measurement.internal.zzp;
import java.util.List;

/* loaded from: classes.dex */
public interface hw4 extends IInterface {
    void E0(zzp zzpVar) throws RemoteException;

    void G5(zzp zzpVar) throws RemoteException;

    byte[] I3(zzas zzasVar, String str) throws RemoteException;

    void I6(zzas zzasVar, zzp zzpVar) throws RemoteException;

    List<zzkr> M6(String str, String str2, String str3, boolean z) throws RemoteException;

    List<zzkr> Q2(String str, String str2, boolean z, zzp zzpVar) throws RemoteException;

    List<zzaa> V2(String str, String str2, String str3) throws RemoteException;

    String Z0(zzp zzpVar) throws RemoteException;

    void h3(zzp zzpVar) throws RemoteException;

    void j4(zzp zzpVar) throws RemoteException;

    List<zzaa> q0(String str, String str2, zzp zzpVar) throws RemoteException;

    void w4(zzkr zzkrVar, zzp zzpVar) throws RemoteException;

    void x2(zzaa zzaaVar, zzp zzpVar) throws RemoteException;

    void y2(long j, String str, String str2, String str3) throws RemoteException;

    void z3(Bundle bundle, zzp zzpVar) throws RemoteException;
}
