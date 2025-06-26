package defpackage;

import android.content.Context;
import android.os.Bundle;
import com.google.firebase.remoteconfig.internal.ConfigFetchHttpClient;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class rb6 {
    public static final Random j = new Random();
    public final Map<String, jb6> a;
    public final Context b;
    public final ExecutorService c;
    public final pe5 d;
    public final z96 e;
    public final ye5 f;
    public final bf5 g;
    public final String h;
    public Map<String, String> i;

    public rb6(Context context, pe5 pe5Var, z96 z96Var, ye5 ye5Var, bf5 bf5Var) {
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        this.a = new HashMap();
        this.i = new HashMap();
        this.b = context;
        this.c = executorServiceNewCachedThreadPool;
        this.d = pe5Var;
        this.e = z96Var;
        this.f = ye5Var;
        this.g = bf5Var;
        pe5Var.a();
        this.h = pe5Var.c.b;
        c50.i(executorServiceNewCachedThreadPool, new Callable(this) { // from class: pb6
            public final rb6 e;

            {
                this.e = this;
            }

            @Override // java.util.concurrent.Callable
            public Object call() {
                return this.e.c();
            }
        });
    }

    public static boolean e(pe5 pe5Var) {
        pe5Var.a();
        return pe5Var.b.equals("[DEFAULT]");
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x002e  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0031  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public synchronized defpackage.jb6 a(defpackage.pe5 r16, java.lang.String r17, defpackage.z96 r18, defpackage.ye5 r19, java.util.concurrent.Executor r20, defpackage.xb6 r21, defpackage.xb6 r22, defpackage.xb6 r23, defpackage.dc6 r24, defpackage.fc6 r25, defpackage.gc6 r26) {
        /*
            r15 = this;
            r1 = r15
            r0 = r17
            monitor-enter(r15)
            java.util.Map<java.lang.String, jb6> r2 = r1.a     // Catch: java.lang.Throwable -> L65
            boolean r2 = r2.containsKey(r0)     // Catch: java.lang.Throwable -> L65
            if (r2 != 0) goto L5b
            jb6 r2 = new jb6     // Catch: java.lang.Throwable -> L65
            android.content.Context r4 = r1.b     // Catch: java.lang.Throwable -> L65
            java.lang.String r3 = "firebase"
            boolean r3 = r0.equals(r3)     // Catch: java.lang.Throwable -> L65
            if (r3 == 0) goto L29
            r16.a()     // Catch: java.lang.Throwable -> L65
            r5 = r16
            java.lang.String r3 = r5.b     // Catch: java.lang.Throwable -> L65
            java.lang.String r6 = "[DEFAULT]"
            boolean r3 = r3.equals(r6)     // Catch: java.lang.Throwable -> L65
            if (r3 == 0) goto L2b
            r3 = 1
            goto L2c
        L29:
            r5 = r16
        L2b:
            r3 = 0
        L2c:
            if (r3 == 0) goto L31
            r7 = r19
            goto L33
        L31:
            r3 = 0
            r7 = r3
        L33:
            r3 = r2
            r5 = r16
            r6 = r18
            r8 = r20
            r9 = r21
            r10 = r22
            r11 = r23
            r12 = r24
            r13 = r25
            r14 = r26
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11, r12, r13, r14)     // Catch: java.lang.Throwable -> L65
            r22.b()     // Catch: java.lang.Throwable -> L65
            xb6 r3 = r2.e     // Catch: java.lang.Throwable -> L65
            r3.b()     // Catch: java.lang.Throwable -> L65
            xb6 r3 = r2.c     // Catch: java.lang.Throwable -> L65
            r3.b()     // Catch: java.lang.Throwable -> L65
            java.util.Map<java.lang.String, jb6> r3 = r1.a     // Catch: java.lang.Throwable -> L65
            r3.put(r0, r2)     // Catch: java.lang.Throwable -> L65
        L5b:
            java.util.Map<java.lang.String, jb6> r2 = r1.a     // Catch: java.lang.Throwable -> L65
            java.lang.Object r0 = r2.get(r0)     // Catch: java.lang.Throwable -> L65
            jb6 r0 = (defpackage.jb6) r0     // Catch: java.lang.Throwable -> L65
            monitor-exit(r15)
            return r0
        L65:
            r0 = move-exception
            monitor-exit(r15)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rb6.a(pe5, java.lang.String, z96, ye5, java.util.concurrent.Executor, xb6, xb6, xb6, dc6, fc6, gc6):jb6");
    }

    public final xb6 b(String str, String str2) {
        hc6 hc6Var;
        xb6 xb6Var;
        String str3 = String.format("%s_%s_%s_%s.json", "frc", this.h, str, str2);
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool();
        Context context = this.b;
        Map<String, hc6> map = hc6.c;
        synchronized (hc6.class) {
            Map<String, hc6> map2 = hc6.c;
            if (!map2.containsKey(str3)) {
                map2.put(str3, new hc6(context, str3));
            }
            hc6Var = map2.get(str3);
        }
        Map<String, xb6> map3 = xb6.d;
        synchronized (xb6.class) {
            String str4 = hc6Var.b;
            Map<String, xb6> map4 = xb6.d;
            if (!map4.containsKey(str4)) {
                map4.put(str4, new xb6(executorServiceNewCachedThreadPool, hc6Var));
            }
            xb6Var = map4.get(str4);
        }
        return xb6Var;
    }

    public jb6 c() {
        jb6 jb6VarA;
        synchronized (this) {
            xb6 xb6VarB = b("firebase", "fetch");
            xb6 xb6VarB2 = b("firebase", "activate");
            xb6 xb6VarB3 = b("firebase", "defaults");
            gc6 gc6Var = new gc6(this.b.getSharedPreferences(String.format("%s_%s_%s_%s", "frc", this.h, "firebase", "settings"), 0));
            fc6 fc6Var = new fc6(this.c, xb6VarB2, xb6VarB3);
            pe5 pe5Var = this.d;
            bf5 bf5Var = this.g;
            pe5Var.a();
            final ic6 ic6Var = (!pe5Var.b.equals("[DEFAULT]") || bf5Var == null) ? null : new ic6(bf5Var);
            if (ic6Var != null) {
                a20<String, yb6> a20Var = new a20(ic6Var) { // from class: qb6
                    public final ic6 a;

                    {
                        this.a = ic6Var;
                    }

                    @Override // defpackage.a20
                    public void accept(Object obj, Object obj2) {
                        JSONObject jSONObjectOptJSONObject;
                        ic6 ic6Var2 = this.a;
                        String str = (String) obj;
                        yb6 yb6Var = (yb6) obj2;
                        Objects.requireNonNull(ic6Var2);
                        JSONObject jSONObject = yb6Var.e;
                        if (jSONObject.length() < 1) {
                            return;
                        }
                        JSONObject jSONObject2 = yb6Var.b;
                        if (jSONObject2.length() >= 1 && (jSONObjectOptJSONObject = jSONObject.optJSONObject(str)) != null) {
                            Bundle bundle = new Bundle();
                            bundle.putString("_fpid", jSONObjectOptJSONObject.optString("personalizationId"));
                            bundle.putString("_fpct", jSONObject2.optString(str));
                            ic6Var2.a.W("fp", "_fpc", bundle);
                        }
                    }
                };
                synchronized (fc6Var.a) {
                    fc6Var.a.add(a20Var);
                }
            }
            jb6VarA = a(this.d, "firebase", this.e, this.f, this.c, xb6VarB, xb6VarB2, xb6VarB3, d("firebase", xb6VarB, gc6Var), fc6Var, gc6Var);
        }
        return jb6VarA;
    }

    public synchronized dc6 d(String str, xb6 xb6Var, gc6 gc6Var) {
        z96 z96Var;
        bf5 bf5Var;
        ExecutorService executorService;
        d20 d20Var;
        Random random;
        String str2;
        pe5 pe5Var;
        z96Var = this.e;
        bf5Var = e(this.d) ? this.g : null;
        executorService = this.c;
        d20Var = d20.a;
        random = j;
        pe5 pe5Var2 = this.d;
        pe5Var2.a();
        str2 = pe5Var2.c.a;
        pe5Var = this.d;
        pe5Var.a();
        return new dc6(z96Var, bf5Var, executorService, d20Var, random, xb6Var, new ConfigFetchHttpClient(this.b, pe5Var.c.b, str2, str, gc6Var.a.getLong("fetch_timeout_in_seconds", 60L), gc6Var.a.getLong("fetch_timeout_in_seconds", 60L)), gc6Var, this.i);
    }
}
