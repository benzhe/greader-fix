package defpackage;

import android.content.ComponentName;
import android.os.Handler;
import android.os.Message;
import android.util.Log;
import defpackage.n00;
import java.util.Objects;

/* loaded from: classes.dex */
public final class l10 implements Handler.Callback {
    public final /* synthetic */ k10 e;

    public l10(k10 k10Var, j10 j10Var) {
        this.e = k10Var;
    }

    @Override // android.os.Handler.Callback
    public final boolean handleMessage(Message message) {
        int i = message.what;
        if (i == 0) {
            synchronized (this.e.c) {
                n00.a aVar = (n00.a) message.obj;
                m10 m10Var = this.e.c.get(aVar);
                if (m10Var != null && m10Var.a.isEmpty()) {
                    if (m10Var.c) {
                        m10Var.g.e.removeMessages(1, m10Var.e);
                        k10 k10Var = m10Var.g;
                        k10Var.f.c(k10Var.d, m10Var);
                        m10Var.c = false;
                        m10Var.b = 2;
                    }
                    this.e.c.remove(aVar);
                }
            }
            return true;
        }
        if (i != 1) {
            return false;
        }
        synchronized (this.e.c) {
            n00.a aVar2 = (n00.a) message.obj;
            m10 m10Var2 = this.e.c.get(aVar2);
            if (m10Var2 != null && m10Var2.b == 3) {
                String strValueOf = String.valueOf(aVar2);
                StringBuilder sb = new StringBuilder(strValueOf.length() + 47);
                sb.append("Timeout waiting for ServiceConnection callback ");
                sb.append(strValueOf);
                Log.e("GmsClientSupervisor", sb.toString(), new Exception());
                ComponentName componentName = m10Var2.f;
                if (componentName == null) {
                    Objects.requireNonNull(aVar2);
                    componentName = null;
                }
                if (componentName == null) {
                    String str = aVar2.b;
                    Objects.requireNonNull(str, "null reference");
                    componentName = new ComponentName(str, "unknown");
                }
                m10Var2.onServiceDisconnected(componentName);
            }
        }
        return true;
    }
}
