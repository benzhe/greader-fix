package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.AdManagerAdViewOptions;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;
import com.google.android.gms.internal.ads.zzaei;
import com.google.android.gms.internal.ads.zzajy;
import com.google.android.gms.internal.ads.zzvt;

/* loaded from: classes.dex */
public final class dt3 extends qd3 implements bt3 {
    public dt3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // defpackage.bt3
    public final void G3(o90 o90Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, o90Var);
        g0(10, parcelL0);
    }

    @Override // defpackage.bt3
    public final void H2(j90 j90Var, zzvt zzvtVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, j90Var);
        rd3.c(parcelL0, zzvtVar);
        g0(8, parcelL0);
    }

    @Override // defpackage.bt3
    public final void I1(PublisherAdViewOptions publisherAdViewOptions) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, publisherAdViewOptions);
        g0(9, parcelL0);
    }

    @Override // defpackage.bt3
    public final void J6(us3 us3Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, us3Var);
        g0(2, parcelL0);
    }

    @Override // defpackage.bt3
    public final void Q3(z80 z80Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, z80Var);
        g0(4, parcelL0);
    }

    @Override // defpackage.bt3
    public final void X0(zzaei zzaeiVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaeiVar);
        g0(6, parcelL0);
    }

    @Override // defpackage.bt3
    public final void a1(AdManagerAdViewOptions adManagerAdViewOptions) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, adManagerAdViewOptions);
        g0(15, parcelL0);
    }

    @Override // defpackage.bt3
    public final at3 o4() throws RemoteException {
        at3 ct3Var;
        Parcel parcelZ = Z(1, l0());
        IBinder strongBinder = parcelZ.readStrongBinder();
        if (strongBinder == null) {
            ct3Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoader");
            ct3Var = iInterfaceQueryLocalInterface instanceof at3 ? (at3) iInterfaceQueryLocalInterface : new ct3(strongBinder);
        }
        parcelZ.recycle();
        return ct3Var;
    }

    @Override // defpackage.bt3
    public final void u3(ed0 ed0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, ed0Var);
        g0(14, parcelL0);
    }

    @Override // defpackage.bt3
    public final void w6(zzajy zzajyVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzajyVar);
        g0(13, parcelL0);
    }

    @Override // defpackage.bt3
    public final void x1(u80 u80Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, u80Var);
        g0(3, parcelL0);
    }

    @Override // defpackage.bt3
    public final void z5(String str, g90 g90Var, a90 a90Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, g90Var);
        rd3.b(parcelL0, a90Var);
        g0(5, parcelL0);
    }
}
