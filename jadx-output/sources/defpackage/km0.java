package defpackage;

import android.os.Parcel;
import android.os.ParcelFileDescriptor;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.util.zzap;
import com.google.android.gms.ads.internal.util.zzaq;

/* loaded from: classes.dex */
public abstract class km0 extends sd3 implements lm0 {
    public km0() {
        super("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((lv1) this).e.a.a(new ParcelFileDescriptor.AutoCloseInputStream((ParcelFileDescriptor) rd3.a(parcel, ParcelFileDescriptor.CREATOR)));
        } else {
            if (i != 2) {
                return false;
            }
            zzaq zzaqVar = (zzaq) rd3.a(parcel, zzaq.CREATOR);
            ((lv1) this).e.a.b(new zzap(zzaqVar.zzacu, zzaqVar.errorCode));
        }
        parcel2.writeNoException();
        return true;
    }
}
