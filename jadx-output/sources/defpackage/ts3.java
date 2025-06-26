package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class ts3 extends sd3 implements us3 {
    public ts3() {
        super("com.google.android.gms.ads.internal.client.IAdListener");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                ((hr3) this).e.onAdClosed();
                break;
            case 2:
                ((hr3) this).e.onAdFailedToLoad(parcel.readInt());
                break;
            case 3:
                ((hr3) this).e.onAdLeftApplication();
                break;
            case 4:
                ((hr3) this).e.onAdLoaded();
                break;
            case 5:
                ((hr3) this).e.onAdOpened();
                break;
            case 6:
                ((hr3) this).e.onAdClicked();
                break;
            case 7:
                ((hr3) this).e.onAdImpression();
                break;
            case 8:
                ((hr3) this).e.onAdFailedToLoad(((zzvh) rd3.a(parcel, zzvh.CREATOR)).C());
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
