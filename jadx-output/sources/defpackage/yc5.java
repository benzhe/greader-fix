package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface yc5 extends IInterface {

    public static abstract class a extends Binder implements yc5 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: yc5$a$a, reason: collision with other inner class name */
        public static class C0058a implements yc5 {
            public IBinder e;

            public C0058a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // defpackage.yc5
            public final void A(boolean z) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    parcelObtain.writeInt(z ? 1 : 0);
                    this.e.transact(3, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.e;
            }

            @Override // defpackage.yc5
            public final IBinder t() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IYouTubeService");
                    this.e.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                    return parcelObtain2.readStrongBinder();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    void A(boolean z) throws RemoteException;

    IBinder t() throws RemoteException;
}
