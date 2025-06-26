package defpackage;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzc;
import defpackage.i00;
import java.util.Objects;

/* loaded from: classes.dex */
public interface r00 extends IInterface {

    public static abstract class a extends c24 implements r00 {
        public a() {
            super("com.google.android.gms.common.internal.IGmsCallbacks");
        }

        @Override // defpackage.c24
        public final boolean Z(int i, Parcel parcel, Parcel parcel2, int i2) throws RemoteException {
            if (i == 1) {
                ((i00.j) this).g0(parcel.readInt(), parcel.readStrongBinder(), (Bundle) e24.a(parcel, Bundle.CREATOR));
            } else if (i == 2) {
                parcel.readInt();
                Log.wtf("GmsClient", "received deprecated onAccountValidationComplete callback, ignoring", new Exception());
            } else {
                if (i != 3) {
                    return false;
                }
                int i3 = parcel.readInt();
                IBinder strongBinder = parcel.readStrongBinder();
                zzc zzcVar = (zzc) e24.a(parcel, zzc.CREATOR);
                i00.j jVar = (i00.j) this;
                bi.j(jVar.e, "onPostInitCompleteWithConnectionInfo can be called only once per call togetRemoteService");
                Objects.requireNonNull(zzcVar, "null reference");
                jVar.e.A = zzcVar;
                jVar.g0(i3, strongBinder, zzcVar.e);
            }
            parcel2.writeNoException();
            return true;
        }
    }
}
