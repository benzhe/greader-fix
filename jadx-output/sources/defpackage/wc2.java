package defpackage;

import android.content.Context;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class wc2 implements qd2<xc2> {
    public final cq0 a;
    public final zv2 b;
    public final Context c;

    public wc2(cq0 cq0Var, zv2 zv2Var, Context context) {
        this.a = cq0Var;
        this.b = zv2Var;
        this.c = context;
    }

    @Override // defpackage.qd2
    public final aw2<xc2> a() {
        return this.b.y(new Callable(this) { // from class: zc2
            public final wc2 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() throws NoSuchMethodException, SecurityException {
                String str;
                wc2 wc2Var = this.e;
                if (!wc2Var.a.h(wc2Var.c)) {
                    return new xc2(null, null, null, null, null);
                }
                String strJ = wc2Var.a.j(wc2Var.c);
                if (strJ == null) {
                    strJ = "";
                }
                String str2 = strJ;
                String strK = wc2Var.a.k(wc2Var.c);
                if (strK == null) {
                    strK = "";
                }
                String str3 = strK;
                String strL = wc2Var.a.l(wc2Var.c);
                if (strL == null) {
                    strL = "";
                }
                String str4 = strL;
                cq0 cq0Var = wc2Var.a;
                Context context = wc2Var.c;
                if (cq0Var.h(context)) {
                    synchronized (cq0Var.b) {
                        str = cq0Var.d;
                        if (str == null) {
                            if (cq0.i(context)) {
                                cq0Var.d = (String) cq0Var.b("getAppIdOrigin", cq0Var.d, dq0.a);
                            } else {
                                cq0Var.d = "fa";
                            }
                            str = cq0Var.d;
                        }
                    }
                } else {
                    str = null;
                }
                return new xc2(str2, str3, str4, str == null ? "" : str, "TIME_OUT".equals(str3) ? (Long) os3.j.f.a(y40.Y) : null);
            }
        });
    }
}
