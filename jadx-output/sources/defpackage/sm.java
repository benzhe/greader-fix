package defpackage;

import androidx.work.impl.WorkDatabase;

/* loaded from: classes.dex */
public class sm implements Runnable {
    public static final String g = vj.e("StopWorkRunnable");
    public nk e;
    public String f;

    public sm(nk nkVar, String str) {
        this.e = nkVar;
        this.f = str;
    }

    @Override // java.lang.Runnable
    public void run() {
        WorkDatabase workDatabase = this.e.c;
        em emVarN = workDatabase.n();
        workDatabase.c();
        try {
            fm fmVar = (fm) emVarN;
            if (fmVar.e(this.f) == ak.RUNNING) {
                fmVar.n(ak.ENQUEUED, this.f);
            }
            vj.c().a(g, String.format("StopWorkRunnable for %s; Processor.stopWork = %s", this.f, Boolean.valueOf(this.e.f.d(this.f))), new Throwable[0]);
            workDatabase.j();
        } finally {
            workDatabase.g();
        }
    }
}
