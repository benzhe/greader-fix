package defpackage;

import defpackage.c47;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes2.dex */
public final class j87 extends c47 {
    public final c47.d b;
    public c47.h c;

    public class a implements c47.j {
        public final /* synthetic */ c47.h a;

        public a(c47.h hVar) {
            this.a = hVar;
        }

        @Override // c47.j
        public void a(j37 j37Var) {
            c47.i bVar;
            j87 j87Var = j87.this;
            c47.h hVar = this.a;
            Objects.requireNonNull(j87Var);
            i37 i37Var = j37Var.a;
            if (i37Var == i37.SHUTDOWN) {
                return;
            }
            int iOrdinal = i37Var.ordinal();
            if (iOrdinal == 0) {
                bVar = new b(c47.e.e);
            } else if (iOrdinal == 1) {
                bVar = new b(c47.e.b(hVar));
            } else if (iOrdinal == 2) {
                bVar = new b(c47.e.a(j37Var.b));
            } else {
                if (iOrdinal != 3) {
                    throw new IllegalArgumentException("Unsupported state:" + i37Var);
                }
                bVar = j87Var.new c(hVar);
            }
            j87Var.b.d(i37Var, bVar);
        }
    }

    public static final class b extends c47.i {
        public final c47.e a;

        public b(c47.e eVar) {
            c50.A(eVar, "result");
            this.a = eVar;
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            return this.a;
        }

        public String toString() {
            nd5 nd5Var = new nd5(b.class.getSimpleName(), null);
            nd5Var.d("result", this.a);
            return nd5Var.toString();
        }
    }

    public final class c extends c47.i {
        public final c47.h a;
        public final AtomicBoolean b = new AtomicBoolean(false);

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                c.this.a.d();
            }
        }

        public c(c47.h hVar) {
            c50.A(hVar, "subchannel");
            this.a = hVar;
        }

        @Override // c47.i
        public c47.e a(c47.f fVar) {
            if (this.b.compareAndSet(false, true)) {
                b57 b57VarC = j87.this.b.c();
                a aVar = new a();
                Queue<Runnable> queue = b57VarC.f;
                c50.A(aVar, "runnable is null");
                queue.add(aVar);
                b57VarC.a();
            }
            return c47.e.e;
        }
    }

    public j87(c47.d dVar) {
        c50.A(dVar, "helper");
        this.b = dVar;
    }

    @Override // defpackage.c47
    public void a(x47 x47Var) {
        c47.h hVar = this.c;
        if (hVar != null) {
            hVar.e();
            this.c = null;
        }
        this.b.d(i37.TRANSIENT_FAILURE, new b(c47.e.a(x47Var)));
    }

    @Override // defpackage.c47
    public void b(c47.g gVar) {
        List<q37> list = gVar.a;
        c47.h hVar = this.c;
        if (hVar != null) {
            hVar.g(list);
            return;
        }
        c47.d dVar = this.b;
        c47.b.a aVar = new c47.b.a();
        c50.t(!list.isEmpty(), "addrs is empty");
        List<q37> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        aVar.a = listUnmodifiableList;
        c47.h hVarA = dVar.a(new c47.b(listUnmodifiableList, aVar.b, aVar.c, null));
        hVarA.f(new a(hVarA));
        this.c = hVarA;
        this.b.d(i37.CONNECTING, new b(c47.e.b(hVarA)));
        hVarA.d();
    }

    @Override // defpackage.c47
    public void c() {
        c47.h hVar = this.c;
        if (hVar != null) {
            hVar.d();
        }
    }

    @Override // defpackage.c47
    public void d() {
        c47.h hVar = this.c;
        if (hVar != null) {
            hVar.e();
        }
    }
}
