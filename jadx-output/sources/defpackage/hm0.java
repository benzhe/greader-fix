package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzauj;

/* loaded from: classes.dex */
public abstract class hm0 extends sd3 implements em0 {
    public hm0() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        lm0 mm0Var = null;
        if (i == 1) {
            parcel2.writeNoException();
            rd3.d(parcel2, null);
        } else if (i == 2) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder != null) {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                if (iInterfaceQueryLocalInterface instanceof jm0) {
                }
            }
            parcel2.writeNoException();
        } else if (i == 4) {
            zzauj zzaujVar = (zzauj) rd3.a(parcel, zzauj.CREATOR);
            IBinder strongBinder2 = parcel.readStrongBinder();
            if (strongBinder2 != null) {
                IInterface iInterfaceQueryLocalInterface2 = strongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                mm0Var = iInterfaceQueryLocalInterface2 instanceof lm0 ? (lm0) iInterfaceQueryLocalInterface2 : new mm0(strongBinder2);
            }
            ((mw1) this).y3(zzaujVar, mm0Var);
            parcel2.writeNoException();
        } else if (i == 5) {
            zzauj zzaujVar2 = (zzauj) rd3.a(parcel, zzauj.CREATOR);
            IBinder strongBinder3 = parcel.readStrongBinder();
            if (strongBinder3 != null) {
                IInterface iInterfaceQueryLocalInterface3 = strongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                mm0Var = iInterfaceQueryLocalInterface3 instanceof lm0 ? (lm0) iInterfaceQueryLocalInterface3 : new mm0(strongBinder3);
            }
            mw1 mw1Var = (mw1) this;
            mw1Var.Y6(mw1Var.b7(zzaujVar2, Binder.getCallingUid()), mm0Var);
            parcel2.writeNoException();
        } else if (i == 6) {
            zzauj zzaujVar3 = (zzauj) rd3.a(parcel, zzauj.CREATOR);
            IBinder strongBinder4 = parcel.readStrongBinder();
            if (strongBinder4 != null) {
                IInterface iInterfaceQueryLocalInterface4 = strongBinder4.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                mm0Var = iInterfaceQueryLocalInterface4 instanceof lm0 ? (lm0) iInterfaceQueryLocalInterface4 : new mm0(strongBinder4);
            }
            mw1 mw1Var2 = (mw1) this;
            mw1Var2.Y6(mw1Var2.a7(zzaujVar3, Binder.getCallingUid()), mm0Var);
            parcel2.writeNoException();
        } else {
            if (i != 7) {
                return false;
            }
            String string = parcel.readString();
            IBinder strongBinder5 = parcel.readStrongBinder();
            if (strongBinder5 != null) {
                IInterface iInterfaceQueryLocalInterface5 = strongBinder5.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                mm0Var = iInterfaceQueryLocalInterface5 instanceof lm0 ? (lm0) iInterfaceQueryLocalInterface5 : new mm0(strongBinder5);
            }
            mw1 mw1Var3 = (mw1) this;
            mw1Var3.Y6(mw1Var3.c7(string), mm0Var);
            parcel2.writeNoException();
        }
        return true;
    }
}
