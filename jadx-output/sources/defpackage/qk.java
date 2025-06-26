package defpackage;

import android.content.Context;
import android.database.Cursor;
import androidx.work.ListenableWorker;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;
import java.util.UUID;

/* loaded from: classes.dex */
public class qk implements Runnable {
    public static final String w = vj.e("WorkerWrapper");
    public Context e;
    public String f;
    public List<ik> g;
    public WorkerParameters.a h;
    public dm i;
    public pj l;
    public xm m;
    public WorkDatabase n;
    public em o;
    public vl p;
    public hm q;
    public List<String> r;
    public String s;
    public volatile boolean v;
    public ListenableWorker.a k = new ListenableWorker.a.C0002a();
    public wm<Boolean> t = new wm<>();
    public ie5<ListenableWorker.a> u = null;
    public ListenableWorker j = null;

    public static class a {
        public Context a;
        public xm b;
        public pj c;
        public WorkDatabase d;
        public String e;
        public List<ik> f;
        public WorkerParameters.a g = new WorkerParameters.a();

        public a(Context context, pj pjVar, xm xmVar, WorkDatabase workDatabase, String str) {
            this.a = context.getApplicationContext();
            this.b = xmVar;
            this.c = pjVar;
            this.d = workDatabase;
            this.e = str;
        }
    }

    public qk(a aVar) {
        this.e = aVar.a;
        this.m = aVar.b;
        this.f = aVar.e;
        this.g = aVar.f;
        this.h = aVar.g;
        this.l = aVar.c;
        WorkDatabase workDatabase = aVar.d;
        this.n = workDatabase;
        this.o = workDatabase.n();
        this.p = this.n.k();
        this.q = this.n.o();
    }

    public final void a(ListenableWorker.a aVar) {
        if (!(aVar instanceof ListenableWorker.a.c)) {
            if (aVar instanceof ListenableWorker.a.b) {
                vj.c().d(w, String.format("Worker result RETRY for %s", this.s), new Throwable[0]);
                d();
                return;
            }
            vj.c().d(w, String.format("Worker result FAILURE for %s", this.s), new Throwable[0]);
            if (this.i.d()) {
                e();
                return;
            } else {
                h();
                return;
            }
        }
        vj.c().d(w, String.format("Worker result SUCCESS for %s", this.s), new Throwable[0]);
        if (this.i.d()) {
            e();
            return;
        }
        this.n.c();
        try {
            ((fm) this.o).n(ak.SUCCEEDED, this.f);
            ((fm) this.o).l(this.f, ((ListenableWorker.a.c) this.k).a);
            long jCurrentTimeMillis = System.currentTimeMillis();
            Iterator it = ((ArrayList) ((wl) this.p).a(this.f)).iterator();
            while (it.hasNext()) {
                String str = (String) it.next();
                if (((fm) this.o).e(str) == ak.BLOCKED && ((wl) this.p).b(str)) {
                    vj.c().d(w, String.format("Setting status to enqueued for %s", str), new Throwable[0]);
                    ((fm) this.o).n(ak.ENQUEUED, str);
                    ((fm) this.o).m(str, jCurrentTimeMillis);
                }
            }
            this.n.j();
        } finally {
            this.n.g();
            f(false);
        }
    }

    public final void b(String str) {
        LinkedList linkedList = new LinkedList();
        linkedList.add(str);
        while (!linkedList.isEmpty()) {
            String str2 = (String) linkedList.remove();
            if (((fm) this.o).e(str2) != ak.CANCELLED) {
                ((fm) this.o).n(ak.FAILED, str2);
            }
            linkedList.addAll(((wl) this.p).a(str2));
        }
    }

    public void c() {
        boolean zI = false;
        if (!i()) {
            this.n.c();
            try {
                ak akVarE = ((fm) this.o).e(this.f);
                if (akVarE == null) {
                    f(false);
                    zI = true;
                } else if (akVarE == ak.RUNNING) {
                    a(this.k);
                    zI = ((fm) this.o).e(this.f).i();
                } else if (!akVarE.i()) {
                    d();
                }
                this.n.j();
            } finally {
                this.n.g();
            }
        }
        List<ik> list = this.g;
        if (list != null) {
            if (zI) {
                Iterator<ik> it = list.iterator();
                while (it.hasNext()) {
                    it.next().d(this.f);
                }
            }
            jk.a(this.l, this.n, this.g);
        }
    }

    public final void d() {
        this.n.c();
        try {
            ((fm) this.o).n(ak.ENQUEUED, this.f);
            ((fm) this.o).m(this.f, System.currentTimeMillis());
            ((fm) this.o).j(this.f, -1L);
            this.n.j();
        } finally {
            this.n.g();
            f(true);
        }
    }

    public final void e() {
        this.n.c();
        try {
            ((fm) this.o).m(this.f, System.currentTimeMillis());
            ((fm) this.o).n(ak.ENQUEUED, this.f);
            ((fm) this.o).k(this.f);
            ((fm) this.o).j(this.f, -1L);
            this.n.j();
        } finally {
            this.n.g();
            f(false);
        }
    }

    public final void f(boolean z) {
        this.n.c();
        try {
            if (((ArrayList) ((fm) this.n.n()).a()).isEmpty()) {
                om.a(this.e, RescheduleReceiver.class, false);
            }
            this.n.j();
            this.n.g();
            this.t.j(Boolean.valueOf(z));
        } catch (Throwable th) {
            this.n.g();
            throw th;
        }
    }

    public final void g() {
        ak akVarE = ((fm) this.o).e(this.f);
        if (akVarE == ak.RUNNING) {
            vj.c().a(w, String.format("Status for %s is RUNNING;not doing any work and rescheduling for later execution", this.f), new Throwable[0]);
            f(true);
        } else {
            vj.c().a(w, String.format("Status for %s is %s; not doing any work", this.f, akVarE), new Throwable[0]);
            f(false);
        }
    }

    public void h() {
        this.n.c();
        try {
            b(this.f);
            sj sjVar = ((ListenableWorker.a.C0002a) this.k).a;
            ((fm) this.o).l(this.f, sjVar);
            this.n.j();
        } finally {
            this.n.g();
            f(false);
        }
    }

    public final boolean i() {
        if (!this.v) {
            return false;
        }
        vj.c().a(w, String.format("Work interrupted for %s", this.s), new Throwable[0]);
        if (((fm) this.o).e(this.f) == null) {
            f(false);
        } else {
            f(!r0.i());
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        uj ujVar;
        sj sjVarA;
        hm hmVar = this.q;
        String str = this.f;
        im imVar = (im) hmVar;
        Objects.requireNonNull(imVar);
        boolean z = true;
        ng ngVarC = ng.c("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            ngVarC.f(1);
        } else {
            ngVarC.g(1, str);
        }
        imVar.a.b();
        Cursor cursorA = qg.a(imVar.a, ngVarC, false);
        try {
            ArrayList<String> arrayList = new ArrayList(cursorA.getCount());
            while (cursorA.moveToNext()) {
                arrayList.add(cursorA.getString(0));
            }
            cursorA.close();
            ngVarC.i();
            this.r = arrayList;
            StringBuilder sb = new StringBuilder("Work [ id=");
            sb.append(this.f);
            sb.append(", tags={ ");
            boolean z2 = true;
            for (String str2 : arrayList) {
                if (z2) {
                    z2 = false;
                } else {
                    sb.append(", ");
                }
                sb.append(str2);
            }
            sb.append(" } ]");
            this.s = sb.toString();
            ak akVar = ak.ENQUEUED;
            if (i()) {
                return;
            }
            this.n.c();
            try {
                dm dmVarH = ((fm) this.o).h(this.f);
                this.i = dmVarH;
                if (dmVarH == null) {
                    vj.c().b(w, String.format("Didn't find WorkSpec for id %s", this.f), new Throwable[0]);
                    f(false);
                } else {
                    if (dmVarH.b == akVar) {
                        if (dmVarH.d() || this.i.c()) {
                            long jCurrentTimeMillis = System.currentTimeMillis();
                            dm dmVar = this.i;
                            if (!(dmVar.n == 0) && jCurrentTimeMillis < dmVar.a()) {
                                vj.c().a(w, String.format("Delaying execution for %s because it is being executed before schedule.", this.i.c), new Throwable[0]);
                                f(true);
                            }
                        }
                        this.n.j();
                        this.n.g();
                        if (this.i.d()) {
                            sjVarA = this.i.e;
                        } else {
                            String str3 = this.i.d;
                            String str4 = uj.a;
                            try {
                                ujVar = (uj) Class.forName(str3).newInstance();
                            } catch (Exception e) {
                                vj.c().b(uj.a, jo.n("Trouble instantiating + ", str3), e);
                                ujVar = null;
                            }
                            if (ujVar == null) {
                                vj.c().b(w, String.format("Could not create Input Merger %s", this.i.d), new Throwable[0]);
                                h();
                                return;
                            }
                            ArrayList arrayList2 = new ArrayList();
                            arrayList2.add(this.i.e);
                            em emVar = this.o;
                            String str5 = this.f;
                            fm fmVar = (fm) emVar;
                            Objects.requireNonNull(fmVar);
                            ngVarC = ng.c("SELECT output FROM workspec WHERE id IN (SELECT prerequisite_id FROM dependency WHERE work_spec_id=?)", 1);
                            if (str5 == null) {
                                ngVarC.f(1);
                            } else {
                                ngVarC.g(1, str5);
                            }
                            fmVar.a.b();
                            cursorA = qg.a(fmVar.a, ngVarC, false);
                            try {
                                ArrayList arrayList3 = new ArrayList(cursorA.getCount());
                                while (cursorA.moveToNext()) {
                                    arrayList3.add(sj.a(cursorA.getBlob(0)));
                                }
                                cursorA.close();
                                ngVarC.i();
                                arrayList2.addAll(arrayList3);
                                sjVarA = ujVar.a(arrayList2);
                            } finally {
                            }
                        }
                        sj sjVar = sjVarA;
                        UUID uuidFromString = UUID.fromString(this.f);
                        List<String> list = this.r;
                        WorkerParameters.a aVar = this.h;
                        int i = this.i.k;
                        pj pjVar = this.l;
                        WorkerParameters workerParameters = new WorkerParameters(uuidFromString, sjVar, list, aVar, i, pjVar.a, this.m, pjVar.c);
                        if (this.j == null) {
                            this.j = this.l.c.a(this.e, this.i.c, workerParameters);
                        }
                        ListenableWorker listenableWorker = this.j;
                        if (listenableWorker == null) {
                            vj.c().b(w, String.format("Could not create Worker %s", this.i.c), new Throwable[0]);
                            h();
                            return;
                        }
                        if (listenableWorker.isUsed()) {
                            vj.c().b(w, String.format("Received an already-used Worker %s; WorkerFactory should return new instances", this.i.c), new Throwable[0]);
                            h();
                            return;
                        }
                        this.j.setUsed();
                        this.n.c();
                        try {
                            if (((fm) this.o).e(this.f) == akVar) {
                                ((fm) this.o).n(ak.RUNNING, this.f);
                                ((fm) this.o).i(this.f);
                            } else {
                                z = false;
                            }
                            this.n.j();
                            if (!z) {
                                g();
                                return;
                            } else {
                                if (i()) {
                                    return;
                                }
                                wm wmVar = new wm();
                                ((ym) this.m).c.execute(new ok(this, wmVar));
                                wmVar.i(new pk(this, wmVar, this.s), ((ym) this.m).a);
                                return;
                            }
                        } finally {
                        }
                    }
                    g();
                    this.n.j();
                    vj.c().a(w, String.format("%s is not in ENQUEUED state. Nothing more to do.", this.i.c), new Throwable[0]);
                }
            } finally {
            }
        } finally {
        }
    }
}
