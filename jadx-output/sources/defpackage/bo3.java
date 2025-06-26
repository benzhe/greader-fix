package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.ads.LoadAdError;
import com.google.android.gms.ads.appopen.AppOpenAd;
import com.google.android.gms.internal.ads.zzvh;

/* loaded from: classes.dex */
public abstract class bo3 extends sd3 implements yn3 {
    public bo3() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdLoadCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        xn3 zn3Var;
        if (i == 1) {
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                zn3Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
                zn3Var = iInterfaceQueryLocalInterface instanceof xn3 ? (xn3) iInterfaceQueryLocalInterface : new zn3(strongBinder);
            }
            tn3 tn3Var = (tn3) this;
            if (tn3Var.e != null) {
                vn3 vn3Var = new vn3(zn3Var, tn3Var.f);
                tn3Var.e.onAppOpenAdLoaded(vn3Var);
                tn3Var.e.onAdLoaded(vn3Var);
            }
        } else if (i == 2) {
            int i3 = parcel.readInt();
            AppOpenAd.AppOpenAdLoadCallback appOpenAdLoadCallback = ((tn3) this).e;
            if (appOpenAdLoadCallback != null) {
                appOpenAdLoadCallback.onAppOpenAdFailedToLoad(i3);
            }
        } else {
            if (i != 3) {
                return false;
            }
            zzvh zzvhVar = (zzvh) rd3.a(parcel, zzvh.CREATOR);
            tn3 tn3Var2 = (tn3) this;
            if (tn3Var2.e != null) {
                LoadAdError loadAdErrorC = zzvhVar.C();
                tn3Var2.e.onAppOpenAdFailedToLoad(loadAdErrorC);
                tn3Var2.e.onAdFailedToLoad(loadAdErrorC);
            }
        }
        parcel2.writeNoException();
        return true;
    }
}
