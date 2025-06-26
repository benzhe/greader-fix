package defpackage;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class w15 {
    public final /* synthetic */ x15 a;

    public w15(x15 x15Var) {
        this.a = x15Var;
    }

    public final void a() {
        this.a.d();
        if (this.a.a.q().u(this.a.a.n.a())) {
            this.a.a.q().q.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                this.a.a.a().n.a("Detected application was in foreground");
                c(this.a.a.n.a(), false);
            }
        }
    }

    public final void b(long j, boolean z) {
        this.a.d();
        this.a.i();
        if (this.a.a.q().u(j)) {
            this.a.a.q().q.b(true);
        }
        this.a.a.q().t.b(j);
        if (this.a.a.q().q.a()) {
            c(j, z);
        }
    }

    public final void c(long j, boolean z) throws IllegalStateException {
        this.a.d();
        if (this.a.a.g()) {
            this.a.a.q().t.b(j);
            this.a.a.a().n.b("Session started, time", Long.valueOf(this.a.a.n.b()));
            Long lValueOf = Long.valueOf(j / 1000);
            this.a.a.s().k("auto", "_sid", lValueOf, j);
            this.a.a.q().q.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", lValueOf.longValue());
            if (this.a.a.g.s(null, ew4.j0) && z) {
                bundle.putLong("_aib", 1L);
            }
            this.a.a.s().B("auto", "_s", j, bundle);
            yc4.b();
            if (this.a.a.g.s(null, ew4.o0)) {
                String strA = this.a.a.q().y.a();
                if (TextUtils.isEmpty(strA)) {
                    return;
                }
                Bundle bundle2 = new Bundle();
                bundle2.putString("_ffr", strA);
                this.a.a.s().B("auto", "_ssr", j, bundle2);
            }
        }
    }
}
