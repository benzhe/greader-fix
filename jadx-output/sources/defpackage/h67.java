package defpackage;

import defpackage.c47;
import defpackage.c87;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Queue;
import java.util.concurrent.Executor;

/* loaded from: classes2.dex */
public final class h67 implements c87 {
    public final Executor c;
    public final b57 d;
    public Runnable e;
    public Runnable f;
    public Runnable g;
    public c87.a h;
    public x47 j;
    public c47.i k;
    public long l;
    public final y37 a = y37.a(h67.class, null);
    public final Object b = new Object();
    public Collection<f> i = new LinkedHashSet();

    public class a implements Runnable {
        public final /* synthetic */ c87.a e;

        public a(h67 h67Var, c87.a aVar) {
            this.e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.d(true);
        }
    }

    public class b implements Runnable {
        public final /* synthetic */ c87.a e;

        public b(h67 h67Var, c87.a aVar) {
            this.e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.d(false);
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ c87.a e;

        public c(h67 h67Var, c87.a aVar) {
            this.e = aVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.e.c();
        }
    }

    public class d implements Runnable {
        public final /* synthetic */ x47 e;

        public d(x47 x47Var) {
            this.e = x47Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            h67.this.h.a(this.e);
        }
    }

    public class e implements Runnable {
        public final /* synthetic */ f e;
        public final /* synthetic */ a67 f;

        public e(h67 h67Var, f fVar, a67 a67Var) {
            this.e = fVar;
            this.f = a67Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            f fVar = this.e;
            a67 a67Var = this.f;
            l37 l37VarB = fVar.j.b();
            try {
                c47.f fVar2 = fVar.i;
                y57 y57VarG = a67Var.g(((l87) fVar2).c, ((l87) fVar2).b, ((l87) fVar2).a);
                fVar.j.i(l37VarB);
                fVar.q(y57VarG);
            } catch (Throwable th) {
                fVar.j.i(l37VarB);
                throw th;
            }
        }
    }

    public class f extends i67 {
        public final c47.f i;
        public final l37 j = l37.g();

        public f(c47.f fVar, a aVar) {
            this.i = fVar;
        }

        @Override // defpackage.i67, defpackage.y57
        public void f(x47 x47Var) {
            super.f(x47Var);
            synchronized (h67.this.b) {
                h67 h67Var = h67.this;
                if (h67Var.g != null) {
                    boolean zRemove = h67Var.i.remove(this);
                    if (!h67.this.h() && zRemove) {
                        h67 h67Var2 = h67.this;
                        h67Var2.d.b(h67Var2.f);
                        h67 h67Var3 = h67.this;
                        if (h67Var3.j != null) {
                            h67Var3.d.b(h67Var3.g);
                            h67.this.g = null;
                        }
                    }
                }
            }
            h67.this.d.a();
        }
    }

    public h67(Executor executor, b57 b57Var) {
        this.c = executor;
        this.d = b57Var;
    }

    public final f a(c47.f fVar) {
        int size;
        f fVar2 = new f(fVar, null);
        this.i.add(fVar2);
        synchronized (this.b) {
            size = this.i.size();
        }
        if (size == 1) {
            this.d.b(this.e);
        }
        return fVar2;
    }

    @Override // defpackage.c87
    public final void b(x47 x47Var) {
        Runnable runnable;
        synchronized (this.b) {
            if (this.j != null) {
                return;
            }
            this.j = x47Var;
            b57 b57Var = this.d;
            d dVar = new d(x47Var);
            Queue<Runnable> queue = b57Var.f;
            c50.A(dVar, "runnable is null");
            queue.add(dVar);
            if (!h() && (runnable = this.g) != null) {
                this.d.b(runnable);
                this.g = null;
            }
            this.d.a();
        }
    }

    @Override // defpackage.c87
    public final void c(x47 x47Var) {
        Collection<f> collection;
        Runnable runnable;
        b(x47Var);
        synchronized (this.b) {
            collection = this.i;
            runnable = this.g;
            this.g = null;
            if (!collection.isEmpty()) {
                this.i = Collections.emptyList();
            }
        }
        if (runnable != null) {
            Iterator<f> it = collection.iterator();
            while (it.hasNext()) {
                it.next().f(x47Var);
            }
            b57 b57Var = this.d;
            Queue<Runnable> queue = b57Var.f;
            c50.A(runnable, "runnable is null");
            queue.add(runnable);
            b57Var.a();
        }
    }

    @Override // defpackage.c87
    public final Runnable d(c87.a aVar) {
        this.h = aVar;
        this.e = new a(this, aVar);
        this.f = new b(this, aVar);
        this.g = new c(this, aVar);
        return null;
    }

    @Override // defpackage.x37
    public y37 e() {
        return this.a;
    }

    @Override // defpackage.a67
    public final y57 g(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
        y57 m67Var;
        try {
            l87 l87Var = new l87(j47Var, i47Var, x27Var);
            c47.i iVar = null;
            long j = -1;
            while (true) {
                synchronized (this.b) {
                    x47 x47Var = this.j;
                    if (x47Var == null) {
                        c47.i iVar2 = this.k;
                        if (iVar2 != null) {
                            if (iVar != null && j == this.l) {
                                m67Var = a(l87Var);
                                break;
                            }
                            j = this.l;
                            a67 a67VarE = u67.e(iVar2.a(l87Var), x27Var.b());
                            if (a67VarE != null) {
                                m67Var = a67VarE.g(l87Var.c, l87Var.b, l87Var.a);
                                break;
                            }
                            iVar = iVar2;
                        } else {
                            m67Var = a(l87Var);
                            break;
                        }
                    } else {
                        m67Var = new m67(x47Var);
                        break;
                    }
                }
            }
            return m67Var;
        } finally {
            this.d.a();
        }
    }

    public final boolean h() {
        boolean z;
        synchronized (this.b) {
            z = !this.i.isEmpty();
        }
        return z;
    }

    public final void i(c47.i iVar) {
        Runnable runnable;
        synchronized (this.b) {
            this.k = iVar;
            this.l++;
            if (iVar != null && h()) {
                ArrayList arrayList = new ArrayList(this.i);
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    f fVar = (f) it.next();
                    c47.e eVarA = iVar.a(fVar.i);
                    x27 x27Var = ((l87) fVar.i).a;
                    a67 a67VarE = u67.e(eVarA, x27Var.b());
                    if (a67VarE != null) {
                        Executor executor = this.c;
                        Executor executor2 = x27Var.b;
                        if (executor2 != null) {
                            executor = executor2;
                        }
                        executor.execute(new e(this, fVar, a67VarE));
                        arrayList2.add(fVar);
                    }
                }
                synchronized (this.b) {
                    try {
                        if (h()) {
                            this.i.removeAll(arrayList2);
                            if (this.i.isEmpty()) {
                                this.i = new LinkedHashSet();
                            }
                            if (!h()) {
                                this.d.b(this.f);
                                if (this.j != null && (runnable = this.g) != null) {
                                    Queue<Runnable> queue = this.d.f;
                                    c50.A(runnable, "runnable is null");
                                    queue.add(runnable);
                                    this.g = null;
                                }
                            }
                            this.d.a();
                        }
                    } finally {
                    }
                }
            }
        }
    }
}
