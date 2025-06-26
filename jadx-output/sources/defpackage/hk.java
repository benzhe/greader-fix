package defpackage;

import android.content.Context;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import defpackage.qk;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutionException;

/* loaded from: classes.dex */
public class hk implements fk {
    public static final String n = vj.e("Processor");
    public Context e;
    public pj f;
    public xm g;
    public WorkDatabase h;
    public List<ik> j;
    public Map<String, qk> i = new HashMap();
    public Set<String> k = new HashSet();
    public final List<fk> l = new ArrayList();
    public final Object m = new Object();

    public static class a implements Runnable {
        public fk e;
        public String f;
        public ie5<Boolean> g;

        public a(fk fkVar, String str, ie5<Boolean> ie5Var) {
            this.e = fkVar;
            this.f = str;
            this.g = ie5Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            boolean zBooleanValue;
            try {
                zBooleanValue = this.g.get().booleanValue();
            } catch (InterruptedException | ExecutionException unused) {
                zBooleanValue = true;
            }
            this.e.c(this.f, zBooleanValue);
        }
    }

    public hk(Context context, pj pjVar, xm xmVar, WorkDatabase workDatabase, List<ik> list) {
        this.e = context;
        this.f = pjVar;
        this.g = xmVar;
        this.h = workDatabase;
        this.j = list;
    }

    public void a(fk fkVar) {
        synchronized (this.m) {
            this.l.add(fkVar);
        }
    }

    public boolean b(String str, WorkerParameters.a aVar) {
        synchronized (this.m) {
            if (this.i.containsKey(str)) {
                vj.c().a(n, String.format("Work %s is already enqueued for processing", str), new Throwable[0]);
                return false;
            }
            qk.a aVar2 = new qk.a(this.e, this.f, this.g, this.h, str);
            aVar2.f = this.j;
            if (aVar != null) {
                aVar2.g = aVar;
            }
            qk qkVar = new qk(aVar2);
            wm<Boolean> wmVar = qkVar.t;
            wmVar.i(new a(this, str, wmVar), ((ym) this.g).c);
            this.i.put(str, qkVar);
            ((ym) this.g).a.execute(qkVar);
            vj.c().a(n, String.format("%s: processing %s", hk.class.getSimpleName(), str), new Throwable[0]);
            return true;
        }
    }

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        synchronized (this.m) {
            this.i.remove(str);
            vj.c().a(n, String.format("%s %s executed; reschedule = %s", getClass().getSimpleName(), str, Boolean.valueOf(z)), new Throwable[0]);
            Iterator<fk> it = this.l.iterator();
            while (it.hasNext()) {
                it.next().c(str, z);
            }
        }
    }

    public boolean d(String str) {
        synchronized (this.m) {
            vj vjVarC = vj.c();
            String str2 = n;
            vjVarC.a(str2, String.format("Processor stopping %s", str), new Throwable[0]);
            qk qkVarRemove = this.i.remove(str);
            if (qkVarRemove == null) {
                vj.c().a(str2, String.format("WorkerWrapper could not be found for %s", str), new Throwable[0]);
                return false;
            }
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
            vj.c().a(str2, String.format("WorkerWrapper stopped for %s", str), new Throwable[0]);
            return true;
        }
    }
}
