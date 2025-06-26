package defpackage;

import android.content.Context;
import android.content.ServiceConnection;
import android.os.Handler;
import defpackage.i00;
import defpackage.n00;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class k10 extends n00 {
    public final Context d;
    public final Handler e;
    public final HashMap<n00.a, m10> c = new HashMap<>();
    public final x10 f = x10.b();
    public final long g = 5000;
    public final long h = 300000;

    public k10(Context context) {
        this.d = context.getApplicationContext();
        this.e = new f24(context.getMainLooper(), new l10(this, null));
    }

    @Override // defpackage.n00
    public final boolean b(n00.a aVar, ServiceConnection serviceConnection, String str) {
        boolean z;
        bi.j(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.c) {
            m10 m10Var = this.c.get(aVar);
            if (m10Var == null) {
                m10Var = new m10(this, aVar);
                m10Var.a.put(serviceConnection, serviceConnection);
                m10Var.a(str);
                this.c.put(aVar, m10Var);
            } else {
                this.e.removeMessages(0, aVar);
                if (m10Var.a.containsKey(serviceConnection)) {
                    String strValueOf = String.valueOf(aVar);
                    StringBuilder sb = new StringBuilder(strValueOf.length() + 81);
                    sb.append("Trying to bind a GmsServiceConnection that was already connected before.  config=");
                    sb.append(strValueOf);
                    throw new IllegalStateException(sb.toString());
                }
                m10Var.a.put(serviceConnection, serviceConnection);
                int i = m10Var.b;
                if (i == 1) {
                    ((i00.i) serviceConnection).onServiceConnected(m10Var.f, m10Var.d);
                } else if (i == 2) {
                    m10Var.a(str);
                }
            }
            z = m10Var.c;
        }
        return z;
    }

    @Override // defpackage.n00
    public final void c(n00.a aVar, ServiceConnection serviceConnection, String str) {
        bi.j(serviceConnection, "ServiceConnection must not be null");
        synchronized (this.c) {
            m10 m10Var = this.c.get(aVar);
            if (m10Var == null) {
                String strValueOf = String.valueOf(aVar);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 50);
                sb.append("Nonexistent connection status for service config: ");
                sb.append(strValueOf);
                throw new IllegalStateException(sb.toString());
            }
            if (!m10Var.a.containsKey(serviceConnection)) {
                String strValueOf2 = String.valueOf(aVar);
                StringBuilder sb2 = new StringBuilder(strValueOf2.length() + 76);
                sb2.append("Trying to unbind a GmsServiceConnection  that was not bound before.  config=");
                sb2.append(strValueOf2);
                throw new IllegalStateException(sb2.toString());
            }
            m10Var.a.remove(serviceConnection);
            if (m10Var.a.isEmpty()) {
                this.e.sendMessageDelayed(this.e.obtainMessage(0, aVar), this.g);
            }
        }
    }
}
