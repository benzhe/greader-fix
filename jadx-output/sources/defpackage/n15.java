package defpackage;

import android.content.Context;
import android.content.Intent;
import defpackage.m15;

/* loaded from: classes.dex */
public final class n15<T extends Context & m15> {
    public final T a;

    public n15(T t) {
        this.a = t;
    }

    public final boolean a(Intent intent) {
        if (intent == null) {
            c().f.a("onUnbind called with null intent");
            return true;
        }
        c().n.b("onUnbind called for intent. action", intent.getAction());
        return true;
    }

    public final void b(Intent intent) {
        if (intent == null) {
            c().f.a("onRebind called with null intent");
        } else {
            c().n.b("onRebind called. action", intent.getAction());
        }
    }

    public final qw4 c() {
        return rx4.d(this.a, null, null).a();
    }
}
