package defpackage;

import android.database.Cursor;
import android.database.SQLException;
import android.database.sqlite.SQLiteStatement;
import com.google.firebase.Timestamp;
import defpackage.gt5;
import defpackage.gv5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public final class ft5 implements ss5 {
    public final gt5 a;
    public final ur5 b;
    public final String c;
    public int d;
    public qi6 e;

    public ft5(gt5 gt5Var, ur5 ur5Var, tp5 tp5Var) {
        this.a = gt5Var;
        this.b = ur5Var;
        String str = tp5Var.a;
        this.c = str != null ? str : "";
        this.e = ax5.s;
    }

    @Override // defpackage.ss5
    public void a() throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{this.c}), "SELECT batch_id FROM mutations WHERE uid = ? LIMIT 1", null, null);
            try {
                boolean z = !cursorRawQueryWithFactory.moveToFirst();
                cursorRawQueryWithFactory.close();
                if (z) {
                    ArrayList arrayList = new ArrayList();
                    Cursor cursorRawQueryWithFactory2 = this.a.i.rawQueryWithFactory(new ht5(new Object[]{this.c}), "SELECT path FROM document_mutations WHERE uid = ?", null, null);
                    while (cursorRawQueryWithFactory2.moveToNext()) {
                        try {
                            arrayList.add(c50.K(cursorRawQueryWithFactory2.getString(0)));
                        } catch (Throwable th) {
                            if (cursorRawQueryWithFactory2 != null) {
                                try {
                                    cursorRawQueryWithFactory2.close();
                                } catch (Throwable unused) {
                                }
                            }
                            throw th;
                        }
                    }
                    cursorRawQueryWithFactory2.close();
                    bx5.c(arrayList.isEmpty(), "Document leak -- detected dangling mutation references when queue is empty. Dangling keys: %s", arrayList);
                }
            } catch (Throwable th2) {
                th = th2;
                cursor = cursorRawQueryWithFactory;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    @Override // defpackage.ss5
    public List<ru5> b(Iterable<bu5> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<bu5> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(c50.Q(it.next().e));
        }
        gt5 gt5Var = this.a;
        List listAsList = Arrays.asList(1000000, this.c);
        Iterator it2 = arrayList.iterator();
        final ArrayList arrayList2 = new ArrayList();
        final HashSet hashSet = new HashSet();
        int i = 0;
        while (it2.hasNext()) {
            i++;
            ArrayList arrayList3 = new ArrayList(listAsList);
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; it2.hasNext() && i2 < 900 - listAsList.size(); i2++) {
                if (i2 > 0) {
                    sb.append(", ");
                }
                sb.append("?");
                arrayList3.add(it2.next());
            }
            gt5.c cVarK = gt5Var.k("SELECT DISTINCT dm.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path IN (" + sb.toString() + ") AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id");
            cVarK.a(arrayList3.toArray());
            cVarK.b(new kx5(this, hashSet, arrayList2) { // from class: et5
                public final ft5 a;
                public final Set b;
                public final List c;

                {
                    this.a = this;
                    this.b = hashSet;
                    this.c = arrayList2;
                }

                @Override // defpackage.kx5
                public void accept(Object obj) {
                    ft5 ft5Var = this.a;
                    Set set = this.b;
                    List list = this.c;
                    Cursor cursor = (Cursor) obj;
                    int i3 = cursor.getInt(0);
                    if (set.contains(Integer.valueOf(i3))) {
                        return;
                    }
                    set.add(Integer.valueOf(i3));
                    list.add(ft5Var.m(i3, cursor.getBlob(1)));
                }
            });
        }
        if (i > 1) {
            Collections.sort(arrayList2, new Comparator() { // from class: dt5
                @Override // java.util.Comparator
                public int compare(Object obj, Object obj2) {
                    return vx5.b(((ru5) obj).a, ((ru5) obj2).a);
                }
            });
        }
        return arrayList2;
    }

    @Override // defpackage.ss5
    public ru5 c(Timestamp timestamp, List<qu5> list, List<qu5> list2) throws SQLException {
        int i = this.d;
        this.d = i + 1;
        ru5 ru5Var = new ru5(i, timestamp, list, list2);
        ur5 ur5Var = this.b;
        Objects.requireNonNull(ur5Var);
        gv5.b bVarM = gv5.M();
        int i2 = ru5Var.a;
        bVarM.o();
        gv5.C((gv5) bVarM.f, i2);
        wk6 wk6VarO = ur5Var.a.o(ru5Var.b);
        bVarM.o();
        gv5.F((gv5) bVarM.f, wk6VarO);
        Iterator<qu5> it = ru5Var.c.iterator();
        while (it.hasNext()) {
            cd6 cd6VarK = ur5Var.a.k(it.next());
            bVarM.o();
            gv5.D((gv5) bVarM.f, cd6VarK);
        }
        Iterator<qu5> it2 = ru5Var.d.iterator();
        while (it2.hasNext()) {
            cd6 cd6VarK2 = ur5Var.a.k(it2.next());
            bVarM.o();
            gv5.E((gv5) bVarM.f, cd6VarK2);
        }
        gv5 gv5VarL = bVarM.l();
        this.a.i.execSQL("INSERT INTO mutations (uid, batch_id, mutations) VALUES (?, ?, ?)", new Object[]{this.c, Integer.valueOf(i), gv5VarL.b()});
        HashSet hashSet = new HashSet();
        SQLiteStatement sQLiteStatementCompileStatement = this.a.i.compileStatement("INSERT INTO document_mutations (uid, path, batch_id) VALUES (?, ?, ?)");
        Iterator<qu5> it3 = list2.iterator();
        while (it3.hasNext()) {
            bu5 bu5Var = it3.next().a;
            if (hashSet.add(bu5Var)) {
                String strQ = c50.Q(bu5Var.e);
                gt5 gt5Var = this.a;
                Object[] objArr = {this.c, strQ, Integer.valueOf(i)};
                Objects.requireNonNull(gt5Var);
                sQLiteStatementCompileStatement.clearBindings();
                gt5.j(sQLiteStatementCompileStatement, objArr);
                sQLiteStatementCompileStatement.executeUpdateDelete();
                this.a.e.b(bu5Var.e.L());
            }
        }
        return ru5Var;
    }

    @Override // defpackage.ss5
    public List<ru5> d(bu5 bu5Var) {
        String strQ = c50.Q(bu5Var.e);
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{1000000, this.c, strQ}), "SELECT m.batch_id, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path = ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                arrayList.add(m(cursorRawQueryWithFactory.getInt(0), cursorRawQueryWithFactory.getBlob(1)));
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
        return arrayList;
    }

    @Override // defpackage.ss5
    public void e(qi6 qi6Var) throws SQLException {
        Objects.requireNonNull(qi6Var);
        this.e = qi6Var;
        n();
    }

    @Override // defpackage.ss5
    public ru5 f(int i) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{1000000, this.c, Integer.valueOf(i + 1)}), "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id >= ? ORDER BY batch_id ASC LIMIT 1", null, null);
            try {
                ru5 ru5VarM = cursorRawQueryWithFactory.moveToFirst() ? m(cursorRawQueryWithFactory.getInt(0), cursorRawQueryWithFactory.getBlob(1)) : null;
                cursorRawQueryWithFactory.close();
                return ru5VarM;
            } catch (Throwable th) {
                th = th;
                cursor = cursorRawQueryWithFactory;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // defpackage.ss5
    public ru5 g(int i) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{1000000, this.c, Integer.valueOf(i)}), "SELECT SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? AND batch_id = ?", null, null);
            try {
                ru5 ru5VarM = cursorRawQueryWithFactory.moveToFirst() ? m(i, cursorRawQueryWithFactory.getBlob(0)) : null;
                cursorRawQueryWithFactory.close();
                return ru5VarM;
            } catch (Throwable th) {
                th = th;
                cursor = cursorRawQueryWithFactory;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // defpackage.ss5
    public void h(ru5 ru5Var) throws SQLException {
        SQLiteStatement sQLiteStatementCompileStatement = this.a.i.compileStatement("DELETE FROM mutations WHERE uid = ? AND batch_id = ?");
        SQLiteStatement sQLiteStatementCompileStatement2 = this.a.i.compileStatement("DELETE FROM document_mutations WHERE uid = ? AND path = ? AND batch_id = ?");
        int i = ru5Var.a;
        gt5 gt5Var = this.a;
        Object[] objArr = {this.c, Integer.valueOf(i)};
        Objects.requireNonNull(gt5Var);
        sQLiteStatementCompileStatement.clearBindings();
        gt5.j(sQLiteStatementCompileStatement, objArr);
        bx5.c(sQLiteStatementCompileStatement.executeUpdateDelete() != 0, "Mutation batch (%s, %d) did not exist", this.c, Integer.valueOf(ru5Var.a));
        Iterator<qu5> it = ru5Var.d.iterator();
        while (it.hasNext()) {
            bu5 bu5Var = it.next().a;
            String strQ = c50.Q(bu5Var.e);
            gt5 gt5Var2 = this.a;
            Object[] objArr2 = {this.c, strQ, Integer.valueOf(i)};
            Objects.requireNonNull(gt5Var2);
            sQLiteStatementCompileStatement2.clearBindings();
            gt5.j(sQLiteStatementCompileStatement2, objArr2);
            sQLiteStatementCompileStatement2.executeUpdateDelete();
            this.a.g.j(bu5Var);
        }
    }

    @Override // defpackage.ss5
    public List<ru5> i(yq5 yq5Var) {
        bx5.c(!yq5Var.g(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        iu5 iu5Var = yq5Var.e;
        int I = iu5Var.I() + 1;
        String strQ = c50.Q(iu5Var);
        String strD0 = c50.D0(strQ);
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{1000000, this.c, strQ, strD0}), "SELECT dm.batch_id, dm.path, SUBSTR(m.mutations, 1, ?) FROM document_mutations dm, mutations m WHERE dm.uid = ? AND dm.path >= ? AND dm.path < ? AND dm.uid = m.uid AND dm.batch_id = m.batch_id ORDER BY dm.batch_id", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                int i = cursorRawQueryWithFactory.getInt(0);
                int size = arrayList.size();
                if (size <= 0 || i != ((ru5) arrayList.get(size - 1)).a) {
                    if (c50.K(cursorRawQueryWithFactory.getString(1)).I() == I) {
                        arrayList.add(m(i, cursorRawQueryWithFactory.getBlob(2)));
                    }
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
        return arrayList;
    }

    @Override // defpackage.ss5
    public qi6 j() {
        return this.e;
    }

    @Override // defpackage.ss5
    public void k(ru5 ru5Var, qi6 qi6Var) throws SQLException {
        Objects.requireNonNull(qi6Var);
        this.e = qi6Var;
        n();
    }

    @Override // defpackage.ss5
    public List<ru5> l() {
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{1000000, this.c}), "SELECT batch_id, SUBSTR(mutations, 1, ?) FROM mutations WHERE uid = ? ORDER BY batch_id ASC", null, null);
        while (cursorRawQueryWithFactory.moveToNext()) {
            try {
                arrayList.add(m(cursorRawQueryWithFactory.getInt(0), cursorRawQueryWithFactory.getBlob(1)));
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
        return arrayList;
    }

    public final ru5 m(int i, byte[] bArr) throws Throwable {
        Cursor cursorRawQueryWithFactory;
        try {
            if (bArr.length < 1000000) {
                return this.b.b(gv5.O(bArr));
            }
            ArrayList arrayList = new ArrayList();
            qi6 qi6Var = qi6.f;
            arrayList.add(qi6.o(bArr, 0, bArr.length));
            boolean z = true;
            while (z) {
                try {
                    cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{Integer.valueOf((arrayList.size() * 1000000) + 1), 1000000, this.c, Integer.valueOf(i)}), "SELECT SUBSTR(mutations, ?, ?) FROM mutations WHERE uid = ? AND batch_id = ?", null, null);
                    try {
                        if (cursorRawQueryWithFactory.moveToFirst()) {
                            byte[] blob = cursorRawQueryWithFactory.getBlob(0);
                            qi6 qi6Var2 = qi6.f;
                            arrayList.add(qi6.o(blob, 0, blob.length));
                            if (blob.length < 1000000) {
                                z = false;
                            }
                        }
                        cursorRawQueryWithFactory.close();
                    } catch (Throwable th) {
                        th = th;
                        if (cursorRawQueryWithFactory != null) {
                            cursorRawQueryWithFactory.close();
                        }
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    cursorRawQueryWithFactory = null;
                }
            }
            qi6 qi6Var3 = qi6.f;
            int size = arrayList.size();
            return this.b.b(gv5.N(size == 0 ? qi6.f : qi6.d(arrayList.iterator(), size)));
        } catch (kj6 e) {
            bx5.a("MutationBatch failed to parse: %s", e);
            throw null;
        }
    }

    public final void n() throws SQLException {
        this.a.i.execSQL("INSERT OR REPLACE INTO mutation_queues (uid, last_acknowledged_batch_id, last_stream_token) VALUES (?, ?, ?)", new Object[]{this.c, -1, this.e.H()});
    }

    @Override // defpackage.ss5
    public void start() throws SQLException {
        boolean z;
        ArrayList arrayList = new ArrayList();
        Cursor cursorRawQueryWithFactory = null;
        Cursor cursorRawQuery = this.a.i.rawQuery("SELECT uid FROM mutation_queues", null);
        while (true) {
            try {
                z = false;
                if (!cursorRawQuery.moveToNext()) {
                    break;
                } else {
                    arrayList.add(cursorRawQuery.getString(0));
                }
            } catch (Throwable th) {
                if (cursorRawQuery != null) {
                    try {
                        cursorRawQuery.close();
                    } catch (Throwable unused) {
                    }
                }
                throw th;
            }
        }
        cursorRawQuery.close();
        this.d = 0;
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            Cursor cursorRawQueryWithFactory2 = this.a.i.rawQueryWithFactory(new ht5(new Object[]{(String) it.next()}), "SELECT MAX(batch_id) FROM mutations WHERE uid = ?", null, null);
            while (cursorRawQueryWithFactory2.moveToNext()) {
                try {
                    this.d = Math.max(this.d, cursorRawQueryWithFactory2.getInt(0));
                } catch (Throwable th2) {
                    if (cursorRawQueryWithFactory2 != null) {
                        try {
                            cursorRawQueryWithFactory2.close();
                        } catch (Throwable unused2) {
                        }
                    }
                    throw th2;
                }
            }
            cursorRawQueryWithFactory2.close();
        }
        this.d++;
        try {
            cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{this.c}), "SELECT last_stream_token FROM mutation_queues WHERE uid = ?", null, null);
            if (cursorRawQueryWithFactory.moveToFirst()) {
                this.e = qi6.n(cursorRawQueryWithFactory.getBlob(0));
                cursorRawQueryWithFactory.close();
                z = true;
            } else {
                cursorRawQueryWithFactory.close();
            }
            if (z) {
                return;
            }
            n();
        } catch (Throwable th3) {
            if (cursorRawQueryWithFactory != null) {
                cursorRawQueryWithFactory.close();
            }
            throw th3;
        }
    }
}
