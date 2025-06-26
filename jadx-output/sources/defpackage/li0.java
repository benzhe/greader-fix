package defpackage;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.internal.ads.zzvh;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class li0 extends sd3 implements ii0 {
    public li0() {
        super("com.google.android.gms.ads.internal.mediation.client.rtb.IBannerCallback");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        og0 qg0Var;
        if (i == 1) {
            x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
            t02 t02Var = (t02) this;
            t02Var.f.c = (View) y20.l0(x20VarG0);
            ((g12) t02Var.e.c).onAdLoaded();
        } else if (i == 2) {
            ((t02) this).j(parcel.readString());
        } else if (i == 3) {
            ((t02) this).l((zzvh) rd3.a(parcel, zzvh.CREATOR));
        } else {
            if (i != 4) {
                return false;
            }
            IBinder strongBinder = parcel.readStrongBinder();
            if (strongBinder == null) {
                qg0Var = null;
            } else {
                IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationInterscrollerAd");
                qg0Var = iInterfaceQueryLocalInterface instanceof og0 ? (og0) iInterfaceQueryLocalInterface : new qg0(strongBinder);
            }
            t02 t02Var2 = (t02) this;
            t02Var2.f.d = qg0Var;
            ((g12) t02Var2.e.c).onAdLoaded();
        }
        parcel2.writeNoException();
        return true;
    }
}
