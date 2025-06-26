package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzaqr;
import com.google.android.gms.internal.ads.zzvq;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class xi0 extends qd3 implements vi0 {
    public xi0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.mediation.client.rtb.IRtbAdapter");
    }

    @Override // defpackage.vi0
    public final void B2(String str, String str2, zzvq zzvqVar, x20 x20Var, ii0 ii0Var, ng0 ng0Var, zzvt zzvtVar) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ii0Var);
        rd3.b(parcelL0, ng0Var);
        rd3.c(parcelL0, zzvtVar);
        g0(13, parcelL0);
    }

    @Override // defpackage.vi0
    public final void C6(String str, String str2, zzvq zzvqVar, x20 x20Var, ti0 ti0Var, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ti0Var);
        rd3.b(parcelL0, ng0Var);
        g0(20, parcelL0);
    }

    @Override // defpackage.vi0
    public final void K5(String str, String str2, zzvq zzvqVar, x20 x20Var, ti0 ti0Var, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ti0Var);
        rd3.b(parcelL0, ng0Var);
        g0(16, parcelL0);
    }

    @Override // defpackage.vi0
    public final zzaqr M() throws RemoteException {
        Parcel parcelZ = Z(3, l0());
        zzaqr zzaqrVar = (zzaqr) rd3.a(parcelZ, zzaqr.CREATOR);
        parcelZ.recycle();
        return zzaqrVar;
    }

    @Override // defpackage.vi0
    public final zzaqr O() throws RemoteException {
        Parcel parcelZ = Z(2, l0());
        zzaqr zzaqrVar = (zzaqr) rd3.a(parcelZ, zzaqr.CREATOR);
        parcelZ.recycle();
        return zzaqrVar;
    }

    @Override // defpackage.vi0
    public final boolean Q6(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(17, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.vi0
    public final void S3(String str, String str2, zzvq zzvqVar, x20 x20Var, oi0 oi0Var, ng0 ng0Var, zzaei zzaeiVar) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, oi0Var);
        rd3.b(parcelL0, ng0Var);
        rd3.c(parcelL0, zzaeiVar);
        g0(22, parcelL0);
    }

    @Override // defpackage.vi0
    public final void a3(x20 x20Var, String str, Bundle bundle, Bundle bundle2, zzvt zzvtVar, aj0 aj0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        rd3.c(parcelL0, bundle);
        rd3.c(parcelL0, bundle2);
        rd3.c(parcelL0, zzvtVar);
        rd3.b(parcelL0, aj0Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.vi0
    public final void e6(String str, String str2, zzvq zzvqVar, x20 x20Var, ni0 ni0Var, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ni0Var);
        rd3.b(parcelL0, ng0Var);
        g0(14, parcelL0);
    }

    @Override // defpackage.vi0
    public final su3 getVideoController() throws RemoteException {
        Parcel parcelZ = Z(5, l0());
        su3 su3VarW6 = vu3.W6(parcelZ.readStrongBinder());
        parcelZ.recycle();
        return su3VarW6;
    }

    @Override // defpackage.vi0
    public final boolean i6(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        Parcel parcelZ = Z(15, parcelL0);
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.vi0
    public final void t0(String str, String str2, zzvq zzvqVar, x20 x20Var, oi0 oi0Var, ng0 ng0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, oi0Var);
        rd3.b(parcelL0, ng0Var);
        g0(18, parcelL0);
    }

    @Override // defpackage.vi0
    public final void x3(String str, String str2, zzvq zzvqVar, x20 x20Var, ii0 ii0Var, ng0 ng0Var, zzvt zzvtVar) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        parcelL0.writeString(str2);
        rd3.c(parcelL0, zzvqVar);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, ii0Var);
        rd3.b(parcelL0, ng0Var);
        rd3.c(parcelL0, zzvtVar);
        g0(21, parcelL0);
    }

    @Override // defpackage.vi0
    public final void z1(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(19, parcelL0);
    }
}
