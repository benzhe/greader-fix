package defpackage;

import android.os.DeadObjectException;
import android.os.RemoteException;
import android.os.TransactionTooLargeException;
import com.google.android.gms.common.api.Status;
import defpackage.zy;

/* loaded from: classes.dex */
public abstract class iz {
    public iz(int i) {
    }

    public static Status e(RemoteException remoteException) {
        StringBuilder sb = new StringBuilder();
        if (remoteException instanceof TransactionTooLargeException) {
            sb.append("TransactionTooLargeException: ");
        }
        sb.append(remoteException.getLocalizedMessage());
        return new Status(8, sb.toString());
    }

    public abstract void a(Status status);

    public abstract void b(zy.a<?> aVar) throws DeadObjectException;

    public abstract void c(ez ezVar, boolean z);

    public abstract void d(RuntimeException runtimeException);
}
