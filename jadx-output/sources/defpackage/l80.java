package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public abstract class l80 extends sd3 implements i80 {
    public l80() {
        super("com.google.android.gms.ads.internal.formats.client.INativeAppInstallAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        u70 u70Var;
        double d;
        String strT;
        String strT2;
        switch (i) {
            case 2:
                y20 y20Var = new y20(((yn1) this).f);
                parcel2.writeNoException();
                rd3.b(parcel2, y20Var);
                return true;
            case 3:
                String strE = ((yn1) this).g.e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 4:
                List<?> listF = ((yn1) this).g.f();
                parcel2.writeNoException();
                parcel2.writeList(listF);
                return true;
            case 5:
                String strA = ((yn1) this).g.a();
                parcel2.writeNoException();
                parcel2.writeString(strA);
                return true;
            case 6:
                wj1 wj1Var = ((yn1) this).g;
                synchronized (wj1Var) {
                    u70Var = wj1Var.o;
                }
                parcel2.writeNoException();
                rd3.b(parcel2, u70Var);
                return true;
            case 7:
                String strB = ((yn1) this).g.b();
                parcel2.writeNoException();
                parcel2.writeString(strB);
                return true;
            case 8:
                wj1 wj1Var2 = ((yn1) this).g;
                synchronized (wj1Var2) {
                    d = wj1Var2.n;
                }
                parcel2.writeNoException();
                parcel2.writeDouble(d);
                return true;
            case 9:
                wj1 wj1Var3 = ((yn1) this).g;
                synchronized (wj1Var3) {
                    strT = wj1Var3.t("store");
                }
                parcel2.writeNoException();
                parcel2.writeString(strT);
                return true;
            case 10:
                wj1 wj1Var4 = ((yn1) this).g;
                synchronized (wj1Var4) {
                    strT2 = wj1Var4.t("price");
                }
                parcel2.writeNoException();
                parcel2.writeString(strT2);
                return true;
            case 11:
                Bundle bundleD = ((yn1) this).g.d();
                parcel2.writeNoException();
                rd3.d(parcel2, bundleD);
                return true;
            case 12:
                ((yn1) this).f.a();
                parcel2.writeNoException();
                return true;
            case 13:
                su3 videoController = ((yn1) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 14:
                ((yn1) this).f.k((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 15:
                boolean zM = ((yn1) this).f.m((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                parcel2.writeInt(zM ? 1 : 0);
                return true;
            case 16:
                ((yn1) this).f.l((Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 17:
                m70 m70VarF = ((yn1) this).f();
                parcel2.writeNoException();
                rd3.b(parcel2, m70VarF);
                return true;
            case 18:
                x20 x20VarW = ((yn1) this).g.w();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarW);
                return true;
            case 19:
                String str = ((yn1) this).e;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            default:
                return false;
        }
    }
}
