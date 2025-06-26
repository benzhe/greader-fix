package defpackage;

import android.database.SQLException;
import defpackage.js5;

/* loaded from: classes.dex */
public class ct5 implements xs5, is5 {
    public final gt5 a;
    public sq5 b;
    public long c = -1;
    public final js5 d;
    public ys5 e;

    public ct5(gt5 gt5Var, js5.a aVar) {
        this.a = gt5Var;
        this.d = new js5(this, aVar);
    }

    @Override // defpackage.xs5
    public void a(bu5 bu5Var) throws SQLException {
        j(bu5Var);
    }

    @Override // defpackage.xs5
    public void b() {
        bx5.c(this.c != -1, "Committing a transaction without having started one", new Object[0]);
        this.c = -1L;
    }

    @Override // defpackage.xs5
    public void c() {
        bx5.c(this.c == -1, "Starting a transaction without committing the previous one", new Object[0]);
        sq5 sq5Var = this.b;
        long j = sq5Var.a + 1;
        sq5Var.a = j;
        this.c = j;
    }

    @Override // defpackage.xs5
    public void d(bu5 bu5Var) throws SQLException {
        j(bu5Var);
    }

    @Override // defpackage.xs5
    public long e() {
        bx5.c(this.c != -1, "Attempting to get a sequence number outside of a transaction", new Object[0]);
        return this.c;
    }

    @Override // defpackage.xs5
    public void f(ut5 ut5Var) {
        ut5 ut5VarB = ut5Var.b(e());
        st5 st5Var = this.a.d;
        st5Var.k(ut5VarB);
        if (st5Var.l(ut5VarB)) {
            st5Var.m();
        }
    }

    @Override // defpackage.xs5
    public void g(ys5 ys5Var) {
        this.e = ys5Var;
    }

    @Override // defpackage.xs5
    public void h(bu5 bu5Var) throws SQLException {
        j(bu5Var);
    }

    @Override // defpackage.xs5
    public void i(bu5 bu5Var) throws SQLException {
        j(bu5Var);
    }

    public final void j(bu5 bu5Var) throws SQLException {
        String strQ = c50.Q(bu5Var.e);
        this.a.i.execSQL("INSERT OR REPLACE INTO target_documents (target_id, path, sequence_number) VALUES (0, ?, ?)", new Object[]{strQ, Long.valueOf(e())});
    }
}
