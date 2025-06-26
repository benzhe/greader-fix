package defpackage;

import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzatj;
import com.google.android.gms.internal.ads.zzazi;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class cr0 extends sd3 implements zq0 {
    public static final /* synthetic */ int e = 0;

    public cr0() {
        super("com.google.android.gms.ads.internal.signals.ISignalGenerator");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        yq0 ar0Var = null;
        switch (i) {
            case 1:
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                zzazi zzaziVar = (zzazi) rd3.a(parcel, zzazi.CREATOR);
                IBinder strongBinder = parcel.readStrongBinder();
                if (strongBinder != null) {
                    IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.signals.ISignalCallback");
                    ar0Var = iInterfaceQueryLocalInterface instanceof yq0 ? (yq0) iInterfaceQueryLocalInterface : new ar0(strongBinder);
                }
                ((l72) this).R5(x20VarG0, zzaziVar, ar0Var);
                parcel2.writeNoException();
                return true;
            case 2:
                ((l72) this).o0(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 3:
                x20.a.g0(parcel.readStrongBinder());
                x20.a.g0(parcel.readStrongBinder());
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 4:
                x20.a.g0(parcel.readStrongBinder());
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 5:
                ((l72) this).h1(parcel.createTypedArrayList(Uri.CREATOR), x20.a.g0(parcel.readStrongBinder()), ol0.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                ((l72) this).U5(parcel.createTypedArrayList(Uri.CREATOR), x20.a.g0(parcel.readStrongBinder()), ol0.W6(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                zzatj zzatjVar = (zzatj) rd3.a(parcel, zzatj.CREATOR);
                l72 l72Var = (l72) this;
                l72Var.m = zzatjVar;
                l72Var.j.a(1);
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
