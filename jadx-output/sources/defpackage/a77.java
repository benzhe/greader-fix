package defpackage;

import defpackage.a67;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class a77 {
    public static final Logger g = Logger.getLogger(a77.class.getName());
    public final long a;
    public final pd5 b;
    public Map<a67.a, Executor> c = new LinkedHashMap();
    public boolean d;
    public Throwable e;
    public long f;

    public a77(long j, pd5 pd5Var) {
        this.a = j;
        this.b = pd5Var;
    }

    public static void a(Executor executor, Runnable runnable) {
        try {
            executor.execute(runnable);
        } catch (Throwable th) {
            g.log(Level.SEVERE, "Failed to execute PingCallback", th);
        }
    }
}
