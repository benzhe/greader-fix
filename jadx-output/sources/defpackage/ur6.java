package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.noinnion.android.greader.ui.media.MusicService;

/* loaded from: classes2.dex */
public interface ur6 extends IInterface {

    public static abstract class a extends Binder implements ur6 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: ur6$a$a, reason: collision with other inner class name */
        public static class C0053a implements ur6 {
            public IBinder e;

            public C0053a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // defpackage.ur6
            public void C0(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.ui.media.IMusicService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.e;
            }

            @Override // defpackage.ur6
            public int d0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.ui.media.IMusicService");
                    if (!this.e.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.ur6
            public int getCurrentPosition() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.ui.media.IMusicService");
                    if (!this.e.transact(4, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.ur6
            public int getDuration() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.ui.media.IMusicService");
                    if (!this.e.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.ur6
            public String getTitle() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.ui.media.IMusicService");
                    if (!this.e.transact(5, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.noinnion.android.greader.ui.media.IMusicService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws IllegalStateException, RemoteException {
            if (i == 1) {
                parcel.enforceInterface("com.noinnion.android.greader.ui.media.IMusicService");
                ((MusicService.b) this).C0(parcel.readInt());
                parcel2.writeNoException();
                return true;
            }
            if (i == 2) {
                parcel.enforceInterface("com.noinnion.android.greader.ui.media.IMusicService");
                int iD0 = ((MusicService.b) this).d0();
                parcel2.writeNoException();
                parcel2.writeInt(iD0);
                return true;
            }
            if (i == 3) {
                parcel.enforceInterface("com.noinnion.android.greader.ui.media.IMusicService");
                int duration = ((MusicService.b) this).getDuration();
                parcel2.writeNoException();
                parcel2.writeInt(duration);
                return true;
            }
            if (i == 4) {
                parcel.enforceInterface("com.noinnion.android.greader.ui.media.IMusicService");
                int currentPosition = ((MusicService.b) this).getCurrentPosition();
                parcel2.writeNoException();
                parcel2.writeInt(currentPosition);
                return true;
            }
            if (i != 5) {
                if (i != 1598968902) {
                    return super.onTransact(i, parcel, parcel2, i2);
                }
                parcel2.writeString("com.noinnion.android.greader.ui.media.IMusicService");
                return true;
            }
            parcel.enforceInterface("com.noinnion.android.greader.ui.media.IMusicService");
            String str = MusicService.this.k;
            parcel2.writeNoException();
            parcel2.writeString(str);
            return true;
        }
    }

    void C0(int i) throws RemoteException;

    int d0() throws RemoteException;

    int getCurrentPosition() throws RemoteException;

    int getDuration() throws RemoteException;

    String getTitle() throws RemoteException;
}
