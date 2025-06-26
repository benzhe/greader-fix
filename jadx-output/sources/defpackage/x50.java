package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.doubleclick.OnCustomRenderedAdLoadedListener;

/* loaded from: classes.dex */
public final class x50 extends sd3 implements t50 {
    public final OnCustomRenderedAdLoadedListener e;

    public x50(OnCustomRenderedAdLoadedListener onCustomRenderedAdLoadedListener) {
        super("com.google.android.gms.ads.internal.customrenderedad.client.IOnCustomRenderedAdLoadedListener");
        this.e = onCustomRenderedAdLoadedListener;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) {
        s50 u50Var;
        if (i != 1) {
            return false;
        }
        IBinder strongBinder = parcel.readStrongBinder();
        if (strongBinder == null) {
            u50Var = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
            u50Var = iInterfaceQueryLocalInterface instanceof s50 ? (s50) iInterfaceQueryLocalInterface : new u50(strongBinder);
        }
        p6(u50Var);
        parcel2.writeNoException();
        return true;
    }

    @Override // defpackage.t50
    public final void p6(s50 s50Var) {
        this.e.onCustomRenderedAdLoaded(new p50(s50Var));
    }
}
