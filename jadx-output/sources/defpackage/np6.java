package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.noinnion.android.greader.service.FeedService;

/* loaded from: classes2.dex */
public interface np6 extends IInterface {

    public static abstract class a extends Binder implements np6 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: np6$a$a, reason: collision with other inner class name */
        public static class C0026a implements np6 {
            public IBinder e;

            public C0026a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // defpackage.np6
            public int T0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
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

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.e;
            }

            @Override // defpackage.np6
            public int c5() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
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

            @Override // defpackage.np6
            public void cancel() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
                    if (!this.e.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.np6
            public String f6() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
                    if (!this.e.transact(7, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.np6
            public String n0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
                    if (!this.e.transact(6, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.np6
            public int p0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
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

            @Override // defpackage.np6
            public String y1() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IFeedService");
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
            attachInterface(this, "com.noinnion.android.greader.service.IFeedService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.noinnion.android.greader.service.IFeedService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    ((FeedService.b) this).cancel();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    int i3 = FeedService.this.j;
                    parcel2.writeNoException();
                    parcel2.writeInt(i3);
                    return true;
                case 3:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    int iC5 = ((FeedService.b) this).c5();
                    parcel2.writeNoException();
                    parcel2.writeInt(iC5);
                    return true;
                case 4:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    int iT0 = ((FeedService.b) this).T0();
                    parcel2.writeNoException();
                    parcel2.writeInt(iT0);
                    return true;
                case 5:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    String strY1 = ((FeedService.b) this).y1();
                    parcel2.writeNoException();
                    parcel2.writeString(strY1);
                    return true;
                case 6:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    String strN0 = ((FeedService.b) this).n0();
                    parcel2.writeNoException();
                    parcel2.writeString(strN0);
                    return true;
                case 7:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IFeedService");
                    String strF6 = ((FeedService.b) this).f6();
                    parcel2.writeNoException();
                    parcel2.writeString(strF6);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    int T0() throws RemoteException;

    int c5() throws RemoteException;

    void cancel() throws RemoteException;

    String f6() throws RemoteException;

    String n0() throws RemoteException;

    int p0() throws RemoteException;

    String y1() throws RemoteException;
}
