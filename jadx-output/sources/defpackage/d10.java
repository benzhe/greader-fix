package defpackage;

import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.common.internal.SignInButtonConfig;
import defpackage.x20;

/* loaded from: classes.dex */
public final class d10 extends qv3 implements u00 {
    public d10(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.ISignInButtonCreator");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.u00
    public final x20 Z2(x20 x20Var, SignInButtonConfig signInButtonConfig) throws RemoteException {
        Parcel parcelObtain = Parcel.obtain();
        parcelObtain.writeInterfaceToken(this.f);
        int i = sv3.a;
        parcelObtain.writeStrongBinder((c24) x20Var);
        parcelObtain.writeInt(1);
        signInButtonConfig.writeToParcel(parcelObtain, 0);
        parcelObtain = Parcel.obtain();
        try {
            this.e.transact(2, parcelObtain, parcelObtain, 0);
            parcelObtain.readException();
            parcelObtain.recycle();
            return x20.a.g0(parcelObtain.readStrongBinder());
        } catch (RuntimeException e) {
            throw e;
        } finally {
            parcelObtain.recycle();
        }
    }
}
