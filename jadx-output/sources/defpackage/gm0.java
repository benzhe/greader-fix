package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzauj;

/* loaded from: classes.dex */
public final class gm0 extends qd3 implements em0 {
    public gm0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // defpackage.em0
    public final void W3(zzauj zzaujVar, lm0 lm0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaujVar);
        rd3.b(parcelL0, lm0Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.em0
    public final void e3(zzauj zzaujVar, lm0 lm0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaujVar);
        rd3.b(parcelL0, lm0Var);
        g0(5, parcelL0);
    }

    @Override // defpackage.em0
    public final void n5(String str, lm0 lm0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, lm0Var);
        g0(7, parcelL0);
    }

    @Override // defpackage.em0
    public final void y3(zzauj zzaujVar, lm0 lm0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaujVar);
        rd3.b(parcelL0, lm0Var);
        g0(4, parcelL0);
    }
}
