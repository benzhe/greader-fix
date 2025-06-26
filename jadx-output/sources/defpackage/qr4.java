package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* loaded from: classes.dex */
public final class qr4 extends tr4 implements sr4 {
    public qr4(IBinder iBinder) {
        super(iBinder);
    }

    @Override // defpackage.sr4
    public final Bundle B4(int i, String str, List<String> list, String str2, String str3, String str4) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(5);
        parcelZ.writeString(str);
        parcelZ.writeStringList(list);
        parcelZ.writeString(str2);
        parcelZ.writeString("subs");
        parcelZ.writeString(null);
        Parcel parcelG0 = g0(7, parcelZ);
        Bundle bundle = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle;
    }

    @Override // defpackage.sr4
    public final Bundle E4(int i, String str, String str2, String str3, String str4, Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(i);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        parcelZ.writeString(null);
        int i2 = vr4.a;
        parcelZ.writeInt(1);
        bundle.writeToParcel(parcelZ, 0);
        Parcel parcelG0 = g0(8, parcelZ);
        Bundle bundle2 = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle2;
    }

    @Override // defpackage.sr4
    public final int K0(int i, String str, String str2) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(i);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        Parcel parcelG0 = g0(1, parcelZ);
        int i2 = parcelG0.readInt();
        parcelG0.recycle();
        return i2;
    }

    @Override // defpackage.sr4
    public final Bundle N3(int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(9);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        int i2 = vr4.a;
        parcelZ.writeInt(1);
        bundle.writeToParcel(parcelZ, 0);
        Parcel parcelG0 = g0(11, parcelZ);
        Bundle bundle2 = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle2;
    }

    @Override // defpackage.sr4
    public final Bundle R0(int i, String str, String str2, String str3, String str4) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(3);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        parcelZ.writeString(null);
        Parcel parcelG0 = g0(3, parcelZ);
        Bundle bundle = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle;
    }

    @Override // defpackage.sr4
    public final Bundle U4(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(3);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        int i2 = vr4.a;
        parcelZ.writeInt(1);
        bundle.writeToParcel(parcelZ, 0);
        Parcel parcelG0 = g0(2, parcelZ);
        Bundle bundle2 = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle2;
    }

    @Override // defpackage.sr4
    public final Bundle q3(int i, String str, String str2, Bundle bundle, Bundle bundle2) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(10);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        int i2 = vr4.a;
        parcelZ.writeInt(1);
        bundle.writeToParcel(parcelZ, 0);
        parcelZ.writeInt(1);
        bundle2.writeToParcel(parcelZ, 0);
        Parcel parcelG0 = g0(901, parcelZ);
        Bundle bundle3 = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle3;
    }

    @Override // defpackage.sr4
    public final Bundle v5(int i, String str, String str2, String str3) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(3);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        parcelZ.writeString(str3);
        Parcel parcelG0 = g0(4, parcelZ);
        Bundle bundle = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle;
    }

    @Override // defpackage.sr4
    public final Bundle x0(int i, String str, String str2, Bundle bundle) throws RemoteException {
        Parcel parcelZ = Z();
        parcelZ.writeInt(9);
        parcelZ.writeString(str);
        parcelZ.writeString(str2);
        int i2 = vr4.a;
        parcelZ.writeInt(1);
        bundle.writeToParcel(parcelZ, 0);
        Parcel parcelG0 = g0(902, parcelZ);
        Bundle bundle2 = (Bundle) vr4.a(parcelG0, Bundle.CREATOR);
        parcelG0.recycle();
        return bundle2;
    }
}
