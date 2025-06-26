package defpackage;

import android.content.Context;
import android.os.IBinder;
import android.os.RemoteException;
import defpackage.bd5;
import defpackage.ed5;
import java.util.Objects;

/* loaded from: classes.dex */
public final class zc5 extends bd5<yc5> implements tc5 {
    public final String k;
    public final String l;
    public final String m;
    public boolean n;

    public zc5(Context context, String str, String str2, String str3, ed5.a aVar, ed5.b bVar) {
        super(context, aVar, bVar);
        Objects.requireNonNull(str, "null reference");
        this.k = str;
        c50.b(str2, "callingPackage cannot be null or empty");
        this.l = str2;
        c50.b(str3, "callingAppVersion cannot be null or empty");
        this.m = str3;
    }

    @Override // defpackage.tc5
    public final void A(boolean z) {
        if (e()) {
            if (!e()) {
                throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
            }
            ((yc5) this.c).A(z);
            this.n = true;
        }
    }

    @Override // defpackage.ed5
    public final void a() {
        if (!this.n) {
            A(true);
        }
        g();
        this.j = false;
        synchronized (this.h) {
            int size = this.h.size();
            for (int i = 0; i < size; i++) {
                bd5.c<?> cVar = this.h.get(i);
                synchronized (cVar) {
                    cVar.a = null;
                }
            }
            this.h.clear();
        }
        c();
    }

    @Override // defpackage.tc5
    public final IBinder t() {
        if (!e()) {
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        }
        if (this.n) {
            throw new IllegalStateException("Connection client has been released");
        }
        try {
            if (e()) {
                return ((yc5) this.c).t();
            }
            throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
        } catch (RemoteException e) {
            throw new IllegalStateException(e);
        }
    }
}
