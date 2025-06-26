package defpackage;

import android.os.Bundle;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.x20;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class ly0 extends sd3 implements ny0 {
    public ly0() {
        super("com.google.android.gms.ads.measurement.IAppMeasurementProxy");
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        switch (i) {
            case 1:
                ((zf0) this).e.a.b((Bundle) rd3.a(parcel, Bundle.CREATOR), false);
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundleB = ((zf0) this).e.a.b((Bundle) rd3.a(parcel, Bundle.CREATOR), true);
                parcel2.writeNoException();
                rd3.d(parcel2, bundleB);
                return true;
            case 3:
                ((zf0) this).e.a.h(parcel.readString(), parcel.readString(), (Bundle) rd3.a(parcel, Bundle.CREATOR));
                parcel2.writeNoException();
                return true;
            case 4:
                String string = parcel.readString();
                String string2 = parcel.readString();
                x20 x20VarG0 = x20.a.g0(parcel.readStrongBinder());
                ((zf0) this).e.a.i(string, string2, x20VarG0 != null ? y20.l0(x20VarG0) : null, true);
                parcel2.writeNoException();
                return true;
            case 5:
                String string3 = parcel.readString();
                String string4 = parcel.readString();
                ClassLoader classLoader = rd3.a;
                Map<String, Object> mapA = ((zf0) this).e.a.a(string3, string4, parcel.readInt() != 0);
                parcel2.writeNoException();
                parcel2.writeMap(mapA);
                return true;
            case 6:
                int iC = ((zf0) this).e.a.c(parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iC);
                return true;
            case 7:
                Bundle bundle = (Bundle) rd3.a(parcel, Bundle.CREATOR);
                q34 q34Var = ((zf0) this).e.a;
                Objects.requireNonNull(q34Var);
                q34Var.c.execute(new k24(q34Var, bundle));
                parcel2.writeNoException();
                return true;
            case 8:
                String string5 = parcel.readString();
                String string6 = parcel.readString();
                Bundle bundle2 = (Bundle) rd3.a(parcel, Bundle.CREATOR);
                q34 q34Var2 = ((zf0) this).e.a;
                Objects.requireNonNull(q34Var2);
                q34Var2.c.execute(new l24(q34Var2, string5, string6, bundle2));
                parcel2.writeNoException();
                return true;
            case 9:
                List<Bundle> listJ = ((zf0) this).e.a.j(parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeList(listJ);
                return true;
            case 10:
                String strY1 = ((zf0) this).Y1();
                parcel2.writeNoException();
                parcel2.writeString(strY1);
                return true;
            case 11:
                String strF4 = ((zf0) this).f4();
                parcel2.writeNoException();
                parcel2.writeString(strF4);
                return true;
            case 12:
                long jK = ((zf0) this).e.a.k();
                parcel2.writeNoException();
                parcel2.writeLong(jK);
                return true;
            case 13:
                String string7 = parcel.readString();
                q34 q34Var3 = ((zf0) this).e.a;
                Objects.requireNonNull(q34Var3);
                q34Var3.c.execute(new q24(q34Var3, string7));
                parcel2.writeNoException();
                return true;
            case 14:
                String string8 = parcel.readString();
                q34 q34Var4 = ((zf0) this).e.a;
                Objects.requireNonNull(q34Var4);
                q34Var4.c.execute(new r24(q34Var4, string8));
                parcel2.writeNoException();
                return true;
            case 15:
                ((zf0) this).t4(x20.a.g0(parcel.readStrongBinder()), parcel.readString(), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 16:
                String strC2 = ((zf0) this).C2();
                parcel2.writeNoException();
                parcel2.writeString(strC2);
                return true;
            case 17:
                String strF42 = ((zf0) this).F4();
                parcel2.writeNoException();
                parcel2.writeString(strF42);
                return true;
            case 18:
                String str = ((zf0) this).e.a.h;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 19:
                Bundle bundle3 = (Bundle) rd3.a(parcel, Bundle.CREATOR);
                q34 q34Var5 = ((zf0) this).e.a;
                Objects.requireNonNull(q34Var5);
                q34Var5.c.execute(new o24(q34Var5, bundle3));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
