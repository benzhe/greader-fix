package defpackage;

import defpackage.qx5;
import java.util.Objects;

/* loaded from: classes.dex */
public final class sp5 extends op5 {
    public final of5 a;
    public final qp5 b;
    public tp5 c;
    public boolean d;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [qp5] */
    public sp5(of5 of5Var) {
        this.a = of5Var;
        ?? r0 = new Object(this) { // from class: qp5
        };
        this.b = r0;
        String strA = of5Var.a();
        this.c = strA != null ? new tp5(strA) : tp5.b;
        of5Var.b(r0);
    }

    @Override // defpackage.op5
    public synchronized e45<String> a() {
        boolean z;
        final int i;
        z = this.d;
        i = 0;
        this.d = false;
        return this.a.c(z).j(nx5.b, new w35(this, i) { // from class: rp5
            public final sp5 a;
            public final int b;

            {
                this.a = this;
                this.b = i;
            }

            @Override // defpackage.w35
            public Object a(e45 e45Var) {
                e45<String> e45VarW;
                sp5 sp5Var = this.a;
                int i2 = this.b;
                synchronized (sp5Var) {
                    if (i2 != 0) {
                        qx5.a(qx5.a.DEBUG, "FirebaseAuthCredentialsProvider", "getToken aborted due to token change", new Object[0]);
                        e45VarW = sp5Var.a();
                    } else if (e45Var.o()) {
                        Objects.requireNonNull((nf5) e45Var.l());
                        e45VarW = c50.X(null);
                    } else {
                        e45VarW = c50.W(e45Var.k());
                    }
                }
                return e45VarW;
            }
        });
    }

    @Override // defpackage.op5
    public synchronized void b() {
        this.d = true;
    }

    @Override // defpackage.op5
    public synchronized void c(jq5<tp5> jq5Var) {
        jq5Var.a(this.c);
    }
}
