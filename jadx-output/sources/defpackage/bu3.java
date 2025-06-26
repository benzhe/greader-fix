package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.internal.ads.zzaat;
import com.google.android.gms.internal.ads.zzajm;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class bu3 extends qd3 implements zt3 {
    public bu3(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // defpackage.zt3
    public final void B6(String str) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        g0(10, parcelL0);
    }

    @Override // defpackage.zt3
    public final boolean D2() throws RemoteException {
        Parcel parcelZ = Z(8, l0());
        ClassLoader classLoader = rd3.a;
        boolean z = parcelZ.readInt() != 0;
        parcelZ.recycle();
        return z;
    }

    @Override // defpackage.zt3
    public final List<zzajm> E1() throws RemoteException {
        Parcel parcelZ = Z(13, l0());
        ArrayList arrayListCreateTypedArrayList = parcelZ.createTypedArrayList(zzajm.CREATOR);
        parcelZ.recycle();
        return arrayListCreateTypedArrayList;
    }

    @Override // defpackage.zt3
    public final String E3() throws RemoteException {
        Parcel parcelZ = Z(9, l0());
        String string = parcelZ.readString();
        parcelZ.recycle();
        return string;
    }

    @Override // defpackage.zt3
    public final void H0() throws RemoteException {
        g0(15, l0());
    }

    @Override // defpackage.zt3
    public final void J3(String str, x20 x20Var) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeString(str);
        rd3.b(parcelL0, x20Var);
        g0(6, parcelL0);
    }

    @Override // defpackage.zt3
    public final void L1(boolean z) throws RemoteException {
        Parcel parcelL0 = l0();
        ClassLoader classLoader = rd3.a;
        parcelL0.writeInt(z ? 1 : 0);
        g0(4, parcelL0);
    }

    @Override // defpackage.zt3
    public final void L4(hg0 hg0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, hg0Var);
        g0(11, parcelL0);
    }

    @Override // defpackage.zt3
    public final void N2(zzaat zzaatVar) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.c(parcelL0, zzaatVar);
        g0(14, parcelL0);
    }

    @Override // defpackage.zt3
    public final void e4(tc0 tc0Var) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, tc0Var);
        g0(12, parcelL0);
    }

    @Override // defpackage.zt3
    public final void k5(float f) throws RemoteException {
        Parcel parcelL0 = l0();
        parcelL0.writeFloat(f);
        g0(2, parcelL0);
    }

    @Override // defpackage.zt3
    public final void m0() throws RemoteException {
        g0(1, l0());
    }

    @Override // defpackage.zt3
    public final void r0(x20 x20Var, String str) throws RemoteException {
        Parcel parcelL0 = l0();
        rd3.b(parcelL0, x20Var);
        parcelL0.writeString(str);
        g0(5, parcelL0);
    }

    @Override // defpackage.zt3
    public final float v3() throws RemoteException {
        Parcel parcelZ = Z(7, l0());
        float f = parcelZ.readFloat();
        parcelZ.recycle();
        return f;
    }
}
