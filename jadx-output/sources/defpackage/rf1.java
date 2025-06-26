package defpackage;

import android.content.Context;
import android.view.View;
import java.util.Map;
import java.util.Set;
import java.util.WeakHashMap;

/* loaded from: classes.dex */
public final class rf1 extends xd1<em3> implements em3 {
    public Map<View, am3> f;
    public final Context g;
    public final sk2 h;

    public rf1(Context context, Set<sf1<em3>> set, sk2 sk2Var) {
        super(set);
        this.f = new WeakHashMap(1);
        this.g = context;
        this.h = sk2Var;
    }

    public final synchronized void G0(View view) {
        am3 am3Var = this.f.get(view);
        if (am3Var == null) {
            am3Var = new am3(this.g, view);
            am3Var.q.add(this);
            am3Var.d(3);
            this.f.put(view, am3Var);
        }
        sk2 sk2Var = this.h;
        if (sk2Var != null && sk2Var.R) {
            if (((Boolean) os3.j.f.a(y40.R0)).booleanValue()) {
                am3Var.n.zzfc(((Long) os3.j.f.a(y40.Q0)).longValue());
                return;
            }
        }
        am3Var.n.zzfc(am3.t);
    }

    @Override // defpackage.em3
    public final synchronized void c0(final fm3 fm3Var) {
        D0(new zd1(fm3Var) { // from class: uf1
            public final fm3 a;

            {
                this.a = fm3Var;
            }

            @Override // defpackage.zd1
            public final void e(Object obj) {
                ((em3) obj).c0(this.a);
            }
        });
    }
}
