package defpackage;

import android.content.Context;
import android.os.Looper;
import android.util.Log;
import defpackage.xg;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* loaded from: classes.dex */
public abstract class lg {

    @Deprecated
    public volatile wg a;
    public Executor b;
    public xg c;
    public final kg d;
    public boolean e;
    public boolean f;

    @Deprecated
    public List<b> g;
    public final ReentrantReadWriteLock h = new ReentrantReadWriteLock();
    public final ThreadLocal<Integer> i = new ThreadLocal<>();

    public static class a<T extends lg> {
        public final Class<T> a;
        public final String b;
        public final Context c;
        public ArrayList<b> d;
        public Executor e;
        public Executor f;
        public xg.b g;
        public boolean h;
        public boolean j;
        public Set<Integer> l;
        public boolean i = true;
        public final d k = new d();

        public a(Context context, Class<T> cls, String str) {
            this.c = context;
            this.a = cls;
            this.b = str;
        }

        public a<T> a(pg... pgVarArr) {
            if (this.l == null) {
                this.l = new HashSet();
            }
            for (pg pgVar : pgVarArr) {
                this.l.add(Integer.valueOf(pgVar.a));
                this.l.add(Integer.valueOf(pgVar.b));
            }
            d dVar = this.k;
            Objects.requireNonNull(dVar);
            for (pg pgVar2 : pgVarArr) {
                int i = pgVar2.a;
                int i2 = pgVar2.b;
                n4<pg> n4VarE = dVar.a.e(i);
                if (n4VarE == null) {
                    n4VarE = new n4<>(10);
                    dVar.a.h(i, n4VarE);
                }
                pg pgVarE = n4VarE.e(i2);
                if (pgVarE != null) {
                    Log.w("ROOM", "Overriding migration " + pgVarE + " with " + pgVar2);
                }
                n4VarE.b(i2, pgVar2);
            }
            return this;
        }
    }

    public static abstract class b {
        public void a(wg wgVar) {
        }
    }

    public enum c {
        AUTOMATIC,
        TRUNCATE,
        WRITE_AHEAD_LOGGING
    }

    public static class d {
        public n4<n4<pg>> a = new n4<>(10);
    }

    public lg() {
        new ConcurrentHashMap();
        this.d = e();
    }

    public void a() {
        if (this.e) {
            return;
        }
        if (Looper.getMainLooper().getThread() == Thread.currentThread()) {
            throw new IllegalStateException("Cannot access database on the main thread since it may potentially lock the UI for a long period of time.");
        }
    }

    public void b() {
        if (!h() && this.i.get() != null) {
            throw new IllegalStateException("Cannot access database on a different coroutine context inherited from a suspending transaction.");
        }
    }

    @Deprecated
    public void c() {
        a();
        wg wgVarA = ((bh) this.c).a();
        this.d.d(wgVarA);
        ((ah) wgVarA).e.beginTransaction();
    }

    public eh d(String str) {
        a();
        b();
        return new eh(((ah) ((bh) this.c).a()).e.compileStatement(str));
    }

    public abstract kg e();

    public abstract xg f(gg ggVar);

    @Deprecated
    public void g() {
        ((ah) ((bh) this.c).a()).e.endTransaction();
        if (h()) {
            return;
        }
        kg kgVar = this.d;
        if (kgVar.e.compareAndSet(false, true)) {
            kgVar.d.b.execute(kgVar.j);
        }
    }

    public boolean h() {
        return ((ah) ((bh) this.c).a()).e.inTransaction();
    }

    public boolean i() {
        wg wgVar = this.a;
        return wgVar != null && ((ah) wgVar).e.isOpen();
    }

    @Deprecated
    public void j() {
        ((ah) ((bh) this.c).a()).e.setTransactionSuccessful();
    }
}
