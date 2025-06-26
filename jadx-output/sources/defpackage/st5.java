package defpackage;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import com.google.firebase.Timestamp;
import defpackage.ev5;
import defpackage.ln5;
import defpackage.zc6;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class st5 implements tt5 {
    public final gt5 a;
    public final ur5 b;
    public int c;
    public long d;
    public ju5 e = ju5.f;
    public long f;

    public st5(gt5 gt5Var, ur5 ur5Var) {
        this.a = gt5Var;
        this.b = ur5Var;
    }

    @Override // defpackage.tt5
    public void a(ut5 ut5Var) {
        k(ut5Var);
        l(ut5Var);
        this.f++;
        m();
    }

    @Override // defpackage.tt5
    public ut5 b(dr5 dr5Var) {
        ut5 ut5Var = null;
        Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{dr5Var.a()}), "SELECT target_proto FROM targets WHERE canonical_id = ?", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                ut5 ut5VarJ = j(cursorRawQueryWithFactory.getBlob(0));
                if (dr5Var.equals(ut5VarJ.a)) {
                    ut5Var = ut5VarJ;
                }
            } catch (Throwable th) {
                if (cursorRawQueryWithFactory != null) {
                    try {
                        cursorRawQueryWithFactory.close();
                    } catch (Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorRawQueryWithFactory.close();
        return ut5Var;
    }

    @Override // defpackage.tt5
    public int c() {
        return this.c;
    }

    @Override // defpackage.tt5
    public ln5<bu5> d(int i) {
        ln5<bu5> ln5Var = bu5.f;
        Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{Integer.valueOf(i)}), "SELECT path FROM target_documents WHERE target_id = ?", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                ln5Var = new ln5<>(ln5Var.e.o(new bu5(c50.K(cursorRawQueryWithFactory.getString(0))), null));
            } catch (Throwable th) {
                if (cursorRawQueryWithFactory != null) {
                    try {
                        cursorRawQueryWithFactory.close();
                    } catch (Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorRawQueryWithFactory.close();
        return ln5Var;
    }

    @Override // defpackage.tt5
    public ju5 e() {
        return this.e;
    }

    @Override // defpackage.tt5
    public void f(ln5<bu5> ln5Var, int i) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = this.a.i.compileStatement("INSERT OR IGNORE INTO target_documents (target_id, path) VALUES (?, ?)");
        ct5 ct5Var = this.a.g;
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            }
            bu5 bu5Var = (bu5) aVar.next();
            String strQ = c50.Q(bu5Var.e);
            gt5 gt5Var = this.a;
            Object[] objArr = {Integer.valueOf(i), strQ};
            Objects.requireNonNull(gt5Var);
            sQLiteStatementCompileStatement.clearBindings();
            gt5.j(sQLiteStatementCompileStatement, objArr);
            sQLiteStatementCompileStatement.executeUpdateDelete();
            ct5Var.j(bu5Var);
        }
    }

    @Override // defpackage.tt5
    public void g(ut5 ut5Var) {
        k(ut5Var);
        if (l(ut5Var)) {
            m();
        }
    }

    @Override // defpackage.tt5
    public void h(ju5 ju5Var) {
        this.e = ju5Var;
        m();
    }

    @Override // defpackage.tt5
    public void i(ln5<bu5> ln5Var, int i) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = this.a.i.compileStatement("DELETE FROM target_documents WHERE target_id = ? AND path = ?");
        ct5 ct5Var = this.a.g;
        Iterator<bu5> it = ln5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                return;
            }
            bu5 bu5Var = (bu5) aVar.next();
            String strQ = c50.Q(bu5Var.e);
            gt5 gt5Var = this.a;
            Object[] objArr = {Integer.valueOf(i), strQ};
            Objects.requireNonNull(gt5Var);
            sQLiteStatementCompileStatement.clearBindings();
            gt5.j(sQLiteStatementCompileStatement, objArr);
            sQLiteStatementCompileStatement.executeUpdateDelete();
            ct5Var.j(bu5Var);
        }
    }

    public final ut5 j(byte[] bArr) {
        try {
            return this.b.c(ev5.T(bArr));
        } catch (kj6 e) {
            bx5.a("TargetData failed to parse: %s", e);
            throw null;
        }
    }

    public final void k(ut5 ut5Var) {
        int i = ut5Var.b;
        String strA = ut5Var.a.a();
        Timestamp timestamp = ut5Var.e.e;
        ur5 ur5Var = this.b;
        Objects.requireNonNull(ur5Var);
        vs5 vs5Var = vs5.LISTEN;
        bx5.c(vs5Var.equals(ut5Var.d), "Only queries with purpose %s may be stored, got %s", vs5Var, ut5Var.d);
        ev5.b bVarS = ev5.S();
        int i2 = ut5Var.b;
        bVarS.o();
        ev5.G((ev5) bVarS.f, i2);
        long j = ut5Var.c;
        bVarS.o();
        ev5.J((ev5) bVarS.f, j);
        wk6 wk6VarP = ur5Var.a.p(ut5Var.f);
        bVarS.o();
        ev5.E((ev5) bVarS.f, wk6VarP);
        wk6 wk6VarP2 = ur5Var.a.p(ut5Var.e);
        bVarS.o();
        ev5.H((ev5) bVarS.f, wk6VarP2);
        qi6 qi6Var = ut5Var.g;
        bVarS.o();
        ev5.I((ev5) bVarS.f, qi6Var);
        dr5 dr5Var = ut5Var.a;
        if (dr5Var.c()) {
            zc6.c cVarH = ur5Var.a.h(dr5Var);
            bVarS.o();
            ev5.D((ev5) bVarS.f, cVarH);
        } else {
            zc6.d dVarM = ur5Var.a.m(dr5Var);
            bVarS.o();
            ev5.C((ev5) bVarS.f, dVarM);
        }
        ev5 ev5VarL = bVarS.l();
        this.a.i.execSQL("INSERT OR REPLACE INTO targets (target_id, canonical_id, snapshot_version_seconds, snapshot_version_nanos, resume_token, last_listen_sequence_number, target_proto) VALUES (?, ?, ?, ?, ?, ?, ?)", new Object[]{Integer.valueOf(i), strA, Long.valueOf(timestamp.e), Integer.valueOf(timestamp.f), ut5Var.g.H(), Long.valueOf(ut5Var.c), ev5VarL.b()});
    }

    public final boolean l(ut5 ut5Var) {
        boolean z;
        int i = ut5Var.b;
        if (i > this.c) {
            this.c = i;
            z = true;
        } else {
            z = false;
        }
        long j = ut5Var.c;
        if (j <= this.d) {
            return z;
        }
        this.d = j;
        return true;
    }

    public final void m() {
        this.a.i.execSQL("UPDATE target_globals SET highest_target_id = ?, highest_listen_sequence_number = ?, last_remote_snapshot_version_seconds = ?, last_remote_snapshot_version_nanos = ?, target_count = ?", new Object[]{Integer.valueOf(this.c), Long.valueOf(this.d), Long.valueOf(this.e.e.e), Integer.valueOf(this.e.e.f), Long.valueOf(this.f)});
    }
}
