package defpackage;

import android.os.Bundle;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class xu4 extends yv4 {
    public final Map<String, Long> b;
    public final Map<String, Integer> c;
    public long d;

    public xu4(rx4 rx4Var) {
        super(rx4Var);
        this.c = new f4();
        this.b = new f4();
    }

    public final void f(String str, long j) throws IllegalStateException {
        if (str == null || str.length() == 0) {
            this.a.a().f.a("Ad unit id must be a non-empty string");
        } else {
            this.a.m().q(new yr4(this, str, j));
        }
    }

    public final void g(String str, long j) throws IllegalStateException {
        if (str == null || str.length() == 0) {
            this.a.a().f.a("Ad unit id must be a non-empty string");
        } else {
            this.a.m().q(new vs4(this, str, j));
        }
    }

    public final void h(long j) {
        a05 a05VarP = this.a.y().p(false);
        for (String str : this.b.keySet()) {
            k(str, j - this.b.get(str).longValue(), a05VarP);
        }
        if (!this.b.isEmpty()) {
            i(j - this.d, a05VarP);
        }
        l(j);
    }

    public final void i(long j, a05 a05Var) {
        if (a05Var == null) {
            this.a.a().n.a("Not logging ad exposure. No active activity");
            return;
        }
        if (j < 1000) {
            this.a.a().n.b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j);
        h05.r(a05Var, bundle, true);
        this.a.s().A("am", "_xa", bundle);
    }

    public final void k(String str, long j, a05 a05Var) {
        if (a05Var == null) {
            this.a.a().n.a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j < 1000) {
            this.a.a().n.b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j);
        h05.r(a05Var, bundle, true);
        this.a.s().A("am", "_xu", bundle);
    }

    public final void l(long j) {
        Iterator<String> it = this.b.keySet().iterator();
        while (it.hasNext()) {
            this.b.put(it.next(), Long.valueOf(j));
        }
        if (this.b.isEmpty()) {
            return;
        }
        this.d = j;
    }
}
