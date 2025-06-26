package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import defpackage.x20;
import java.util.List;

/* loaded from: classes.dex */
public abstract class zg0 extends sd3 implements wg0 {
    public zg0() {
        super("com.google.android.gms.ads.internal.mediation.client.INativeContentAdMapper");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 2:
                String strD = ((qh0) this).d();
                parcel2.writeNoException();
                parcel2.writeString(strD);
                return true;
            case 3:
                List listI = ((qh0) this).i();
                parcel2.writeNoException();
                parcel2.writeList(listI);
                return true;
            case 4:
                String strG = ((qh0) this).g();
                parcel2.writeNoException();
                parcel2.writeString(strG);
                return true;
            case 5:
                u70 u70VarR = ((qh0) this).R();
                parcel2.writeNoException();
                rd3.b(parcel2, u70VarR);
                return true;
            case 6:
                String strE = ((qh0) this).e();
                parcel2.writeNoException();
                parcel2.writeString(strE);
                return true;
            case 7:
                String strR = ((qh0) this).r();
                parcel2.writeNoException();
                parcel2.writeString(strR);
                return true;
            case 8:
                ((qh0) this).e.recordImpression();
                parcel2.writeNoException();
                return true;
            case 9:
                ((qh0) this).e.handleClick((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 10:
                ((qh0) this).e.trackView((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 11:
                boolean overrideImpressionRecording = ((qh0) this).e.getOverrideImpressionRecording();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(overrideImpressionRecording ? 1 : 0);
                return true;
            case 12:
                boolean overrideClickHandling = ((qh0) this).e.getOverrideClickHandling();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(overrideClickHandling ? 1 : 0);
                return true;
            case 13:
                Bundle extras = ((qh0) this).getExtras();
                parcel2.writeNoException();
                rd3.d(parcel2, extras);
                return true;
            case 14:
                ((qh0) this).e.untrackView((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 15:
                x20 x20VarC = ((qh0) this).C();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarC);
                return true;
            case 16:
                su3 videoController = ((qh0) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 17:
            case 18:
            default:
                return false;
            case 19:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 20:
                x20 x20VarZ = ((qh0) this).z();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarZ);
                return true;
            case 21:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 22:
                ((qh0) this).x(x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
