package defpackage;

import defpackage.e37;
import defpackage.q77;
import defpackage.r87;
import defpackage.s87;
import defpackage.w67;
import java.util.HashSet;
import java.util.concurrent.Executor;

/* JADX INFO: Add missing generic type declarations: [ReqT] */
/* loaded from: classes2.dex */
public final class v77<ReqT> extends r87<ReqT> {
    public final /* synthetic */ j47 A;
    public final /* synthetic */ x27 B;
    public final /* synthetic */ l37 C;
    public final /* synthetic */ q77.h D;

    /* JADX WARN: Illegal instructions before constructor call */
    public v77(q77.h hVar, j47 j47Var, i47 i47Var, x27 x27Var, r87.x xVar, l37 l37Var) {
        this.D = hVar;
        this.A = j47Var;
        this.B = x27Var;
        this.C = l37Var;
        q77 q77Var = q77.this;
        r87.q qVar = q77Var.T;
        long j = q77Var.U;
        long j2 = q77Var.V;
        Executor executor = x27Var.b;
        super(j47Var, i47Var, qVar, j, j2, executor == null ? q77Var.h : executor, q77Var.f.x0(), (s87.a) x27Var.a(v87.d), (w67.a) x27Var.a(v87.e), xVar);
    }

    @Override // defpackage.r87
    public y57 v(e37.a aVar, i47 i47Var) {
        x27 x27VarF = this.B.f(aVar);
        a67 a67VarA = this.D.a(new l87(this.A, i47Var, x27VarF));
        l37 l37VarB = this.C.b();
        try {
            return a67VarA.g(this.A, i47Var, x27VarF);
        } finally {
            this.C.i(l37VarB);
        }
    }

    @Override // defpackage.r87
    public void w() {
        x47 x47Var;
        q77.v vVar = q77.this.E;
        synchronized (vVar.a) {
            vVar.b.remove(this);
            if (vVar.b.isEmpty()) {
                x47Var = vVar.c;
                vVar.b = new HashSet();
            } else {
                x47Var = null;
            }
        }
        if (x47Var != null) {
            q77.this.D.b(x47Var);
        }
    }

    @Override // defpackage.r87
    public x47 x() {
        x47 x47Var;
        q77.v vVar = q77.this.E;
        synchronized (vVar.a) {
            x47Var = vVar.c;
            if (x47Var == null) {
                vVar.b.add(this);
                x47Var = null;
            }
        }
        return x47Var;
    }
}
