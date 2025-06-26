package defpackage;

import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;
import java.util.List;

/* loaded from: classes.dex */
public abstract class t80 extends sd3 implements q80 {
    public t80() {
        super("com.google.android.gms.ads.internal.formats.client.INativeCustomTemplateAd");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                String strS1 = ((co1) this).S1(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeString(strS1);
                return true;
            case 2:
                u70 u70VarX5 = ((co1) this).X5(parcel.readString());
                parcel2.writeNoException();
                rd3.b(parcel2, u70VarX5);
                return true;
            case 3:
                List<String> availableAssetNames = ((co1) this).getAvailableAssetNames();
                parcel2.writeNoException();
                parcel2.writeStringList(availableAssetNames);
                return true;
            case 4:
                String customTemplateId = ((co1) this).getCustomTemplateId();
                parcel2.writeNoException();
                parcel2.writeString(customTemplateId);
                return true;
            case 5:
                ((co1) this).performClick(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                ((co1) this).recordImpression();
                parcel2.writeNoException();
                return true;
            case 7:
                su3 videoController = ((co1) this).getVideoController();
                parcel2.writeNoException();
                rd3.b(parcel2, videoController);
                return true;
            case 8:
                ((co1) this).destroy();
                parcel2.writeNoException();
                return true;
            case 9:
                x20 x20VarQ1 = ((co1) this).Q1();
                parcel2.writeNoException();
                rd3.b(parcel2, x20VarQ1);
                return true;
            case 10:
                boolean zA3 = ((co1) this).A3(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                ClassLoader classLoader = rd3.a;
                parcel2.writeInt(zA3 ? 1 : 0);
                return true;
            case 11:
                parcel2.writeNoException();
                rd3.b(parcel2, null);
                return true;
            case 12:
                boolean zS0 = ((co1) this).S0();
                parcel2.writeNoException();
                ClassLoader classLoader2 = rd3.a;
                parcel2.writeInt(zS0 ? 1 : 0);
                return true;
            case 13:
                boolean zL6 = ((co1) this).L6();
                parcel2.writeNoException();
                ClassLoader classLoader3 = rd3.a;
                parcel2.writeInt(zL6 ? 1 : 0);
                return true;
            case 14:
                ((co1) this).K2(x20.a.g0(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 15:
                ((co1) this).u1();
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
