package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import android.view.View;
import defpackage.x20;
import java.util.List;

/* loaded from: classes.dex */
public abstract class ah0 extends sd3 implements bh0 {
    public ah0() {
        super("com.google.android.gms.ads.internal.mediation.client.IUnifiedNativeAdMapper");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        y20 y20Var;
        switch (i) {
            case 2:
                String headline = ((ji0) this).e.getHeadline();
                parcel2.writeNoException();
                parcel2.writeString(headline);
                return true;
            case 3:
                List listI = ((ji0) this).i();
                parcel2.writeNoException();
                parcel2.writeList(listI);
                return true;
            case 4:
                String body = ((ji0) this).e.getBody();
                parcel2.writeNoException();
                parcel2.writeString(body);
                return true;
            case 5:
                u70 u70VarP = ((ji0) this).p();
                parcel2.writeNoException();
                rd3.b(parcel2, u70VarP);
                return true;
            case 6:
                String callToAction = ((ji0) this).e.getCallToAction();
                parcel2.writeNoException();
                parcel2.writeString(callToAction);
                return true;
            case 7:
                String advertiser = ((ji0) this).e.getAdvertiser();
                parcel2.writeNoException();
                parcel2.writeString(advertiser);
                return true;
            case 8:
                double dQ = ((ji0) this).q();
                parcel2.writeNoException();
                parcel2.writeDouble(dQ);
                return true;
            case 9:
                String store = ((ji0) this).e.getStore();
                parcel2.writeNoException();
                parcel2.writeString(store);
                return true;
            case 10:
                String price = ((ji0) this).e.getPrice();
                parcel2.writeNoException();
                parcel2.writeString(price);
                return true;
            case 11:
                su3 videoController = ((ji0) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 12:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 13:
                View adChoicesContent = ((ji0) this).e.getAdChoicesContent();
                y20Var = adChoicesContent != null ? new y20(adChoicesContent) : null;
                parcel2.writeNoException();
                rd3.b(parcel2, y20Var);
                return true;
            case 14:
                x20 x20VarZ = ((ji0) this).z();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarZ);
                return true;
            case 15:
                Object objZzka = ((ji0) this).e.zzka();
                y20Var = objZzka != null ? new y20(objZzka) : null;
                parcel2.writeNoException();
                rd3.b(parcel2, y20Var);
                return true;
            case 16:
                Bundle extras = ((ji0) this).e.getExtras();
                parcel2.writeNoException();
                rd3.d(parcel2, extras);
                return true;
            case 17:
                boolean overrideImpressionRecording = ((ji0) this).e.getOverrideImpressionRecording();
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(overrideImpressionRecording ? 1 : 0);
                return true;
            case 18:
                boolean overrideClickHandling = ((ji0) this).e.getOverrideClickHandling();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(overrideClickHandling ? 1 : 0);
                return true;
            case 19:
                ((ji0) this).e.recordImpression();
                parcel2.writeNoException();
                return true;
            case 20:
                ((ji0) this).e.handleClick((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 21:
                ((ji0) this).x(x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()), x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 22:
                ((ji0) this).e.untrackView((View) y20.l0(x20.a.g0(parcel.readStrongBinder())));
                parcel2.writeNoException();
                return true;
            case 23:
                float mediaContentAspectRatio = ((ji0) this).e.getMediaContentAspectRatio();
                parcel2.writeNoException();
                parcel2.writeFloat(mediaContentAspectRatio);
                return true;
            case 24:
                float duration = ((ji0) this).e.getDuration();
                parcel2.writeNoException();
                parcel2.writeFloat(duration);
                return true;
            case 25:
                float currentTime = ((ji0) this).e.getCurrentTime();
                parcel2.writeNoException();
                parcel2.writeFloat(currentTime);
                return true;
            default:
                return false;
        }
    }
}
