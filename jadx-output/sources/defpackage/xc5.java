package defpackage;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import defpackage.uc5;

/* loaded from: classes.dex */
public interface xc5 extends IInterface {

    public static abstract class a extends Binder implements xc5 {
        public static final /* synthetic */ int e = 0;

        /* renamed from: xc5$a$a, reason: collision with other inner class name */
        public static class C0057a implements xc5 {
            public IBinder e;

            public C0057a(IBinder iBinder) {
                this.e = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.e;
            }

            @Override // defpackage.xc5
            public final void q5(uc5 uc5Var, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("com.google.android.youtube.player.internal.IServiceBroker");
                    parcelObtain.writeStrongBinder(uc5Var != null ? (uc5.a) uc5Var : null);
                    parcelObtain.writeInt(i);
                    parcelObtain.writeString(str);
                    parcelObtain.writeString(str2);
                    parcelObtain.writeString(str3);
                    parcelObtain.writeInt(0);
                    this.e.transact(1, parcelObtain, parcelObtain2, 0);
                    parcelObtain2.readException();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    void q5(uc5 uc5Var, int i, String str, String str2, String str3, Bundle bundle) throws RemoteException;
}
