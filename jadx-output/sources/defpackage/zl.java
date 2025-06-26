package defpackage;

import android.database.Cursor;
import defpackage.d0;

/* loaded from: classes.dex */
public final class zl implements yl {
    public final lg a;
    public final hg b;
    public final og c;

    public class a extends hg<xl> {
        public a(zl zlVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "INSERT OR REPLACE INTO `SystemIdInfo`(`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // defpackage.hg
        public void d(eh ehVar, xl xlVar) {
            String str = xlVar.a;
            if (str == null) {
                ehVar.e.bindNull(1);
            } else {
                ehVar.e.bindString(1, str);
            }
            ehVar.e.bindLong(2, r5.b);
        }
    }

    public class b extends og {
        public b(zl zlVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public zl(lg lgVar) {
        this.a = lgVar;
        this.b = new a(this, lgVar);
        this.c = new b(this, lgVar);
    }

    public xl a(String str) {
        ng ngVarC = ng.c("SELECT * FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            return cursorA.moveToFirst() ? new xl(cursorA.getString(d0.h.B(cursorA, "work_spec_id")), cursorA.getInt(d0.h.B(cursorA, "system_id"))) : null;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public void b(xl xlVar) {
        this.a.b();
        this.a.c();
        try {
            this.b.e(xlVar);
            this.a.j();
        } finally {
            this.a.g();
        }
    }

    public void c(String str) {
        this.a.b();
        eh ehVarA = this.c.a();
        if (str == null) {
            ehVarA.e.bindNull(1);
        } else {
            ehVarA.e.bindString(1, str);
        }
        this.a.c();
        try {
            ehVarA.a();
            this.a.j();
            this.a.g();
            og ogVar = this.c;
            if (ehVarA == ogVar.c) {
                ogVar.a.set(false);
            }
        } catch (Throwable th) {
            this.a.g();
            this.c.c(ehVarA);
            throw th;
        }
    }
}
