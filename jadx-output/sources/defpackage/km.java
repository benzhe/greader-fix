package defpackage;

import androidx.work.impl.WorkDatabase;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class km extends lm {
    public final /* synthetic */ nk f;
    public final /* synthetic */ String g;
    public final /* synthetic */ boolean h;

    public km(nk nkVar, String str, boolean z) {
        this.f = nkVar;
        this.g = str;
        this.h = z;
    }

    @Override // defpackage.lm
    public void b() {
        WorkDatabase workDatabase = this.f.c;
        workDatabase.c();
        try {
            Iterator it = ((ArrayList) ((fm) workDatabase.n()).f(this.g)).iterator();
            while (it.hasNext()) {
                a(this.f, (String) it.next());
            }
            workDatabase.j();
            workDatabase.g();
            if (this.h) {
                nk nkVar = this.f;
                jk.a(nkVar.b, nkVar.c, nkVar.e);
            }
        } catch (Throwable th) {
            workDatabase.g();
            throw th;
        }
    }
}
