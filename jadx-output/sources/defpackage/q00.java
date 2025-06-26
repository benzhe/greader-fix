package defpackage;

import android.accounts.Account;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* loaded from: classes.dex */
public interface q00 extends IInterface {

    public static abstract class a extends c24 implements q00 {

        /* renamed from: q00$a$a, reason: collision with other inner class name */
        public static class C0030a extends d24 implements q00 {
            public C0030a(IBinder iBinder) {
                super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
            }

            @Override // defpackage.q00
            public final Account a() throws RemoteException {
                Parcel parcelG0 = g0(2, Z());
                Account account = (Account) e24.a(parcelG0, Account.CREATOR);
                parcelG0.recycle();
                return account;
            }
        }

        public static q00 g0(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.IAccountAccessor");
            return iInterfaceQueryLocalInterface instanceof q00 ? (q00) iInterfaceQueryLocalInterface : new C0030a(iBinder);
        }
    }

    Account a() throws RemoteException;
}
