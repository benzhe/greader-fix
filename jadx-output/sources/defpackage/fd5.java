package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface fd5 extends IInterface {

    public static abstract class a extends Binder implements fd5 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: fd5$a$a, reason: collision with other inner class name */
        public static class C0013a implements fd5 {
            public IBinder e;

            public C0013a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.e;
            }
        }

        public a() {
            attachInterface(this, "com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i != 1598968902) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            parcel2.writeString("com.google.android.youtube.player.internal.dynamic.IObjectWrapper");
            return true;
        }
    }
}
