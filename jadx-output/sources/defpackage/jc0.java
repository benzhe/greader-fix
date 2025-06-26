package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaiy;

/* loaded from: classes.dex */
public final class jc0 extends qd3 implements gc0 {
    public jc0(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.httpcache.IHttpAssetsCacheService");
    }

    @Override // defpackage.gc0
    public final void z6(zzaiy zzaiyVar, ec0 ec0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaiyVar);
        rd3.b(parcelL0, ec0Var);
        try {
            this.e.transact(2, parcelL0, null, 1);
        } finally {
            parcelL0.recycle();
        }
    }
}
