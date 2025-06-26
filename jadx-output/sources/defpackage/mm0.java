package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzaq;

/* loaded from: classes.dex */
public final class mm0 extends qd3 implements lm0 {
    public mm0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // defpackage.lm0
    public final void A0(ParcelFileDescriptor parcelFileDescriptor) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, parcelFileDescriptor);
        g0(1, parcelL0);
    }

    @Override // defpackage.lm0
    public final void g3(zzaq zzaqVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaqVar);
        g0(2, parcelL0);
    }
}
