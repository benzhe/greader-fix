package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public final class rl2 {
    public final sk2 a;
    public final wk2 b;
    public final sy1 c;
    public final jq2 d;

    public rl2(sy1 sy1Var, jq2 jq2Var, sk2 sk2Var, wk2 wk2Var) {
        this.a = sk2Var;
        this.b = wk2Var;
        this.c = sy1Var;
        this.d = jq2Var;
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;)V */
    public final void a(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            b((String) it.next(), i);
        }
    }

    public final void b(String str, int i) {
        if (!this.a.d0) {
            jq2 jq2Var = this.d;
            jq2Var.a.execute(new iq2(jq2Var, str));
        } else {
            zy1 zy1Var = new zy1(zzr.zzlc().a(), this.b.b, str, i);
            sy1 sy1Var = this.c;
            sy1Var.c(new yy1(sy1Var, zy1Var));
        }
    }

    public final void c(List<String> list) {
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            b(it.next(), 2);
        }
    }
}
