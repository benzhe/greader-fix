package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class jm extends lm {
    public final /* synthetic */ nk f;
    public final /* synthetic */ String g;

    public jm(nk nkVar, String str) {
        this.f = nkVar;
        this.g = str;
    }

    @Override // defpackage.lm
    public void b() {
        WorkDatabase workDatabase = this.f.c;
        workDatabase.c();
        try {
            Iterator it = ((ArrayList) ((fm) workDatabase.n()).g(this.g)).iterator();
            while (it.hasNext()) {
                a(this.f, (String) it.next());
            }
            workDatabase.j();
            workDatabase.g();
            nk nkVar = this.f;
            jk.a(nkVar.b, nkVar.c, nkVar.e);
        } catch (Throwable th) {
            workDatabase.g();
            throw th;
        }
    }
}
