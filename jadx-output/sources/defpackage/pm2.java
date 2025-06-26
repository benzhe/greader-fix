package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.LinkedList;
import java.util.Objects;

/* loaded from: classes.dex */
public final class pm2 {
    public final int b;
    public final int c;
    public final LinkedList<cn2<?>> a = new LinkedList<>();
    public final qn2 d = new qn2();

    public pm2(int i, int i2) {
        this.b = i;
        this.c = i2;
    }

    public final int a() {
        c();
        return this.a.size();
    }

    public final cn2<?> b() {
        qn2 qn2Var = this.d;
        Objects.requireNonNull(qn2Var);
        qn2Var.c = zzr.zzlc().a();
        qn2Var.d++;
        c();
        if (this.a.isEmpty()) {
            return null;
        }
        cn2<?> cn2VarRemove = this.a.remove();
        if (cn2VarRemove != null) {
            qn2 qn2Var2 = this.d;
            qn2Var2.e++;
            qn2Var2.b.e = true;
        }
        return cn2VarRemove;
    }

    public final void c() {
        while (!this.a.isEmpty()) {
            if (!(zzr.zzlc().a() - this.a.getFirst().d >= ((long) this.c))) {
                return;
            }
            qn2 qn2Var = this.d;
            qn2Var.f++;
            qn2Var.b.f++;
            this.a.remove();
        }
    }
}
