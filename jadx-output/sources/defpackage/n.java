package defpackage;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import androidx.browser.customtabs.CustomTabsService;
import defpackage.m;

/* loaded from: classes.dex */
public interface n extends IInterface {

    public static abstract class a extends Binder implements n {
        public static final /* synthetic */ int e = 0;

        /* renamed from: n$a$a, reason: collision with other inner class name */
        public static class C0024a implements n {
            public IBinder e;

            public C0024a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // android.os.IInterface
            public IBinder asBinder() {
                return this.e;
            }

            @Override // defpackage.n
            public boolean f3(long j) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcelObtain.writeLong(j);
                    if (!this.e.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // defpackage.n
            public boolean s4(m mVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcelObtain.writeStrongBinder((m.a) mVar);
                    if (!this.e.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i = a.e;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "android.support.customtabs.ICustomTabsService");
        }

        @Override // android.os.IInterface
        public IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            Bundle bundle;
            if (i == 1598968902) {
                parcel2.writeString("android.support.customtabs.ICustomTabsService");
                return true;
            }
            switch (i) {
                case 2:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean zF3 = ((CustomTabsService.a) this).f3(parcel.readLong());
                    parcel2.writeNoException();
                    parcel2.writeInt(zF3 ? 1 : 0);
                    return true;
                case 3:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean zS4 = ((CustomTabsService.a) this).s4(m.a.Z(parcel.readStrongBinder()));
                    parcel2.writeNoException();
                    parcel2.writeInt(zS4 ? 1 : 0);
                    return true;
                case 4:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ = m.a.Z(parcel.readStrongBinder());
                    Uri uri = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar = (CustomTabsService.a) this;
                    boolean zB = CustomTabsService.this.b(new x3(mVarZ, aVar.Z(bundle)), uri, bundle, parcel.createTypedArrayList(Bundle.CREATOR));
                    parcel2.writeNoException();
                    parcel2.writeInt(zB ? 1 : 0);
                    return true;
                case 5:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    Bundle bundleA = CustomTabsService.this.a(parcel.readString(), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    if (bundleA != null) {
                        parcel2.writeInt(1);
                        bundleA.writeToParcel(parcel2, 1);
                    } else {
                        parcel2.writeInt(0);
                    }
                    return true;
                case 6:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ2 = m.a.Z(parcel.readStrongBinder());
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar2 = (CustomTabsService.a) this;
                    boolean zG = CustomTabsService.this.g(new x3(mVarZ2, aVar2.Z(bundle)), bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(zG ? 1 : 0);
                    return true;
                case 7:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean zF = CustomTabsService.this.f(new x3(m.a.Z(parcel.readStrongBinder()), null), parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zF ? 1 : 0);
                    return true;
                case 8:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ3 = m.a.Z(parcel.readStrongBinder());
                    String string = parcel.readString();
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar3 = (CustomTabsService.a) this;
                    int iD = CustomTabsService.this.d(new x3(mVarZ3, aVar3.Z(bundle)), string, bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(iD);
                    return true;
                case 9:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ4 = m.a.Z(parcel.readStrongBinder());
                    int i3 = parcel.readInt();
                    Uri uri2 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar4 = (CustomTabsService.a) this;
                    boolean zH = CustomTabsService.this.h(new x3(mVarZ4, aVar4.Z(bundle)), i3, uri2, bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(zH ? 1 : 0);
                    return true;
                case 10:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    boolean zL0 = ((CustomTabsService.a) this).l0(m.a.Z(parcel.readStrongBinder()), parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null);
                    parcel2.writeNoException();
                    parcel2.writeInt(zL0 ? 1 : 0);
                    return true;
                case 11:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ5 = m.a.Z(parcel.readStrongBinder());
                    Uri uri3 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar5 = (CustomTabsService.a) this;
                    boolean zF2 = CustomTabsService.this.f(new x3(mVarZ5, aVar5.Z(bundle)), uri3);
                    parcel2.writeNoException();
                    parcel2.writeInt(zF2 ? 1 : 0);
                    return true;
                case 12:
                    parcel.enforceInterface("android.support.customtabs.ICustomTabsService");
                    m mVarZ6 = m.a.Z(parcel.readStrongBinder());
                    Uri uri4 = parcel.readInt() != 0 ? (Uri) Uri.CREATOR.createFromParcel(parcel) : null;
                    int i4 = parcel.readInt();
                    bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
                    CustomTabsService.a aVar6 = (CustomTabsService.a) this;
                    boolean zE = CustomTabsService.this.e(new x3(mVarZ6, aVar6.Z(bundle)), uri4, i4, bundle);
                    parcel2.writeNoException();
                    parcel2.writeInt(zE ? 1 : 0);
                    return true;
                default:
                    return super.onTransact(i, parcel, parcel2, i2);
            }
        }
    }

    boolean f3(long j) throws RemoteException;

    boolean s4(m mVar) throws RemoteException;
}
