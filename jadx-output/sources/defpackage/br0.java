package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzatj;
import com.google.android.gms.internal.ads.zzazi;
import java.util.List;

/* loaded from: classes.dex */
public final class br0 extends qd3 implements zq0 {
    public br0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // defpackage.zq0
    public final void R5(x20 x20Var, zzazi zzaziVar, yq0 yq0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        rd3.c(parcelL0, zzaziVar);
        rd3.b(parcelL0, yq0Var);
        g0(1, parcelL0);
    }

    @Override // defpackage.zq0
    public final void U5(List<Uri> list, x20 x20Var, kl0 kl0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeTypedList(list);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, kl0Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.zq0
    public final void Z1(zzatj zzatjVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzatjVar);
        g0(7, parcelL0);
    }

    @Override // defpackage.zq0
    public final void h1(List<Uri> list, x20 x20Var, kl0 kl0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeTypedList(list);
        rd3.b(parcelL0, x20Var);
        rd3.b(parcelL0, kl0Var);
        g0(5, parcelL0);
    }

    @Override // defpackage.zq0
    public final void o0(x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        g0(2, parcelL0);
    }
}
