package defpackage;

import android.content.Context;
import defpackage.hl;
import java.util.List;

/* loaded from: classes.dex */
public class el implements hl.a {
    public static final String d = vj.e("WorkConstraintsTracker");
    public final dl a;
    public final hl<?>[] b;
    public final Object c;

    public el(Context context, xm xmVar, dl dlVar) {
        Context applicationContext = context.getApplicationContext();
        this.a = dlVar;
        this.b = new hl[]{new fl(applicationContext, xmVar), new gl(applicationContext, xmVar), new ml(applicationContext, xmVar), new il(applicationContext, xmVar), new ll(applicationContext, xmVar), new kl(applicationContext, xmVar), new jl(applicationContext, xmVar)};
        this.c = new Object();
    }

    public boolean a(String str) {
        synchronized (this.c) {
            for (hl<?> hlVar : this.b) {
                Object obj = hlVar.b;
                if (obj != null && hlVar.c(obj) && hlVar.a.contains(str)) {
                    vj.c().a(d, String.format("Work %s constrained by %s", str, hlVar.getClass().getSimpleName()), new Throwable[0]);
                    return false;
                }
            }
            return true;
        }
    }

    public void b(List<dm> list) {
        synchronized (this.c) {
            for (hl<?> hlVar : this.b) {
                if (hlVar.d != null) {
                    hlVar.d = null;
                    hlVar.e();
                }
            }
            for (hl<?> hlVar2 : this.b) {
                hlVar2.d(list);
            }
            for (hl<?> hlVar3 : this.b) {
                if (hlVar3.d != this) {
                    hlVar3.d = this;
                    hlVar3.e();
                }
            }
        }
    }

    public void c() {
        synchronized (this.c) {
            for (hl<?> hlVar : this.b) {
                if (!hlVar.a.isEmpty()) {
                    hlVar.a.clear();
                    hlVar.c.b(hlVar);
                }
            }
        }
    }
}
