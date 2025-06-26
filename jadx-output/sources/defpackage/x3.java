package defpackage;

import android.app.PendingIntent;
import android.os.IBinder;

/* loaded from: classes.dex */
public class x3 {
    public final m a;
    public final PendingIntent b;

    public x3(m mVar, PendingIntent pendingIntent) {
        if (mVar == null && pendingIntent == null) {
            throw new IllegalStateException("CustomTabsSessionToken must have either a session id or a callback (or both).");
        }
        this.a = mVar;
        this.b = pendingIntent;
    }

    public final IBinder a() {
        m mVar = this.a;
        if (mVar != null) {
            return mVar.asBinder();
        }
        throw new IllegalStateException("CustomTabSessionToken must have valid binder or pending session");
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof x3)) {
            return false;
        }
        x3 x3Var = (x3) obj;
        PendingIntent pendingIntent = x3Var.b;
        PendingIntent pendingIntent2 = this.b;
        if ((pendingIntent2 == null) != (pendingIntent == null)) {
            return false;
        }
        return pendingIntent2 != null ? pendingIntent2.equals(pendingIntent) : a().equals(x3Var.a());
    }

    public int hashCode() {
        PendingIntent pendingIntent = this.b;
        return pendingIntent != null ? pendingIntent.hashCode() : a().hashCode();
    }
}
