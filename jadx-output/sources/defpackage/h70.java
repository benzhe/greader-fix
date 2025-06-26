package defpackage;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public final class h70 extends sd3 implements u70 {
    public final Drawable e;
    public final Uri f;
    public final double g;
    public final int h;
    public final int i;

    public h70(Drawable drawable, Uri uri, double d, int i, int i2) {
        super("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        this.e = drawable;
        this.f = uri;
        this.g = d;
        this.h = i;
        this.i = i2;
    }

    public static u70 W6(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
        return iInterfaceQueryLocalInterface instanceof u70 ? (u70) iInterfaceQueryLocalInterface : new w70(iBinder);
    }

    @Override // defpackage.u70
    public final double O3() {
        return this.g;
    }

    @Override // defpackage.sd3
    public final boolean V6(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
        if (i == 1) {
            x20 x20VarQ2 = q2();
            parcel2.writeNoException();
            rd3.b(parcel2, x20VarQ2);
            return true;
        }
        if (i == 2) {
            Uri uri = this.f;
            parcel2.writeNoException();
            rd3.d(parcel2, uri);
            return true;
        }
        if (i == 3) {
            double d = this.g;
            parcel2.writeNoException();
            parcel2.writeDouble(d);
            return true;
        }
        if (i == 4) {
            int i3 = this.h;
            parcel2.writeNoException();
            parcel2.writeInt(i3);
            return true;
        }
        if (i != 5) {
            return false;
        }
        int i4 = this.i;
        parcel2.writeNoException();
        parcel2.writeInt(i4);
        return true;
    }

    @Override // defpackage.u70
    public final int getHeight() {
        return this.i;
    }

    @Override // defpackage.u70
    public final int getWidth() {
        return this.h;
    }

    @Override // defpackage.u70
    public final Uri i0() throws RemoteException {
        return this.f;
    }

    @Override // defpackage.u70
    public final x20 q2() throws RemoteException {
        return new y20(this.e);
    }
}
