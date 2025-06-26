package defpackage;

import android.content.Context;
import android.os.SystemClock;
import defpackage.gp4;
import defpackage.sf5;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class fj4 {
    public static List<String> h;
    public static final sf5<?> i;
    public final String a;
    public final String b;
    public final b c;
    public final kh6 d;
    public final e45<String> e;
    public final e45<String> f;
    public final Map<oh4, Long> g = new HashMap();

    public interface a {
        gp4.a a();
    }

    public interface b {
        void a(gp4 gp4Var);
    }

    static {
        sf5.b bVarA = sf5.a(fj4.class);
        bVarA.a(new ig5(Context.class, 1, 0));
        bVarA.a(new ig5(kh6.class, 1, 0));
        bVarA.a(new ig5(b.class, 1, 0));
        bVarA.d(ij4.a);
        i = bVarA.b();
    }

    public fj4(Context context, final kh6 kh6Var, b bVar) {
        new HashMap();
        this.a = context.getPackageName();
        this.b = dh6.a(context);
        this.d = kh6Var;
        this.c = bVar;
        this.e = gh6.a().b(ej4.e);
        gh6 gh6VarA = gh6.a();
        kh6Var.getClass();
        this.f = gh6VarA.b(new Callable(kh6Var) { // from class: hj4
            public final kh6 e;

            {
                this.e = kh6Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.e.a();
            }
        });
    }

    public final void a(a aVar, oh4 oh4Var) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        if (this.g.get(oh4Var) == null || jElapsedRealtime - this.g.get(oh4Var).longValue() > TimeUnit.SECONDS.toMillis(30L)) {
            this.g.put(oh4Var, Long.valueOf(jElapsedRealtime));
            gp4.a aVarA = aVar.a();
            Object obj = gh6.b;
            gh6.a().a.post(new gj4(this, aVarA, oh4Var));
        }
    }
}
