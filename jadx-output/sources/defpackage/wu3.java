package defpackage;

import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public abstract class wu3 extends sd3 implements xu3 {
    public wu3() {
        super("com.google.android.gms.ads.internal.client.IVideoLifecycleCallbacks");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            ((g40) this).e.onVideoStart();
        } else if (i == 2) {
            ((g40) this).e.onVideoPlay();
        } else if (i == 3) {
            ((g40) this).e.onVideoPause();
        } else if (i != 4) {
            if (i != 5) {
                return false;
            }
            ClassLoader classLoader = rd3.a;
            ((g40) this).e.onVideoMute(parcel.readInt() != 0);
        } else {
            ((g40) this).e.onVideoEnd();
        }
        parcel2.writeNoException();
        return true;
    }
}
