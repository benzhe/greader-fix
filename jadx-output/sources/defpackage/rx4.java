package defpackage;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.internal.measurement.zzy;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;
import org.apache.commons.lang3.StringUtils;
import org.checkerframework.dataflow.qual.Pure;

/* loaded from: classes.dex */
public final class rx4 implements ny4 {
    public static volatile rx4 I;
    public long A;
    public volatile Boolean B;
    public Boolean C;
    public Boolean D;
    public volatile boolean E;
    public int F;
    public final long H;
    public final Context a;
    public final String b;
    public final String c;
    public final String d;
    public final boolean e;
    public final c35 f;
    public final cs4 g;
    public final ex4 h;
    public final qw4 i;
    public final ox4 j;
    public final x15 k;
    public final p25 l;
    public final lw4 m;
    public final b20 n;
    public final h05 o;
    public final sz4 p;
    public final xu4 q;
    public final xz4 r;
    public final String s;
    public kw4 t;
    public h15 u;
    public js4 v;
    public iw4 w;
    public hx4 x;
    public Boolean z;
    public boolean y = false;
    public final AtomicInteger G = new AtomicInteger(0);

    public rx4(sy4 sy4Var) throws IllegalStateException {
        Context context;
        Bundle bundle;
        Context context2 = sy4Var.a;
        c35 c35Var = new c35();
        this.f = c35Var;
        c50.b = c35Var;
        this.a = context2;
        this.b = sy4Var.b;
        this.c = sy4Var.c;
        this.d = sy4Var.d;
        this.e = sy4Var.h;
        this.B = sy4Var.e;
        this.s = sy4Var.j;
        this.E = true;
        zzy zzyVar = sy4Var.g;
        if (zzyVar != null && (bundle = zzyVar.k) != null) {
            Object obj = bundle.get("measurementEnabled");
            if (obj instanceof Boolean) {
                this.C = (Boolean) obj;
            }
            Object obj2 = zzyVar.k.get("measurementDeactivated");
            if (obj2 instanceof Boolean) {
                this.D = (Boolean) obj2;
            }
        }
        synchronized (b74.f) {
            a74 a74Var = b74.g;
            final Context applicationContext = context2.getApplicationContext();
            if (applicationContext == null) {
                applicationContext = context2;
            }
            if (a74Var == null || a74Var.a() != applicationContext) {
                j64.d();
                c74.c();
                synchronized (p64.class) {
                    p64 p64Var = p64.c;
                    if (p64Var != null && (context = p64Var.a) != null && p64Var.b != null) {
                        context.getContentResolver().unregisterContentObserver(p64.c.b);
                    }
                    p64.c = null;
                }
                b74.g = new g64(applicationContext, c50.z1(new g74(applicationContext) { // from class: t64
                    public final Context e;

                    {
                        this.e = applicationContext;
                    }

                    @Override // defpackage.g74
                    public final Object a() throws IOException {
                        e74 f74Var;
                        Context contextCreateDeviceProtectedStorageContext = this.e;
                        Object obj3 = b74.f;
                        String str = Build.TYPE;
                        String str2 = Build.TAGS;
                        if ((!str.equals("eng") && !str.equals("userdebug")) || (!str2.contains("dev-keys") && !str2.contains("test-keys"))) {
                            return d74.e;
                        }
                        if (f64.a() && !contextCreateDeviceProtectedStorageContext.isDeviceProtectedStorage()) {
                            contextCreateDeviceProtectedStorageContext = contextCreateDeviceProtectedStorageContext.createDeviceProtectedStorageContext();
                        }
                        StrictMode.ThreadPolicy threadPolicyAllowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            StrictMode.allowThreadDiskWrites();
                            try {
                                File file = new File(contextCreateDeviceProtectedStorageContext.getDir("phenotype_hermetic", 0), "overrides.txt");
                                f74Var = file.exists() ? new f74(file) : d74.e;
                            } catch (RuntimeException e) {
                                Log.e("HermeticFileOverrides", "no data dir", e);
                                f74Var = d74.e;
                            }
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            if (!f74Var.a()) {
                                return d74.e;
                            }
                            File file2 = (File) f74Var.b();
                            try {
                                BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(new FileInputStream(file2)));
                                try {
                                    HashMap map = new HashMap();
                                    HashMap map2 = new HashMap();
                                    while (true) {
                                        String line = bufferedReader.readLine();
                                        if (line == null) {
                                            String strValueOf = String.valueOf(file2);
                                            StringBuilder sb = new StringBuilder(strValueOf.length() + 7);
                                            sb.append("Parsed ");
                                            sb.append(strValueOf);
                                            Log.i("HermeticFileOverrides", sb.toString());
                                            q64 q64Var = new q64(map);
                                            bufferedReader.close();
                                            return new f74(q64Var);
                                        }
                                        String[] strArrSplit = line.split(StringUtils.SPACE, 3);
                                        if (strArrSplit.length != 3) {
                                            Log.e("HermeticFileOverrides", line.length() != 0 ? "Invalid: ".concat(line) : new String("Invalid: "));
                                        } else {
                                            String str3 = new String(strArrSplit[0]);
                                            String strDecode = Uri.decode(new String(strArrSplit[1]));
                                            String strDecode2 = (String) map2.get(strArrSplit[2]);
                                            if (strDecode2 == null) {
                                                String str4 = new String(strArrSplit[2]);
                                                strDecode2 = Uri.decode(str4);
                                                if (strDecode2.length() < 1024 || strDecode2 == str4) {
                                                    map2.put(str4, strDecode2);
                                                }
                                            }
                                            if (!map.containsKey(str3)) {
                                                map.put(str3, new HashMap());
                                            }
                                            ((Map) map.get(str3)).put(strDecode, strDecode2);
                                        }
                                    }
                                } finally {
                                }
                            } catch (IOException e2) {
                                throw new RuntimeException(e2);
                            }
                        } catch (Throwable th) {
                            StrictMode.setThreadPolicy(threadPolicyAllowThreadDiskReads);
                            throw th;
                        }
                    }
                }));
                b74.h.incrementAndGet();
            }
        }
        this.n = d20.a;
        Long l = sy4Var.i;
        this.H = l != null ? l.longValue() : System.currentTimeMillis();
        this.g = new cs4(this);
        ex4 ex4Var = new ex4(this);
        ex4Var.k();
        this.h = ex4Var;
        qw4 qw4Var = new qw4(this);
        qw4Var.k();
        this.i = qw4Var;
        p25 p25Var = new p25(this);
        p25Var.k();
        this.l = p25Var;
        lw4 lw4Var = new lw4(this);
        lw4Var.k();
        this.m = lw4Var;
        this.q = new xu4(this);
        h05 h05Var = new h05(this);
        h05Var.g();
        this.o = h05Var;
        sz4 sz4Var = new sz4(this);
        sz4Var.g();
        this.p = sz4Var;
        x15 x15Var = new x15(this);
        x15Var.g();
        this.k = x15Var;
        xz4 xz4Var = new xz4(this);
        xz4Var.k();
        this.r = xz4Var;
        ox4 ox4Var = new ox4(this);
        ox4Var.k();
        this.j = ox4Var;
        zzy zzyVar2 = sy4Var.g;
        boolean z = zzyVar2 == null || zzyVar2.f == 0;
        if (context2.getApplicationContext() instanceof Application) {
            sz4 sz4VarS = s();
            if (sz4VarS.a.a.getApplicationContext() instanceof Application) {
                Application application = (Application) sz4VarS.a.a.getApplicationContext();
                if (sz4VarS.c == null) {
                    sz4VarS.c = new rz4(sz4VarS);
                }
                if (z) {
                    application.unregisterActivityLifecycleCallbacks(sz4VarS.c);
                    application.registerActivityLifecycleCallbacks(sz4VarS.c);
                    sz4VarS.a.a().n.a("Registered activity lifecycle callback");
                }
            }
        } else {
            a().i.a("Application context is not an Application");
        }
        ox4Var.q(new qx4(this, sy4Var));
    }

    public static rx4 d(Context context, zzy zzyVar, Long l) {
        Bundle bundle;
        if (zzyVar != null && (zzyVar.i == null || zzyVar.j == null)) {
            zzyVar = new zzy(zzyVar.e, zzyVar.f, zzyVar.g, zzyVar.h, null, null, zzyVar.k, null);
        }
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(context.getApplicationContext(), "null reference");
        if (I == null) {
            synchronized (rx4.class) {
                if (I == null) {
                    I = new rx4(new sy4(context, zzyVar, l));
                }
            }
        } else if (zzyVar != null && (bundle = zzyVar.k) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            Objects.requireNonNull(I, "null reference");
            I.B = Boolean.valueOf(zzyVar.k.getBoolean("dataCollectionDefaultEnabled"));
        }
        Objects.requireNonNull(I, "null reference");
        return I;
    }

    public static final void k(ly4 ly4Var) {
        if (ly4Var == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void l(ww4 ww4Var) {
        if (ww4Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (ww4Var.b) {
            return;
        }
        String strValueOf = String.valueOf(ww4Var.getClass());
        throw new IllegalStateException(jo.s(new StringBuilder(strValueOf.length() + 27), "Component not initialized: ", strValueOf));
    }

    public static final void n(my4 my4Var) {
        if (my4Var == null) {
            throw new IllegalStateException("Component not created");
        }
        if (my4Var.h()) {
            return;
        }
        String strValueOf = String.valueOf(my4Var.getClass());
        throw new IllegalStateException(jo.s(new StringBuilder(strValueOf.length() + 27), "Component not initialized: ", strValueOf));
    }

    @Pure
    public final js4 A() {
        n(this.v);
        return this.v;
    }

    @Override // defpackage.ny4
    @Pure
    public final qw4 a() {
        n(this.i);
        return this.i;
    }

    @Pure
    public final iw4 b() {
        l(this.w);
        return this.w;
    }

    @Pure
    public final xu4 c() {
        xu4 xu4Var = this.q;
        if (xu4Var != null) {
            return xu4Var;
        }
        throw new IllegalStateException("Component not created");
    }

    @Override // defpackage.ny4
    @Pure
    public final b20 e() {
        return this.n;
    }

    public final boolean f() {
        return this.B != null && this.B.booleanValue();
    }

    public final boolean g() {
        return h() == 0;
    }

    public final int h() {
        m().d();
        if (this.g.v()) {
            return 1;
        }
        Boolean bool = this.D;
        if (bool != null && bool.booleanValue()) {
            return 2;
        }
        pc4.b();
        if (this.g.s(null, ew4.E0)) {
            m().d();
            if (!this.E) {
                return 8;
            }
        }
        Boolean boolQ = q().q();
        if (boolQ != null) {
            return boolQ.booleanValue() ? 0 : 3;
        }
        cs4 cs4Var = this.g;
        c35 c35Var = cs4Var.a.f;
        Boolean boolU = cs4Var.u("firebase_analytics_collection_enabled");
        if (boolU != null) {
            return boolU.booleanValue() ? 0 : 4;
        }
        Boolean bool2 = this.C;
        return bool2 != null ? bool2.booleanValue() ? 0 : 5 : (!this.g.s(null, ew4.S) || this.B == null || this.B.booleanValue()) ? 0 : 7;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00bf  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean i() {
        /*
            r8 = this;
            boolean r0 = r8.y
            if (r0 == 0) goto Lcd
            ox4 r0 = r8.m()
            r0.d()
            java.lang.Boolean r0 = r8.z
            if (r0 == 0) goto L30
            long r1 = r8.A
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 == 0) goto L30
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto Lc6
            b20 r0 = r8.n
            long r0 = r0.b()
            long r2 = r8.A
            long r0 = r0 - r2
            long r0 = java.lang.Math.abs(r0)
            r2 = 1000(0x3e8, double:4.94E-321)
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 <= 0) goto Lc6
        L30:
            b20 r0 = r8.n
            long r0 = r0.b()
            r8.A = r0
            p25 r0 = r8.t()
            java.lang.String r1 = "android.permission.INTERNET"
            boolean r0 = r0.E(r1)
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L78
            p25 r0 = r8.t()
            java.lang.String r3 = "android.permission.ACCESS_NETWORK_STATE"
            boolean r0 = r0.E(r3)
            if (r0 == 0) goto L78
            android.content.Context r0 = r8.a
            h20 r0 = defpackage.i20.a(r0)
            boolean r0 = r0.c()
            if (r0 != 0) goto L76
            cs4 r0 = r8.g
            boolean r0 = r0.A()
            if (r0 != 0) goto L76
            android.content.Context r0 = r8.a
            boolean r0 = defpackage.jx4.a(r0)
            if (r0 == 0) goto L78
            android.content.Context r0 = r8.a
            boolean r0 = defpackage.p25.D(r0)
            if (r0 == 0) goto L78
        L76:
            r0 = 1
            goto L79
        L78:
            r0 = 0
        L79:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)
            r8.z = r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto Lc6
            p25 r0 = r8.t()
            iw4 r3 = r8.b()
            java.lang.String r3 = r3.l()
            iw4 r4 = r8.b()
            r4.f()
            java.lang.String r4 = r4.l
            iw4 r5 = r8.b()
            r5.f()
            java.lang.String r6 = r5.m
            java.lang.String r7 = "null reference"
            java.util.Objects.requireNonNull(r6, r7)
            java.lang.String r5 = r5.m
            boolean r0 = r0.n(r3, r4, r5)
            if (r0 != 0) goto Lbf
            iw4 r0 = r8.b()
            r0.f()
            java.lang.String r0 = r0.l
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto Lc0
        Lbf:
            r1 = 1
        Lc0:
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r1)
            r8.z = r0
        Lc6:
            java.lang.Boolean r0 = r8.z
            boolean r0 = r0.booleanValue()
            return r0
        Lcd:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "AppMeasurement is not initialized"
            r0.<init>(r1)
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rx4.i():boolean");
    }

    @Override // defpackage.ny4
    @Pure
    public final Context j() {
        return this.a;
    }

    @Override // defpackage.ny4
    @Pure
    public final ox4 m() {
        n(this.j);
        return this.j;
    }

    @Override // defpackage.ny4
    @Pure
    public final c35 o() {
        return this.f;
    }

    @Pure
    public final cs4 p() {
        return this.g;
    }

    @Pure
    public final ex4 q() {
        k(this.h);
        return this.h;
    }

    @Pure
    public final x15 r() {
        l(this.k);
        return this.k;
    }

    @Pure
    public final sz4 s() {
        l(this.p);
        return this.p;
    }

    @Pure
    public final p25 t() {
        k(this.l);
        return this.l;
    }

    @Pure
    public final lw4 u() {
        k(this.m);
        return this.m;
    }

    @Pure
    public final kw4 v() {
        l(this.t);
        return this.t;
    }

    @Pure
    public final xz4 w() {
        n(this.r);
        return this.r;
    }

    @Pure
    public final boolean x() {
        return TextUtils.isEmpty(this.b);
    }

    @Pure
    public final h05 y() {
        l(this.o);
        return this.o;
    }

    @Pure
    public final h15 z() {
        l(this.u);
        return this.u;
    }
}
