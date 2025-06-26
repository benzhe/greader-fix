package defpackage;

import java.util.List;

/* loaded from: classes.dex */
public final class ag1 implements xf1 {
    public final List<String> a;
    public final jq2 b;
    public boolean c;

    public ag1(sk2 sk2Var, jq2 jq2Var) {
        this.a = sk2Var.o;
        this.b = jq2Var;
    }

    @Override // defpackage.xf1
    public final void a() {
        if (this.c) {
            return;
        }
        this.b.b(this.a);
        this.c = true;
    }
}
