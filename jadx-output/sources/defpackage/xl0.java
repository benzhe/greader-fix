package defpackage;

import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.text.TextUtils;
import com.google.android.gms.internal.ads.zzbar;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes.dex */
public final class xl0 implements bm0 {
    public static final Object f = new Object();
    public static bm0 g;
    public static bm0 h;
    public final Context b;
    public final zzbar e;
    public final Object a = new Object();
    public final WeakHashMap<Thread, Boolean> c = new WeakHashMap<>();
    public final ExecutorService d = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());

    public xl0(Context context, zzbar zzbarVar) {
        this.b = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.e = zzbarVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0060 A[Catch: all -> 0x006b, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:8:0x0015, B:10:0x0027, B:12:0x0036, B:13:0x0038, B:16:0x0041, B:20:0x0050, B:21:0x0051, B:22:0x0060, B:23:0x0067, B:14:0x0039, B:15:0x0040), top: B:29:0x0003, inners: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.bm0 d(android.content.Context r4, com.google.android.gms.internal.ads.zzbar r5) {
        /*
            java.lang.Object r0 = defpackage.xl0.f
            monitor-enter(r0)
            bm0 r1 = defpackage.xl0.h     // Catch: java.lang.Throwable -> L6b
            if (r1 != 0) goto L67
            e60<java.lang.Boolean> r1 = defpackage.w60.e     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r1 = r1.a()     // Catch: java.lang.Throwable -> L6b
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L6b
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L6b
            if (r1 == 0) goto L60
            o40<java.lang.Boolean> r1 = defpackage.y40.w4     // Catch: java.lang.Throwable -> L6b
            os3 r2 = defpackage.os3.j     // Catch: java.lang.Throwable -> L6b
            u40 r2 = r2.f     // Catch: java.lang.Throwable -> L6b
            java.lang.Object r1 = r2.a(r1)     // Catch: java.lang.Throwable -> L6b
            java.lang.Boolean r1 = (java.lang.Boolean) r1     // Catch: java.lang.Throwable -> L6b
            boolean r1 = r1.booleanValue()     // Catch: java.lang.Throwable -> L6b
            if (r1 != 0) goto L60
            xl0 r1 = new xl0     // Catch: java.lang.Throwable -> L6b
            r1.<init>(r4, r5)     // Catch: java.lang.Throwable -> L6b
            android.os.Looper r4 = android.os.Looper.getMainLooper()     // Catch: java.lang.Throwable -> L6b
            java.lang.Thread r4 = r4.getThread()     // Catch: java.lang.Throwable -> L6b
            if (r4 == 0) goto L51
            java.lang.Object r5 = r1.a     // Catch: java.lang.Throwable -> L6b
            monitor-enter(r5)     // Catch: java.lang.Throwable -> L6b
            java.util.WeakHashMap<java.lang.Thread, java.lang.Boolean> r2 = r1.c     // Catch: java.lang.Throwable -> L4e
            java.lang.Boolean r3 = java.lang.Boolean.TRUE     // Catch: java.lang.Throwable -> L4e
            r2.put(r4, r3)     // Catch: java.lang.Throwable -> L4e
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4e
            java.lang.Thread$UncaughtExceptionHandler r5 = r4.getUncaughtExceptionHandler()     // Catch: java.lang.Throwable -> L6b
            yl0 r2 = new yl0     // Catch: java.lang.Throwable -> L6b
            r2.<init>(r1, r5)     // Catch: java.lang.Throwable -> L6b
            r4.setUncaughtExceptionHandler(r2)     // Catch: java.lang.Throwable -> L6b
            goto L51
        L4e:
            r4 = move-exception
            monitor-exit(r5)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L6b
        L51:
            java.lang.Thread$UncaughtExceptionHandler r4 = java.lang.Thread.getDefaultUncaughtExceptionHandler()     // Catch: java.lang.Throwable -> L6b
            zl0 r5 = new zl0     // Catch: java.lang.Throwable -> L6b
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L6b
            java.lang.Thread.setDefaultUncaughtExceptionHandler(r5)     // Catch: java.lang.Throwable -> L6b
            defpackage.xl0.h = r1     // Catch: java.lang.Throwable -> L6b
            goto L67
        L60:
            am0 r4 = new am0     // Catch: java.lang.Throwable -> L6b
            r4.<init>()     // Catch: java.lang.Throwable -> L6b
            defpackage.xl0.h = r4     // Catch: java.lang.Throwable -> L6b
        L67:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            bm0 r4 = defpackage.xl0.h
            return r4
        L6b:
            r4 = move-exception
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L6b
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xl0.d(android.content.Context, com.google.android.gms.internal.ads.zzbar):bm0");
    }

    @Override // defpackage.bm0
    public final void a(Throwable th, String str) {
        b(th, str, 1.0f);
    }

    @Override // defpackage.bm0
    public final void b(Throwable th, String str, float f2) {
        Throwable th2;
        boolean zC;
        String packageName;
        Handler handler = zr0.b;
        int i = 0;
        if (w60.f.a().booleanValue()) {
            th2 = th;
        } else {
            LinkedList linkedList = new LinkedList();
            for (Throwable cause = th; cause != null; cause = cause.getCause()) {
                linkedList.push(cause);
            }
            th2 = null;
            while (!linkedList.isEmpty()) {
                Throwable th3 = (Throwable) linkedList.pop();
                StackTraceElement[] stackTrace = th3.getStackTrace();
                ArrayList arrayList = new ArrayList();
                arrayList.add(new StackTraceElement(th3.getClass().getName(), "<filtered>", "<filtered>", 1));
                boolean z = false;
                for (StackTraceElement stackTraceElement : stackTrace) {
                    if (zr0.m(stackTraceElement.getClassName())) {
                        arrayList.add(stackTraceElement);
                        z = true;
                    } else {
                        String className = stackTraceElement.getClassName();
                        if (!TextUtils.isEmpty(className) && (className.startsWith("android.") || className.startsWith("java."))) {
                            arrayList.add(stackTraceElement);
                        } else {
                            arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                        }
                    }
                }
                if (z) {
                    th2 = th2 == null ? new Throwable(th3.getMessage()) : new Throwable(th3.getMessage(), th2);
                    th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                }
            }
        }
        if (th2 == null) {
            return;
        }
        String name = th.getClass().getName();
        StringWriter stringWriter = new StringWriter();
        t43.a.a(th, new PrintWriter(stringWriter));
        String string = stringWriter.toString();
        boolean z2 = Math.random() < ((double) f2);
        int i2 = f2 > 0.0f ? (int) (1.0f / f2) : 1;
        if (z2) {
            ArrayList arrayList2 = new ArrayList();
            try {
                zC = i20.a(this.b).c();
            } catch (Throwable th4) {
                is0.zzc("Error fetching instant app info", th4);
                zC = false;
            }
            try {
                packageName = this.b.getPackageName();
            } catch (Throwable unused) {
                is0.zzez("Cannot obtain package name, proceeding.");
                packageName = "unknown";
            }
            Uri.Builder builderAppendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(zC)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE).appendQueryParameter("api", String.valueOf(Build.VERSION.SDK_INT));
            String str2 = Build.MANUFACTURER;
            String strC = Build.MODEL;
            if (!strC.startsWith(str2)) {
                strC = jo.c(strC.length() + jo.x(str2, 1), str2, StringUtils.SPACE, strC);
            }
            Uri.Builder builderAppendQueryParameter2 = builderAppendQueryParameter.appendQueryParameter("device", strC).appendQueryParameter("js", this.e.e).appendQueryParameter("appid", packageName).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", string).appendQueryParameter("eids", TextUtils.join(",", y40.b())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "360757573").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i2)).appendQueryParameter("pb_tm", String.valueOf(w60.c.a()));
            if (((Boolean) os3.j.f.a(y40.T0)).booleanValue()) {
                builderAppendQueryParameter2.appendQueryParameter("gmscv", String.valueOf(gy.b.a(this.b))).appendQueryParameter("lite", this.e.i ? "1" : "0");
            }
            arrayList2.add(builderAppendQueryParameter2.toString());
            int size = arrayList2.size();
            while (i < size) {
                Object obj = arrayList2.get(i);
                i++;
                final String str3 = (String) obj;
                final ls0 ls0Var = new ls0();
                this.d.execute(new Runnable(ls0Var, str3) { // from class: wl0
                    public final ls0 e;
                    public final String f;

                    {
                        this.e = ls0Var;
                        this.f = str3;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.e.a(this.f);
                    }
                });
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void c(java.lang.Throwable r11) {
        /*
            r10 = this;
            r0 = 1
            r1 = 0
            if (r11 == 0) goto L3c
            r2 = r11
            r3 = 0
            r4 = 0
        L7:
            if (r2 == 0) goto L37
            java.lang.StackTraceElement[] r5 = r2.getStackTrace()
            int r6 = r5.length
            r7 = 0
        Lf:
            if (r7 >= r6) goto L32
            r8 = r5[r7]
            java.lang.String r9 = r8.getClassName()
            boolean r9 = defpackage.zr0.m(r9)
            if (r9 == 0) goto L1e
            r3 = 1
        L1e:
            java.lang.Class<xl0> r9 = defpackage.xl0.class
            java.lang.String r9 = r9.getName()
            java.lang.String r8 = r8.getClassName()
            boolean r8 = r9.equals(r8)
            if (r8 == 0) goto L2f
            r4 = 1
        L2f:
            int r7 = r7 + 1
            goto Lf
        L32:
            java.lang.Throwable r2 = r2.getCause()
            goto L7
        L37:
            if (r3 == 0) goto L3c
            if (r4 != 0) goto L3c
            goto L3d
        L3c:
            r0 = 0
        L3d:
            if (r0 == 0) goto L46
            r0 = 1065353216(0x3f800000, float:1.0)
            java.lang.String r1 = ""
            r10.b(r11, r1, r0)
        L46:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.xl0.c(java.lang.Throwable):void");
    }
}
