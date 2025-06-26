package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvt;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class ut3 extends sd3 implements qt3 {
    public ut3() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                it3 it3VarZza = zza(x20.a.g0(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR), parcel.readString(), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, it3VarZza);
                return true;
            case 2:
                it3 it3VarZzb = zzb(x20.a.g0(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR), parcel.readString(), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, it3VarZzb);
                return true;
            case 3:
                bt3 bt3VarZza = zza(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, bt3VarZza);
                return true;
            case 4:
                zt3 zt3VarZzc = zzc(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                rd3.b(parcel2, zt3VarZzc);
                return true;
            case 5:
                x70 x70VarZza = zza(x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                rd3.b(parcel2, x70VarZza);
                return true;
            case 6:
                jn0 jn0VarZza = zza(x20.a.g0(parcel.readStrongBinder()), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, jn0VarZza);
                return true;
            case 7:
                hl0 hl0VarZzd = zzd(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                rd3.b(parcel2, hl0VarZzd);
                return true;
            case 8:
                xk0 xk0VarZzb = zzb(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                rd3.b(parcel2, xk0VarZzb);
                return true;
            case 9:
                zt3 zt3VarZza = zza(x20.a.g0(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, zt3VarZza);
                return true;
            case 10:
                it3 it3VarZza2 = zza(x20.a.g0(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, it3VarZza2);
                return true;
            case 11:
                f80 f80VarZza = zza(x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                rd3.b(parcel2, f80VarZza);
                return true;
            case 12:
                fo0 fo0VarZzb = zzb(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, fo0VarZzb);
                return true;
            case 13:
                it3 it3VarZzc = zzc(x20.a.g0(parcel.readStrongBinder()), (zzvt) rd3.a(parcel, zzvt.CREATOR), parcel.readString(), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, it3VarZzc);
                return true;
            case 14:
                zq0 zq0VarZzb = zzb(x20.a.g0(parcel.readStrongBinder()), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, zq0VarZzb);
                return true;
            case 15:
                jk0 jk0VarZzc = zzc(x20.a.g0(parcel.readStrongBinder()), gg0.W6(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                rd3.b(parcel2, jk0VarZzc);
                return true;
            default:
                return false;
        }
    }
}
