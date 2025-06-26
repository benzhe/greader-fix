package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class s90 extends sd3 implements p90 {
    public s90() {
        super("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
    }

    public static p90 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.IShouldDelayBannerRenderingListener");
        return iInterfaceQueryLocalInterface instanceof p90 ? (p90) iInterfaceQueryLocalInterface : new r90(iBinder);
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i != 2) {
            return false;
        }
        boolean zShouldDelayBannerRendering = ((h40) this).e.shouldDelayBannerRendering((Runnable) y20.l0(x20.a.g0(parcel.readStrongBinder())));
        parcel2.writeNoException();
        ClassLoader classLoader = rd3.a;
        parcel2.writeInt(zShouldDelayBannerRendering ? 1 : 0);
        return true;
    }
}
