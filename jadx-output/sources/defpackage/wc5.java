package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.oc5;

/* loaded from: classes.dex */
public interface wc5 extends IInterface {

    public static abstract class a extends Binder implements wc5 {
        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.IPlayerStateChangeListener");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    ((cd5) this).e.e();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    ((cd5) this).e.b(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    ((cd5) this).e.a();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    ((cd5) this).e.c();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    ((cd5) this).e.d();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.google.android.youtube.player.internal.IPlayerStateChangeListener");
                    String string = parcel.readString();
                    cd5 cd5Var = (cd5) this;
                    oc5.a aVarValueOf = oc5.a.UNKNOWN;
                    try {
                        aVarValueOf = oc5.a.valueOf(string);
                    } catch (IllegalArgumentException | NullPointerException unused) {
                    }
                    cd5Var.e.f(aVarValueOf);
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }
}
