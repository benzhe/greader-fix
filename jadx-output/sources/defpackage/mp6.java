package defpackage;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.noinnion.android.greader.service.DownloadService;
import java.util.List;

/* loaded from: classes2.dex */
public interface mp6 extends IInterface {

    public static abstract class a extends Binder implements mp6 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: mp6$a$a, reason: collision with other inner class name */
        public static class C0023a implements mp6 {
            public IBinder e;

            public C0023a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // defpackage.mp6
            public String A1(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(15, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public String A2(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(11, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public void A4(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(6, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public void D0() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    if (!this.e.transact(7, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public float D3(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(17, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readFloat();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public void L0(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public int L2(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(14, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public long R2(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(18, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readLong();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public String S5(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(13, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public String W5(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(16, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public void X3(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(5, parcelObtain, parcelObtain2, 0)) {
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

            @Override // defpackage.mp6
            public List<String> j6() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    if (!this.e.transact(8, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.createStringArrayList();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public int m3() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    if (!this.e.transact(19, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public void remove(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
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

            @Override // defpackage.mp6
            public String t3(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(12, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readString();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public int v0(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(9, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.mp6
            public String x5(int i) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.noinnion.android.greader.service.IDownloadService");
                    parcelObtain.writeInt(i);
                    if (!this.e.transact(10, parcelObtain, parcelObtain2, 0)) {
                        int i2 = a.e;
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
            attachInterface(this, "com.noinnion.android.greader.service.IDownloadService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1598968902) {
                parcel2.writeString("com.noinnion.android.greader.service.IDownloadService");
                return true;
            }
            switch (i) {
                case 1:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).Z(parcel.readString(), parcel.readString(), parcel.readString());
                    parcel2.writeNoException();
                    return true;
                case 2:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).remove(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 3:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).L0(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 4:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    dw6 dw6Var = DownloadService.this.e.get(parcel.readInt());
                    dw6Var.i = 1;
                    dw6Var.d();
                    parcel2.writeNoException();
                    return true;
                case 5:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).X3(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 6:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).A4(parcel.readInt());
                    parcel2.writeNoException();
                    return true;
                case 7:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    ((DownloadService.a) this).D0();
                    parcel2.writeNoException();
                    return true;
                case 8:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    List<String> listJ6 = ((DownloadService.a) this).j6();
                    parcel2.writeNoException();
                    parcel2.writeStringList(listJ6);
                    return true;
                case 9:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    int iV0 = ((DownloadService.a) this).v0(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iV0);
                    return true;
                case 10:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strX5 = ((DownloadService.a) this).x5(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strX5);
                    return true;
                case 11:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strA2 = ((DownloadService.a) this).A2(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strA2);
                    return true;
                case 12:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strT3 = ((DownloadService.a) this).t3(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strT3);
                    return true;
                case 13:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strS5 = ((DownloadService.a) this).S5(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strS5);
                    return true;
                case 14:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    int iL2 = ((DownloadService.a) this).L2(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeInt(iL2);
                    return true;
                case 15:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strA1 = ((DownloadService.a) this).A1(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strA1);
                    return true;
                case 16:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    String strW5 = ((DownloadService.a) this).W5(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeString(strW5);
                    return true;
                case 17:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    float fD3 = ((DownloadService.a) this).D3(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeFloat(fD3);
                    return true;
                case 18:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    long jR2 = ((DownloadService.a) this).R2(parcel.readInt());
                    parcel2.writeNoException();
                    parcel2.writeLong(jR2);
                    return true;
                case 19:
                    parcel.enforceInterface("com.noinnion.android.greader.service.IDownloadService");
                    int iM3 = ((DownloadService.a) this).m3();
                    parcel2.writeNoException();
                    parcel2.writeInt(iM3);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    String A1(int i) throws RemoteException;

    String A2(int i) throws RemoteException;

    void A4(int i) throws RemoteException;

    void D0() throws RemoteException;

    float D3(int i) throws RemoteException;

    void L0(int i) throws RemoteException;

    int L2(int i) throws RemoteException;

    long R2(int i) throws RemoteException;

    String S5(int i) throws RemoteException;

    String W5(int i) throws RemoteException;

    void X3(int i) throws RemoteException;

    List<String> j6() throws RemoteException;

    int m3() throws RemoteException;

    void remove(int i) throws RemoteException;

    String t3(int i) throws RemoteException;

    int v0(int i) throws RemoteException;

    String x5(int i) throws RemoteException;
}
