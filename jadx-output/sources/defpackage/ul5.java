package defpackage;

import android.util.Log;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ul5 {
    public static final short[] h = {10, 20, 30, 60, 120, 300};
    public final am5 a;
    public final String b;
    public final String c;
    public final cj5 d;
    public final tl5 e;
    public final a f;
    public Thread g;

    public interface a {
    }

    public interface b {
    }

    public interface c {
    }

    public class d extends sh5 {
        public final List<xl5> e;
        public final boolean f;
        public final float g;

        public d(List<xl5> list, boolean z, float f) {
            this.e = list;
            this.f = z;
            this.g = f;
        }

        @Override // defpackage.sh5
        public void a() {
            try {
                b(this.e, this.f);
            } catch (Exception e) {
                if (ah5.a.a(6)) {
                    Log.e("FirebaseCrashlytics", "An unexpected error occurred while attempting to upload crash reports.", e);
                }
            }
            ul5.this.g = null;
        }

        public final void b(List<xl5> list, boolean z) throws InterruptedException {
            ah5 ah5Var = ah5.a;
            StringBuilder sbZ = jo.z("Starting report processing in ");
            sbZ.append(this.g);
            sbZ.append(" second(s)...");
            ah5Var.b(sbZ.toString());
            float f = this.g;
            if (f > 0.0f) {
                try {
                    Thread.sleep((long) (f * 1000.0f));
                } catch (InterruptedException unused) {
                    Thread.currentThread().interrupt();
                    return;
                }
            }
            if (ii5.this.p()) {
                return;
            }
            int i = 0;
            while (list.size() > 0 && !ii5.this.p()) {
                ah5 ah5Var2 = ah5.a;
                StringBuilder sbZ2 = jo.z("Attempting to send ");
                sbZ2.append(list.size());
                sbZ2.append(" report(s)");
                ah5Var2.b(sbZ2.toString());
                ArrayList arrayList = new ArrayList();
                for (xl5 xl5Var : list) {
                    if (!ul5.this.a(xl5Var, z)) {
                        arrayList.add(xl5Var);
                    }
                }
                if (arrayList.size() > 0) {
                    int i2 = i + 1;
                    long j = ul5.h[Math.min(i, r8.length - 1)];
                    ah5.a.b("Report submission: scheduling delayed retry in " + j + " seconds");
                    try {
                        Thread.sleep(j * 1000);
                        i = i2;
                    } catch (InterruptedException unused2) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
                list = arrayList;
            }
        }
    }

    public ul5(String str, String str2, cj5 cj5Var, tl5 tl5Var, am5 am5Var, a aVar) {
        this.a = am5Var;
        this.b = str;
        this.c = str2;
        this.d = cj5Var;
        this.e = tl5Var;
        this.f = aVar;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0061 A[Catch: Exception -> 0x006a, TRY_LEAVE, TryCatch #0 {Exception -> 0x006a, blocks: (B:3:0x0001, B:6:0x0012, B:21:0x0061, B:7:0x0018, B:9:0x001c, B:11:0x0024, B:13:0x002b, B:17:0x0044, B:19:0x0059), top: B:27:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean a(defpackage.xl5 r6, boolean r7) {
        /*
            r5 = this;
            r0 = 1
            vl5 r1 = new vl5     // Catch: java.lang.Exception -> L6a
            java.lang.String r2 = r5.b     // Catch: java.lang.Exception -> L6a
            java.lang.String r3 = r5.c     // Catch: java.lang.Exception -> L6a
            r1.<init>(r2, r3, r6)     // Catch: java.lang.Exception -> L6a
            cj5 r2 = r5.d     // Catch: java.lang.Exception -> L6a
            cj5 r3 = defpackage.cj5.ALL     // Catch: java.lang.Exception -> L6a
            java.lang.String r4 = "Report configured to be sent via DataTransport."
            if (r2 != r3) goto L18
            ah5 r7 = defpackage.ah5.a     // Catch: java.lang.Exception -> L6a
            r7.b(r4)     // Catch: java.lang.Exception -> L6a
            goto L29
        L18:
            cj5 r3 = defpackage.cj5.JAVA_ONLY     // Catch: java.lang.Exception -> L6a
            if (r2 != r3) goto L2b
            xl5$a r2 = r6.getType()     // Catch: java.lang.Exception -> L6a
            xl5$a r3 = xl5.a.JAVA     // Catch: java.lang.Exception -> L6a
            if (r2 != r3) goto L2b
            ah5 r7 = defpackage.ah5.a     // Catch: java.lang.Exception -> L6a
            r7.b(r4)     // Catch: java.lang.Exception -> L6a
        L29:
            r7 = 1
            goto L5f
        L2b:
            am5 r2 = r5.a     // Catch: java.lang.Exception -> L6a
            boolean r7 = r2.a(r1, r7)     // Catch: java.lang.Exception -> L6a
            ah5 r1 = defpackage.ah5.a     // Catch: java.lang.Exception -> L6a
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
            r2.<init>()     // Catch: java.lang.Exception -> L6a
            java.lang.String r3 = "Crashlytics Reports Endpoint upload "
            r2.append(r3)     // Catch: java.lang.Exception -> L6a
            if (r7 == 0) goto L42
            java.lang.String r3 = "complete: "
            goto L44
        L42:
            java.lang.String r3 = "FAILED: "
        L44:
            r2.append(r3)     // Catch: java.lang.Exception -> L6a
            java.lang.String r3 = r6.b()     // Catch: java.lang.Exception -> L6a
            r2.append(r3)     // Catch: java.lang.Exception -> L6a
            java.lang.String r2 = r2.toString()     // Catch: java.lang.Exception -> L6a
            r3 = 4
            boolean r1 = r1.a(r3)     // Catch: java.lang.Exception -> L6a
            if (r1 == 0) goto L5f
            java.lang.String r1 = "FirebaseCrashlytics"
            r3 = 0
            android.util.Log.i(r1, r2, r3)     // Catch: java.lang.Exception -> L6a
        L5f:
            if (r7 == 0) goto L81
            tl5 r7 = r5.e     // Catch: java.lang.Exception -> L6a
            java.util.Objects.requireNonNull(r7)     // Catch: java.lang.Exception -> L6a
            r6.remove()     // Catch: java.lang.Exception -> L6a
            goto L82
        L6a:
            r7 = move-exception
            ah5 r0 = defpackage.ah5.a
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Error occurred sending report "
            r1.append(r2)
            r1.append(r6)
            java.lang.String r6 = r1.toString()
            r0.e(r6, r7)
        L81:
            r0 = 0
        L82:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ul5.a(xl5, boolean):boolean");
    }
}
