package defpackage;

import android.content.Context;
import java.util.Objects;

/* loaded from: classes.dex */
public abstract class vm6<I, O> {
    public Context a;
    public wm6 b;
    public tm6[] c = new tm6[0];

    public vm6(Context context) {
        this.a = context;
        if (this.b == null) {
            this.b = new zm6(context);
        }
    }

    public void a() {
        wm6 wm6Var = this.b;
        wm6Var.a.clear();
        wm6Var.b.c();
        wm6Var.c.c();
        wm6Var.e.clear();
    }

    public void b() {
        this.b.d.a.clear();
    }

    public abstract O c(I i) throws Exception;

    public void d(I i, long j) {
        try {
            O oC = c(i);
            zm6 zm6Var = (zm6) this.b;
            zm6Var.f.post(new ym6(zm6Var, oC, Long.valueOf(j)));
        } catch (Exception e) {
            for (tm6 tm6Var : this.c) {
                int iA = tm6Var.a(e);
                if (iA != 0) {
                    zm6 zm6Var2 = (zm6) this.b;
                    zm6Var2.f.post(new xm6(zm6Var2, iA, Long.valueOf(j)));
                    return;
                }
            }
            zm6 zm6Var3 = (zm6) this.b;
            zm6Var3.f.post(new xm6(zm6Var3, 0, Long.valueOf(j)));
        }
    }

    public long e(I i) {
        wm6 wm6Var = this.b;
        Objects.requireNonNull(wm6Var);
        long jRound = Math.round(Math.random() * 9.223372036854776E18d);
        wm6Var.a.add(Long.valueOf(jRound));
        wm6Var.b.i(jRound, "DEFAULT_FINISHED_EVENT");
        wm6Var.c.i(jRound, "DEFAULT_ERROR_EVENT");
        sm6.a(new um6(this, "", 0, "", i, jRound));
        return jRound;
    }
}
