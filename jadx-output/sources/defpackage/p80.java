package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class p80 extends sd3 implements m80 {
    public p80() {
        super("com.google.android.gms.ads.internal.formats.client.INativeContentAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        u70 u70Var;
        String strT;
        switch (i) {
            case 2:
                y20 y20Var = new y20(((ao1) this).f);
                parcel2.writeNoException();
                rd3.b(parcel2, y20Var);
                return true;
            case 3:
                String strE = ((ao1) this).g.e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 4:
                List<?> listF = ((ao1) this).g.f();
                parcel2.writeNoException();
                parcel2.writeList(listF);
                return true;
            case 5:
                String strA = ((ao1) this).g.a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 6:
                wj1 wj1Var = ((ao1) this).g;
                synchronized (wj1Var) {
                    u70Var = wj1Var.p;
                }
                parcel2.writeNoException();
                rd3.b(parcel2, u70Var);
                return true;
            case 7:
                String strB = ((ao1) this).g.b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 8:
                wj1 wj1Var2 = ((ao1) this).g;
                synchronized (wj1Var2) {
                    strT = wj1Var2.t("advertiser");
                }
                parcel2.writeNoException();
                parcel2.writeString(strT);
                return true;
            case 9:
                Bundle bundleD = ((ao1) this).g.d();
                parcel2.writeNoException();
                rd3.d(parcel2, bundleD);
                return true;
            case 10:
                ((ao1) this).f.a();
                parcel2.writeNoException();
                return true;
            case 11:
                su3 videoController = ((ao1) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 12:
                ((ao1) this).f.k((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean zM = ((ao1) this).f.m((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zM ? 1 : 0);
                return true;
            case 14:
                ((ao1) this).f.l((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                m70 m70VarF = ((ao1) this).f();
                parcel2.writeNoException();
                rd3.b(parcel2, m70VarF);
                return true;
            case 16:
                x20 x20VarW = ((ao1) this).g.w();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarW);
                return true;
            case 17:
                String str = ((ao1) this).e;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
