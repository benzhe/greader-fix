package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import defpackage.x20;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ug0 extends sd3 implements vg0 {
    public ug0() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeAppInstallAdMapper");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String strD = ((rh0) this).d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            case 3:
                List listI = ((rh0) this).i();
                parcel2.writeNoException();
                parcel2.writeList(listI);
                return true;
            case 4:
                String strG = ((rh0) this).g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 5:
                u70 u70VarP = ((rh0) this).p();
                parcel2.writeNoException();
                rd3.b(parcel2, u70VarP);
                return true;
            case 6:
                String strE = ((rh0) this).e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 7:
                double dQ = ((rh0) this).q();
                parcel2.writeNoException();
                parcel2.writeDouble(dQ);
                return true;
            case 8:
                String strS = ((rh0) this).s();
                parcel2.writeNoException();
                parcel2.writeString(strS);
                return true;
            case 9:
                String strK = ((rh0) this).k();
                parcel2.writeNoException();
                parcel2.writeString(strK);
                return true;
            case 10:
                ((rh0) this).e.recordImpression();
                parcel2.writeNoException();
                return true;
            case 11:
                ((rh0) this).e.handleClick((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 12:
                ((rh0) this).e.trackView((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 13:
                boolean overrideImpressionRecording = ((rh0) this).e.getOverrideImpressionRecording();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(overrideImpressionRecording ? 1 : 0);
                return true;
            case 14:
                boolean overrideClickHandling = ((rh0) this).e.getOverrideClickHandling();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(overrideClickHandling ? 1 : 0);
                return true;
            case 15:
                Bundle extras = ((rh0) this).getExtras();
                parcel2.writeNoException();
                rd3.d(parcel2, extras);
                return true;
            case 16:
                ((rh0) this).e.untrackView((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 17:
                su3 videoController = ((rh0) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 18:
                x20 x20VarC = ((rh0) this).C();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarC);
                return true;
            case 19:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 20:
                x20 x20VarZ = ((rh0) this).z();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarZ);
                return true;
            case 21:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 22:
                ((rh0) this).x(x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
