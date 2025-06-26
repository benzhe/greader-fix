package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import defpackage.x20;

/* loaded from: classes.dex */
public abstract class r50 extends sd3 implements s50 {
    public r50() {
        super("com.google.android.gms.ads.internal.customrenderedad.client.ICustomRenderedAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            String str = ((q50) this).f;
            parcel2.writeNoException();
            parcel2.writeString(str);
        } else if (i == 2) {
            String str2 = ((q50) this).g;
            parcel2.writeNoException();
            parcel2.writeString(str2);
        } else if (i == 3) {
            x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
            q50 q50Var = (q50) this;
            if (x20VarG0 != null) {
                q50Var.e.zzh((View) y20.l0(x20VarG0));
            }
            parcel2.writeNoException();
        } else if (i == 4) {
            ((q50) this).e.zzkg();
            parcel2.writeNoException();
        } else {
            if (i != 5) {
                return false;
            }
            ((q50) this).e.zzkh();
            parcel2.writeNoException();
        }
        return true;
    }
}
