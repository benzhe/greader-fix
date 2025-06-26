package defpackage;

import android.content.Context;
import android.util.Log;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public class vi5 {
    public final Context a;
    public final pe5 b;
    public final bj5 c;
    public final long d;
    public xi5 e;
    public xi5 f;
    public ii5 g;
    public final gj5 h;
    public final nh5 i;
    public final hh5 j;
    public ExecutorService k;
    public wh5 l;
    public zg5 m;

    public class a implements Runnable {
        public final /* synthetic */ km5 e;

        public a(km5 km5Var) {
            this.e = km5Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            vi5.a(vi5.this, this.e);
        }
    }

    public class b implements Callable<Boolean> {
        public b() {
        }

        @Override // java.util.concurrent.Callable
        public Boolean call() throws Exception {
            try {
                boolean zDelete = vi5.this.e.b().delete();
                ah5.a.b("Initialization marker file removed: " + zDelete);
                return Boolean.valueOf(zDelete);
            } catch (Exception e) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "Problem encountered deleting Crashlytics initialization marker.", e);
                }
                return Boolean.FALSE;
            }
        }
    }

    public vi5(pe5 pe5Var, gj5 gj5Var, zg5 zg5Var, bj5 bj5Var, nh5 nh5Var, hh5 hh5Var, ExecutorService executorService) {
        this.b = pe5Var;
        this.c = bj5Var;
        pe5Var.a();
        this.a = pe5Var.a;
        this.h = gj5Var;
        this.m = zg5Var;
        this.i = nh5Var;
        this.j = hh5Var;
        this.k = executorService;
        this.l = new wh5(executorService);
        this.d = System.currentTimeMillis();
    }

    public static e45 a(vi5 vi5Var, km5 km5Var) {
        e45<Void> e45VarW;
        vi5Var.l.a();
        vi5Var.e.a();
        ah5 ah5Var = ah5.a;
        ah5Var.b("Initialization marker file created.");
        ii5 ii5Var = vi5Var.g;
        wh5 wh5Var = ii5Var.e;
        wh5Var.b(new xh5(wh5Var, new di5(ii5Var)));
        try {
            try {
                vi5Var.i.a(new ti5(vi5Var));
                jm5 jm5Var = (jm5) km5Var;
                sm5 sm5VarC = jm5Var.c();
                if (sm5VarC.a().a) {
                    if (!vi5Var.g.h(sm5VarC.b().a)) {
                        ah5Var.b("Could not finalize previous sessions.");
                    }
                    e45VarW = vi5Var.g.u(1.0f, jm5Var.a());
                } else {
                    ah5Var.b("Collection of crash reports disabled in Crashlytics settings.");
                    e45VarW = c50.W(new RuntimeException("Collection of crash reports disabled in Crashlytics settings."));
                }
            } catch (Exception e) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "Crashlytics encountered a problem during asynchronous initialization.", e);
                }
                e45VarW = c50.W(e);
            }
            return e45VarW;
        } finally {
            vi5Var.c();
        }
    }

    public final void b(km5 km5Var) throws ExecutionException, InterruptedException, TimeoutException {
        Future<?> futureSubmit = this.k.submit(new a(km5Var));
        ah5.a.b("Crashlytics detected incomplete initialization on previous app launch. Will initialize synchronously.");
        try {
            futureSubmit.get(4L, TimeUnit.SECONDS);
        } catch (InterruptedException e) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Crashlytics was interrupted during initialization.", e);
            }
        } catch (ExecutionException e2) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Problem encountered during Crashlytics initialization.", e2);
            }
        } catch (TimeoutException e3) {
            if (ah5.a.a(6)) {
                Log.e("FirebaseCrashlytics", "Crashlytics timed out during initialization.", e3);
            }
        }
    }

    public void c() {
        this.l.b(new b());
    }
}
