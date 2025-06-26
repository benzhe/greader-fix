package defpackage;

import android.database.Cursor;
import android.database.SQLException;
import com.google.firebase.Timestamp;
import defpackage.cv5;
import defpackage.dv5;
import defpackage.fv5;
import defpackage.gt5;
import defpackage.mc6;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class lt5 implements zs5 {
    public final gt5 a;
    public final ur5 b;

    public lt5(gt5 gt5Var, ur5 ur5Var) {
        this.a = gt5Var;
        this.b = ur5Var;
    }

    @Override // defpackage.zs5
    public fu5 a(bu5 bu5Var) throws Throwable {
        Cursor cursor = null;
        try {
            Cursor cursorRawQueryWithFactory = this.a.i.rawQueryWithFactory(new ht5(new Object[]{g(bu5Var)}), "SELECT contents FROM remote_documents WHERE path = ?", null, null);
            try {
                fu5 fu5VarF = cursorRawQueryWithFactory.moveToFirst() ? f(cursorRawQueryWithFactory.getBlob(0)) : null;
                cursorRawQueryWithFactory.close();
                return fu5VarF;
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

    @Override // defpackage.zs5
    public void b(bu5 bu5Var) throws SQLException {
        this.a.i.execSQL("DELETE FROM remote_documents WHERE path = ?", new Object[]{g(bu5Var)});
    }

    @Override // defpackage.zs5
    public Map<bu5, fu5> c(Iterable<bu5> iterable) {
        ArrayList arrayList = new ArrayList();
        Iterator<bu5> it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add(c50.Q(it.next().e));
        }
        final HashMap map = new HashMap();
        Iterator<bu5> it2 = iterable.iterator();
        while (it2.hasNext()) {
            map.put(it2.next(), null);
        }
        gt5 gt5Var = this.a;
        List listEmptyList = Collections.emptyList();
        Iterator it3 = arrayList.iterator();
        while (it3.hasNext()) {
            ArrayList arrayList2 = new ArrayList(listEmptyList);
            StringBuilder sb = new StringBuilder();
            for (int i = 0; it3.hasNext() && i < 900 - listEmptyList.size(); i++) {
                if (i > 0) {
                    sb.append(", ");
                }
                sb.append("?");
                arrayList2.add(it3.next());
            }
            gt5.c cVarK = gt5Var.k("SELECT contents FROM remote_documents WHERE path IN (" + sb.toString() + ") ORDER BY path");
            cVarK.a(arrayList2.toArray());
            cVarK.b(new kx5(this, map) { // from class: it5
                public final lt5 a;
                public final Map b;

                {
                    this.a = this;
                    this.b = map;
                }

                @Override // defpackage.kx5
                public void accept(Object obj) {
                    lt5 lt5Var = this.a;
                    Map map2 = this.b;
                    fu5 fu5VarF = lt5Var.f(((Cursor) obj).getBlob(0));
                    map2.put(fu5VarF.a, fu5VarF);
                }
            });
        }
        return map;
    }

    @Override // defpackage.zs5
    public jn5<bu5, yt5> d(final yq5 yq5Var, ju5 ju5Var) throws InterruptedException {
        gt5.c cVar;
        bx5.c(!yq5Var.g(), "CollectionGroup queries should be handled in LocalDocumentsView", new Object[0]);
        iu5 iu5Var = yq5Var.e;
        final int I = iu5Var.I() + 1;
        String strQ = c50.Q(iu5Var);
        String strD0 = c50.D0(strQ);
        Timestamp timestamp = ju5Var.e;
        final jx5 jx5Var = new jx5();
        final jn5[] jn5VarArr = {zt5.a};
        if (ju5Var.equals(ju5.f)) {
            gt5.c cVar2 = new gt5.c(this.a.i, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?");
            cVar2.c = new ht5(new Object[]{strQ, strD0});
            cVar = cVar2;
        } else {
            gt5.c cVar3 = new gt5.c(this.a.i, "SELECT path, contents FROM remote_documents WHERE path >= ? AND path < ?AND (read_time_seconds > ? OR (read_time_seconds = ? AND read_time_nanos > ?))");
            cVar3.c = new ht5(new Object[]{strQ, strD0, Long.valueOf(timestamp.e), Long.valueOf(timestamp.e), Integer.valueOf(timestamp.f)});
            cVar = cVar3;
        }
        cVar.b(new kx5(this, I, jx5Var, yq5Var, jn5VarArr) { // from class: jt5
            public final lt5 a;
            public final int b;
            public final jx5 c;
            public final yq5 d;
            public final jn5[] e;

            {
                this.a = this;
                this.b = I;
                this.c = jx5Var;
                this.d = yq5Var;
                this.e = jn5VarArr;
            }

            @Override // defpackage.kx5
            public void accept(Object obj) {
                final lt5 lt5Var = this.a;
                int i = this.b;
                Executor executor = this.c;
                final yq5 yq5Var2 = this.d;
                final jn5[] jn5VarArr2 = this.e;
                Cursor cursor = (Cursor) obj;
                if (c50.K(cursor.getString(0)).I() != i) {
                    return;
                }
                final byte[] blob = cursor.getBlob(1);
                if (cursor.isLast()) {
                    executor = nx5.b;
                }
                executor.execute(new Runnable(lt5Var, blob, yq5Var2, jn5VarArr2) { // from class: kt5
                    public final lt5 e;
                    public final byte[] f;
                    public final yq5 g;
                    public final jn5[] h;

                    {
                        this.e = lt5Var;
                        this.f = blob;
                        this.g = yq5Var2;
                        this.h = jn5VarArr2;
                    }

                    @Override // java.lang.Runnable
                    public void run() {
                        lt5 lt5Var2 = this.e;
                        byte[] bArr = this.f;
                        yq5 yq5Var3 = this.g;
                        jn5[] jn5VarArr3 = this.h;
                        fu5 fu5VarF = lt5Var2.f(bArr);
                        if ((fu5VarF instanceof yt5) && yq5Var3.h((yt5) fu5VarF)) {
                            synchronized (lt5Var2) {
                                jn5VarArr3[0] = jn5VarArr3[0].o(fu5VarF.a, (yt5) fu5VarF);
                            }
                        }
                    }
                });
            }
        });
        try {
            jx5Var.e.acquire(jx5Var.f);
            jx5Var.f = 0;
            return jn5VarArr[0];
        } catch (InterruptedException e) {
            bx5.a("Interrupted while deserializing documents", e);
            throw null;
        }
    }

    @Override // defpackage.zs5
    public void e(fu5 fu5Var, ju5 ju5Var) throws SQLException {
        bx5.c(!ju5Var.equals(ju5.f), "Cannot add document to the RemoteDocumentCache with a read time of zero", new Object[0]);
        String strG = g(fu5Var.a);
        Timestamp timestamp = ju5Var.e;
        ur5 ur5Var = this.b;
        Objects.requireNonNull(ur5Var);
        cv5.b bVarL = cv5.L();
        if (fu5Var instanceof gu5) {
            gu5 gu5Var = (gu5) fu5Var;
            dv5.b bVarH = dv5.H();
            String strJ = ur5Var.a.j(gu5Var.a);
            bVarH.o();
            dv5.C((dv5) bVarH.f, strJ);
            wk6 wk6VarO = ur5Var.a.o(gu5Var.b.e);
            bVarH.o();
            dv5.D((dv5) bVarH.f, wk6VarO);
            dv5 dv5VarL = bVarH.l();
            bVarL.o();
            cv5.D((cv5) bVarL.f, dv5VarL);
            bVarL.r(gu5Var.c);
        } else if (fu5Var instanceof yt5) {
            yt5 yt5Var = (yt5) fu5Var;
            mc6.b bVarJ = mc6.J();
            String strJ2 = ur5Var.a.j(yt5Var.a);
            bVarJ.o();
            mc6.C((mc6) bVarJ.f, strJ2);
            Map<String, bd6> mapF = yt5Var.d.a.U().F();
            bVarJ.o();
            ((uj6) mc6.D((mc6) bVarJ.f)).putAll(mapF);
            wk6 wk6VarO2 = ur5Var.a.o(yt5Var.b.e);
            bVarJ.o();
            mc6.E((mc6) bVarJ.f, wk6VarO2);
            mc6 mc6VarL = bVarJ.l();
            bVarL.o();
            cv5.E((cv5) bVarL.f, mc6VarL);
            bVarL.r(yt5Var.c());
        } else {
            if (!(fu5Var instanceof ku5)) {
                bx5.a("Unknown document type %s", fu5Var.getClass().getCanonicalName());
                throw null;
            }
            ku5 ku5Var = (ku5) fu5Var;
            fv5.b bVarH2 = fv5.H();
            String strJ3 = ur5Var.a.j(ku5Var.a);
            bVarH2.o();
            fv5.C((fv5) bVarH2.f, strJ3);
            wk6 wk6VarO3 = ur5Var.a.o(ku5Var.b.e);
            bVarH2.o();
            fv5.D((fv5) bVarH2.f, wk6VarO3);
            fv5 fv5VarL = bVarH2.l();
            bVarL.o();
            cv5.F((cv5) bVarL.f, fv5VarL);
            bVarL.r(true);
        }
        this.a.i.execSQL("INSERT OR REPLACE INTO remote_documents (path, read_time_seconds, read_time_nanos, contents) VALUES (?, ?, ?, ?)", new Object[]{strG, Long.valueOf(timestamp.e), Integer.valueOf(timestamp.f), bVarL.l().b()});
        this.a.e.b(fu5Var.a.e.L());
    }

    public final fu5 f(byte[] bArr) {
        try {
            return this.b.a(cv5.M(bArr));
        } catch (kj6 e) {
            bx5.a("MaybeDocument failed to parse: %s", e);
            throw null;
        }
    }

    public final String g(bu5 bu5Var) {
        return c50.Q(bu5Var.e);
    }
}
