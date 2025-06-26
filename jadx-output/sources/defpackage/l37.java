package defpackage;

import java.io.Closeable;
import java.util.ArrayList;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class l37 {
    public static final Logger i = Logger.getLogger(l37.class.getName());
    public static final r47<Object<?>, Object> j;
    public static final l37 k;
    public ArrayList<d> e;
    public b f = new f(null);
    public final a g = null;
    public final int h = 0;

    public static final class a extends l37 implements Closeable {
        public boolean l;
        public Throwable m;

        @Override // defpackage.l37
        public l37 b() {
            throw null;
        }

        @Override // defpackage.l37
        public boolean c() {
            return true;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() {
            t(null);
        }

        @Override // defpackage.l37
        public Throwable e() {
            if (m()) {
                return this.m;
            }
            return null;
        }

        @Override // defpackage.l37
        public void i(l37 l37Var) {
            throw null;
        }

        @Override // defpackage.l37
        public m37 k() {
            return null;
        }

        @Override // defpackage.l37
        public boolean m() {
            synchronized (this) {
                if (this.l) {
                    return true;
                }
                if (!super.m()) {
                    return false;
                }
                t(super.e());
                return true;
            }
        }

        public boolean t(Throwable th) {
            boolean z;
            synchronized (this) {
                z = true;
                if (this.l) {
                    z = false;
                } else {
                    this.l = true;
                    this.m = th;
                }
            }
            if (z) {
                n();
            }
            return z;
        }
    }

    public interface b {
        void a(l37 l37Var);
    }

    public enum c implements Executor {
        INSTANCE;

        @Override // java.util.concurrent.Executor
        public void execute(Runnable runnable) {
            runnable.run();
        }

        @Override // java.lang.Enum
        public String toString() {
            return "Context.DirectExecutor";
        }
    }

    public final class d implements Runnable {
        public final Executor e;
        public final b f;

        public d(Executor executor, b bVar) {
            this.e = executor;
            this.f = bVar;
        }

        public void a() {
            try {
                this.e.execute(this);
            } catch (Throwable th) {
                l37.i.log(Level.INFO, "Exception notifying context listener", th);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f.a(l37.this);
        }
    }

    public static final class e {
        public static final g a;

        static {
            g c57Var;
            AtomicReference atomicReference = new AtomicReference();
            try {
                c57Var = (g) Class.forName("io.grpc.override.ContextStorageOverride").asSubclass(g.class).getConstructor(new Class[0]).newInstance(new Object[0]);
            } catch (ClassNotFoundException e) {
                atomicReference.set(e);
                c57Var = new c57();
            } catch (Exception e2) {
                throw new RuntimeException("Storage override failed to initialize", e2);
            }
            a = c57Var;
            Throwable th = (Throwable) atomicReference.get();
            if (th != null) {
                l37.i.log(Level.FINE, "Storage override doesn't exist. Using default", th);
            }
        }
    }

    public final class f implements b {
        public f(k37 k37Var) {
        }

        @Override // l37.b
        public void a(l37 l37Var) {
            l37 l37Var2 = l37.this;
            if (l37Var2 instanceof a) {
                ((a) l37Var2).t(l37Var.e());
            } else {
                l37Var2.n();
            }
        }
    }

    public static abstract class g {
        public abstract l37 a();

        public abstract void b(l37 l37Var, l37 l37Var2);

        public l37 c(l37 l37Var) {
            a();
            throw new UnsupportedOperationException("Deprecated. Do not call.");
        }
    }

    static {
        r47<Object<?>, Object> r47Var = new r47<>();
        j = r47Var;
        k = new l37(null, r47Var);
    }

    public l37(l37 l37Var, r47<Object<?>, Object> r47Var) {
    }

    public static <T> T f(T t, Object obj) {
        if (t != null) {
            return t;
        }
        throw new NullPointerException(String.valueOf(obj));
    }

    public static l37 g() {
        l37 l37VarA = e.a.a();
        return l37VarA == null ? k : l37VarA;
    }

    public void a(b bVar, Executor executor) {
        f(bVar, "cancellationListener");
        f(executor, "executor");
        if (c()) {
            d dVar = new d(executor, bVar);
            synchronized (this) {
                if (m()) {
                    dVar.a();
                } else {
                    ArrayList<d> arrayList = this.e;
                    if (arrayList == null) {
                        ArrayList<d> arrayList2 = new ArrayList<>();
                        this.e = arrayList2;
                        arrayList2.add(dVar);
                        a aVar = this.g;
                        if (aVar != null) {
                            aVar.a(this.f, c.INSTANCE);
                        }
                    } else {
                        arrayList.add(dVar);
                    }
                }
            }
        }
    }

    public l37 b() {
        l37 l37VarC = e.a.c(this);
        return l37VarC == null ? k : l37VarC;
    }

    public boolean c() {
        return this.g != null;
    }

    public Throwable e() {
        a aVar = this.g;
        if (aVar == null) {
            return null;
        }
        return aVar.e();
    }

    public void i(l37 l37Var) {
        f(l37Var, "toAttach");
        e.a.b(this, l37Var);
    }

    public m37 k() {
        a aVar = this.g;
        if (aVar == null) {
            return null;
        }
        Objects.requireNonNull(aVar);
        return null;
    }

    public boolean m() {
        a aVar = this.g;
        if (aVar == null) {
            return false;
        }
        return aVar.m();
    }

    public void n() {
        if (c()) {
            synchronized (this) {
                ArrayList<d> arrayList = this.e;
                if (arrayList == null) {
                    return;
                }
                this.e = null;
                for (int i2 = 0; i2 < arrayList.size(); i2++) {
                    if (!(arrayList.get(i2).f instanceof f)) {
                        arrayList.get(i2).a();
                    }
                }
                for (int i3 = 0; i3 < arrayList.size(); i3++) {
                    if (arrayList.get(i3).f instanceof f) {
                        arrayList.get(i3).a();
                    }
                }
                a aVar = this.g;
                if (aVar != null) {
                    aVar.q(this.f);
                }
            }
        }
    }

    public void q(b bVar) {
        if (c()) {
            synchronized (this) {
                ArrayList<d> arrayList = this.e;
                if (arrayList != null) {
                    int size = arrayList.size() - 1;
                    while (true) {
                        if (size < 0) {
                            break;
                        }
                        if (this.e.get(size).f == bVar) {
                            this.e.remove(size);
                            break;
                        }
                        size--;
                    }
                    if (this.e.isEmpty()) {
                        a aVar = this.g;
                        if (aVar != null) {
                            aVar.q(this.f);
                        }
                        this.e = null;
                    }
                }
            }
        }
    }
}
