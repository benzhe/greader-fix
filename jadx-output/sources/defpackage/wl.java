package defpackage;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class wl implements vl {
    public final lg a;
    public final hg b;

    public class a extends hg<ul> {
        public a(wl wlVar, lg lgVar) {
            super(lgVar);
        }

        @Override // defpackage.og
        public String b() {
            return "INSERT OR IGNORE INTO `Dependency`(`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // defpackage.hg
        public void d(eh ehVar, ul ulVar) {
            ul ulVar2 = ulVar;
            String str = ulVar2.a;
            if (str == null) {
                ehVar.e.bindNull(1);
            } else {
                ehVar.e.bindString(1, str);
            }
            String str2 = ulVar2.b;
            if (str2 == null) {
                ehVar.e.bindNull(2);
            } else {
                ehVar.e.bindString(2, str2);
            }
        }
    }

    public wl(lg lgVar) {
        this.a = lgVar;
        this.b = new a(this, lgVar);
    }

    public List<String> a(String str) {
        ng ngVarC = ng.c("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            ArrayList arrayList = new ArrayList(cursorA.getCount());
            while (cursorA.moveToNext()) {
                arrayList.add(cursorA.getString(0));
            }
            return arrayList;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }

    public boolean b(String str) {
        ng ngVarC = ng.c("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        this.a.b();
        boolean z = false;
        Cursor cursorA = qg.a(this.a, ngVarC, false);
        try {
            if (cursorA.moveToFirst()) {
                z = cursorA.getInt(0) != 0;
            }
            return z;
        } finally {
            cursorA.close();
            ngVarC.i();
        }
    }
}
