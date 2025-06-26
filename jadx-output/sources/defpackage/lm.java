package defpackage;

import androidx.work.ListenableWorker;
import androidx.work.impl.WorkDatabase;
import defpackage.yj;
import java.util.Iterator;
import java.util.LinkedList;

/* loaded from: classes.dex */
public abstract class lm implements Runnable {
    public final gk e = new gk();

    public void a(nk nkVar, String str) {
        WorkDatabase workDatabase = nkVar.c;
        em emVarN = workDatabase.n();
        vl vlVarK = workDatabase.k();
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            fm fmVar = (fm) emVarN;
            ak akVarE = fmVar.e(str2);
            if (akVarE != ak.SUCCEEDED && akVarE != ak.FAILED) {
                fmVar.n(ak.CANCELLED, str2);
            }
            linkedList.addAll(((wl) vlVarK).a(str2));
        }
        hk hkVar = nkVar.f;
        synchronized (hkVar.m) {
            vj vjVarC = vj.c();
            String str3 = hk.n;
            vjVarC.a(str3, String.format("Processor cancelling %s", str), new Throwable[0]);
            hkVar.k.add(str);
            qk qkVarRemove = hkVar.i.remove(str);
            if (qkVarRemove != null) {
                qkVarRemove.v = true;
                qkVarRemove.i();
                ie5<ListenableWorker.a> ie5Var = qkVarRemove.u;
                if (ie5Var != null) {
                    ie5Var.cancel(true);
                }
                ListenableWorker listenableWorker = qkVarRemove.j;
                if (listenableWorker != null) {
                    listenableWorker.stop();
                }
                vj.c().a(str3, String.format("WorkerWrapper cancelled for %s", str), new Throwable[0]);
            } else {
                vj.c().a(str3, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
            }
        }
        Iterator<ik> it = nkVar.e.iterator();
        while (it.hasNext()) {
            it.next().d(str);
        }
    }

    public abstract void b();

    @Override // java.lang.Runnable
    public void run() {
        try {
            b();
            this.e.a(yj.a);
        } catch (Throwable th) {
            this.e.a(new yj.b.a(th));
        }
    }
}
