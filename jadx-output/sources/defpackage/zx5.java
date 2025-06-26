package defpackage;

import android.content.Context;
import defpackage.by5;
import java.util.Set;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class zx5 implements by5 {
    public static final /* synthetic */ int b = 0;
    public s96<cy5> a;

    public zx5(final Context context, Set<ay5> set) {
        og5 og5Var = new og5(new s96(context) { // from class: wx5
            public final Context a;

            {
                this.a = context;
            }

            @Override // defpackage.s96
            public Object get() {
                cy5 cy5Var;
                Context context2 = this.a;
                int i = zx5.b;
                cy5 cy5Var2 = cy5.b;
                synchronized (cy5.class) {
                    if (cy5.b == null) {
                        cy5.b = new cy5(context2);
                    }
                    cy5Var = cy5.b;
                }
                return cy5Var;
            }
        });
        new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue(), new ThreadFactory() { // from class: yx5
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                int i = zx5.b;
                return new Thread(runnable, "heartbeat-information-executor");
            }
        });
        this.a = og5Var;
    }

    @Override // defpackage.by5
    public by5.a a(String str) {
        boolean zA;
        long jCurrentTimeMillis = System.currentTimeMillis();
        boolean zA2 = this.a.get().a(str, jCurrentTimeMillis);
        cy5 cy5Var = this.a.get();
        synchronized (cy5Var) {
            zA = cy5Var.a("fire-global", jCurrentTimeMillis);
        }
        return (zA2 && zA) ? by5.a.COMBINED : zA ? by5.a.GLOBAL : zA2 ? by5.a.SDK : by5.a.NONE;
    }
}
