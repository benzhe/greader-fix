package defpackage;

import android.content.Context;
import dalvik.system.DexClassLoader;
import java.io.File;
import java.security.GeneralSecurityException;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class hs2 {
    public static final HashMap<String, Class<?>> g = new HashMap<>();
    public final Context a;
    public final gs2 b;
    public final pq2 c;
    public final oq2 d;
    public as2 e;
    public final Object f = new Object();

    public hs2(Context context, gs2 gs2Var, pq2 pq2Var, oq2 oq2Var) {
        this.a = context;
        this.b = gs2Var;
        this.c = pq2Var;
        this.d = oq2Var;
    }

    public final synchronized Class<?> a(zr2 zr2Var) throws fs2 {
        pd3 pd3Var = zr2Var.a;
        if (pd3Var == null) {
            throw new fs2(4010, "mc");
        }
        String strE = pd3Var.E();
        HashMap<String, Class<?>> map = g;
        Class<?> cls = map.get(strE);
        if (cls != null) {
            return cls;
        }
        try {
            if (!this.d.a(zr2Var.b)) {
                throw new fs2(2026, "VM did not pass signature verification");
            }
            try {
                File file = zr2Var.c;
                if (!file.exists()) {
                    file.mkdirs();
                }
                Class clsLoadClass = new DexClassLoader(zr2Var.b.getAbsolutePath(), file.getAbsolutePath(), null, this.a.getClassLoader()).loadClass("com.google.ccc.abuse.droidguard.DroidGuard");
                map.put(strE, clsLoadClass);
                return clsLoadClass;
            } catch (ClassNotFoundException | IllegalArgumentException | SecurityException e) {
                throw new fs2(2008, e);
            }
        } catch (GeneralSecurityException e2) {
            throw new fs2(2026, e2);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0060  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0062 A[Catch: Exception -> 0x007d, TryCatch #3 {Exception -> 0x007d, blocks: (B:3:0x0001, B:5:0x0034, B:8:0x0043, B:21:0x005a, B:15:0x004f, B:16:0x0052, B:19:0x0056, B:22:0x005c, B:26:0x0067, B:25:0x0062), top: B:38:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object b(java.lang.Class<?> r10, defpackage.zr2 r11) throws java.lang.Throwable {
        /*
            r9 = this;
            r0 = 6
            java.lang.Class[] r1 = new java.lang.Class[r0]     // Catch: java.lang.Exception -> L7d
            java.lang.Class<android.content.Context> r2 = android.content.Context.class
            r3 = 0
            r1[r3] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.Class<java.lang.String> r2 = java.lang.String.class
            r4 = 1
            r1[r4] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.Class<byte[]> r2 = byte[].class
            r5 = 2
            r1[r5] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.Class<java.lang.Object> r2 = java.lang.Object.class
            r6 = 3
            r1[r6] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.Class<android.os.Bundle> r2 = android.os.Bundle.class
            r7 = 4
            r1[r7] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.Class r2 = java.lang.Integer.TYPE     // Catch: java.lang.Exception -> L7d
            r8 = 5
            r1[r8] = r2     // Catch: java.lang.Exception -> L7d
            java.lang.reflect.Constructor r10 = r10.getDeclaredConstructor(r1)     // Catch: java.lang.Exception -> L7d
            java.lang.Object[] r0 = new java.lang.Object[r0]     // Catch: java.lang.Exception -> L7d
            android.content.Context r1 = r9.a     // Catch: java.lang.Exception -> L7d
            r0[r3] = r1     // Catch: java.lang.Exception -> L7d
            java.lang.String r1 = "msa-r"
            r0[r4] = r1     // Catch: java.lang.Exception -> L7d
            byte[] r1 = r11.e     // Catch: java.lang.Exception -> L7d
            r2 = 0
            if (r1 != 0) goto L5c
            java.io.File r1 = r11.d     // Catch: java.lang.Exception -> L7d
            java.io.FileInputStream r3 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53
            r3.<init>(r1)     // Catch: java.lang.Throwable -> L4c java.io.IOException -> L53
            k53 r1 = defpackage.k53.A(r3)     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4a
            byte[] r1 = r1.d()     // Catch: java.lang.Throwable -> L47 java.io.IOException -> L4a
            r3.close()     // Catch: java.io.IOException -> L5a java.lang.Exception -> L7d
            goto L5a
        L47:
            r10 = move-exception
            r2 = r3
            goto L4d
        L4a:
            goto L54
        L4c:
            r10 = move-exception
        L4d:
            if (r2 == 0) goto L52
            r2.close()     // Catch: java.io.IOException -> L52 java.lang.Exception -> L7d
        L52:
            throw r10     // Catch: java.lang.Exception -> L7d
        L53:
            r3 = r2
        L54:
            if (r3 == 0) goto L59
            r3.close()     // Catch: java.io.IOException -> L59 java.lang.Exception -> L7d
        L59:
            r1 = r2
        L5a:
            r11.e = r1     // Catch: java.lang.Exception -> L7d
        L5c:
            byte[] r11 = r11.e     // Catch: java.lang.Exception -> L7d
            if (r11 != 0) goto L62
            r11 = r2
            goto L67
        L62:
            int r1 = r11.length     // Catch: java.lang.Exception -> L7d
            byte[] r11 = java.util.Arrays.copyOf(r11, r1)     // Catch: java.lang.Exception -> L7d
        L67:
            r0[r5] = r11     // Catch: java.lang.Exception -> L7d
            r0[r6] = r2     // Catch: java.lang.Exception -> L7d
            android.os.Bundle r11 = new android.os.Bundle     // Catch: java.lang.Exception -> L7d
            r11.<init>()     // Catch: java.lang.Exception -> L7d
            r0[r7] = r11     // Catch: java.lang.Exception -> L7d
            java.lang.Integer r11 = java.lang.Integer.valueOf(r5)     // Catch: java.lang.Exception -> L7d
            r0[r8] = r11     // Catch: java.lang.Exception -> L7d
            java.lang.Object r10 = r10.newInstance(r0)     // Catch: java.lang.Exception -> L7d
            return r10
        L7d:
            r10 = move-exception
            fs2 r11 = new fs2
            r0 = 2004(0x7d4, float:2.808E-42)
            r11.<init>(r0, r10)
            throw r11
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hs2.b(java.lang.Class, zr2):java.lang.Object");
    }

    public final vq2 c() {
        as2 as2Var;
        synchronized (this.f) {
            as2Var = this.e;
        }
        return as2Var;
    }

    public final void d(zr2 zr2Var) {
        long jCurrentTimeMillis = System.currentTimeMillis();
        try {
            as2 as2Var = new as2(b(a(zr2Var), zr2Var), zr2Var, this.b, this.c);
            if (!as2Var.c()) {
                throw new fs2(4000, "init failed");
            }
            int iD = as2Var.d();
            if (iD != 0) {
                StringBuilder sb = new StringBuilder(15);
                sb.append("ci: ");
                sb.append(iD);
                throw new fs2(4001, sb.toString());
            }
            synchronized (this.f) {
                as2 as2Var2 = this.e;
                if (as2Var2 != null) {
                    try {
                        as2Var2.a();
                    } catch (fs2 e) {
                        this.c.b(e.e, -1L, e);
                    }
                    this.e = as2Var;
                } else {
                    this.e = as2Var;
                }
            }
            this.c.f(3000, System.currentTimeMillis() - jCurrentTimeMillis);
        } catch (fs2 e2) {
            this.c.b(e2.e, System.currentTimeMillis() - jCurrentTimeMillis, e2);
        } catch (Exception e3) {
            this.c.b(4010, System.currentTimeMillis() - jCurrentTimeMillis, e3);
        }
    }
}
