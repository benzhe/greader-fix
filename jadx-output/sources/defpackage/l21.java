package defpackage;

import android.text.TextUtils;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class l21 {
    public final String a;
    public final qf0 b;
    public final Executor c;
    public q21 d;
    public final kb0<Object> e = new k21(this);
    public final kb0<Object> f = new m21(this);

    public l21(String str, qf0 qf0Var, Executor executor) {
        this.a = str;
        this.b = qf0Var;
        this.c = executor;
    }

    public static boolean b(l21 l21Var, Map map) {
        Objects.requireNonNull(l21Var);
        if (map == null) {
            return false;
        }
        String str = (String) map.get("hashCode");
        return !TextUtils.isEmpty(str) && str.equals(l21Var.a);
    }

    public final void a(q21 q21Var) {
        qf0 qf0Var = this.b;
        final kb0<Object> kb0Var = this.e;
        qf0Var.a();
        aw2<we0> aw2Var = qf0Var.b;
        final String str = "/updateActiveView";
        cv2 cv2Var = new cv2(str, kb0Var) { // from class: rf0
            public final String a;
            public final kb0 b;

            {
                this.a = str;
                this.b = kb0Var;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                we0 we0Var = (we0) obj;
                we0Var.o(this.a, this.b);
                return vt2.j(we0Var);
            }
        };
        zv2 zv2Var = ms0.f;
        qf0Var.b = vt2.m(aw2Var, cv2Var, zv2Var);
        qf0 qf0Var2 = this.b;
        final kb0<Object> kb0Var2 = this.f;
        qf0Var2.a();
        final String str2 = "/untrackActiveViewUnit";
        qf0Var2.b = vt2.m(qf0Var2.b, new cv2(str2, kb0Var2) { // from class: rf0
            public final String a;
            public final kb0 b;

            {
                this.a = str2;
                this.b = kb0Var2;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                we0 we0Var = (we0) obj;
                we0Var.o(this.a, this.b);
                return vt2.j(we0Var);
            }
        }, zv2Var);
        this.d = q21Var;
    }
}
