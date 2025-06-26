package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.noinnion.android.greader.service.TtsService;
import java.util.List;

/* loaded from: classes2.dex */
public interface op6 extends IInterface {

    public static abstract class a extends Binder implements op6 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: op6$a$a, reason: collision with other inner class name */
        public static class C0028a implements op6 {
            public IBinder e;

            public C0028a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // defpackage.op6
            public void E2(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void F2() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(5, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void J() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void J2() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(8, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void K3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(6, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void N1(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(4, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void V4(String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    parcelObtain.writeString(str);
                    if (!this.e.transact(10, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public boolean X1() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(11, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void Z3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
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

            @Override // defpackage.op6
            public long c3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(14, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void f2() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(7, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public List<String> i3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(13, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void m(int i, int i2) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    parcelObtain.writeInt(i);
                    parcelObtain.writeInt(i2);
                    if (!this.e.transact(15, parcelObtain, parcelObtain2, 0)) {
                        int i3 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public boolean p3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(12, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void remove(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(16, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.op6
            public void stop() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.ITtsService");
                    if (!this.e.transact(9, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "com.noinnion.android.greader.service.ITtsService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.noinnion.android.greader.service.ITtsService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).Z3();
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).E2(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    TtsService.this.h();
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).N1(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).F2();
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).K3();
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).f2();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).J2();
                    parcel2.writeNoException();
                    return true;
                case 9:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).stop();
                    parcel2.writeNoException();
                    return true;
                case 10:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).V4(parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 11:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    boolean zX1 = ((TtsService.f) this).X1();
                    parcel2.writeNoException();
                    parcel2.writeInt(zX1 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    boolean zP3 = ((TtsService.f) this).p3();
                    parcel2.writeNoException();
                    parcel2.writeInt(zP3 ? 1 : 0);
                    return true;
                case 13:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    List<String> listI3 = ((TtsService.f) this).i3();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listI3);
                    return true;
                case 14:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    long j = TtsService.this.l;
                    parcel2.writeNoException();
                    parcel2.writeLong(j);
                    return true;
                case 15:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).m(parcel.readInt(), parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 16:
                    parcel.enforceInterface("com.noinnion.android.greader.service.ITtsService");
                    ((TtsService.f) this).remove(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    void E2(int i) throws RemoteException;

    void F2() throws RemoteException;

    void J() throws RemoteException;

    void J2() throws RemoteException;

    void K3() throws RemoteException;

    void N1(int i) throws RemoteException;

    void V4(String str) throws RemoteException;

    boolean X1() throws RemoteException;

    void Z3() throws RemoteException;

    long c3() throws RemoteException;

    void f2() throws RemoteException;

    List<String> i3() throws RemoteException;

    void m(int i, int i2) throws RemoteException;

    boolean p3() throws RemoteException;

    void remove(int i) throws RemoteException;

    void stop() throws RemoteException;
}
