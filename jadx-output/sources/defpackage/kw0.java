package defpackage;

import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
public final class kw0 extends zv0 implements mv0 {
    public cv0 h;
    public String i;
    public boolean j;
    public Exception k;
    public boolean l;

    public kw0(iu0 iu0Var, fu0 fu0Var) {
        super(iu0Var);
        cv0 cv0Var = new cv0(iu0Var.getContext(), fu0Var, this.g.get());
        this.h = cv0Var;
        cv0Var.o = this;
    }

    public static String t(String str, Exception exc) {
        String canonicalName = exc.getClass().getCanonicalName();
        String message = exc.getMessage();
        StringBuilder sbY = jo.y(jo.x(message, jo.x(canonicalName, jo.x(str, 2))), str, "/", canonicalName, ":");
        sbY.append(message);
        return sbY.toString();
    }

    @Override // defpackage.zv0
    public final void a() {
        u(null);
    }

    @Override // defpackage.mv0
    public final void b(final boolean z, final long j) {
        final iu0 iu0Var = this.g.get();
        if (iu0Var != null) {
            ms0.e.execute(new Runnable(iu0Var, z, j) { // from class: nw0
                public final iu0 e;
                public final boolean f;
                public final long g;

                {
                    this.e = iu0Var;
                    this.f = z;
                    this.g = j;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.e.R(this.f, this.g);
                }
            });
        }
    }

    @Override // defpackage.mv0
    public final void c(String str, Exception exc) {
        is0.zzd("Precache exception", exc);
    }

    @Override // defpackage.mv0
    public final void d(String str, Exception exc) {
        String str2 = (String) os3.j.f.a(y40.i);
        if (str2 != null) {
            List listAsList = Arrays.asList(str2.split(","));
            if (listAsList.contains("all") || listAsList.contains(exc.getClass().getCanonicalName())) {
                return;
            }
        }
        this.k = exc;
        is0.zzd("Precache error", exc);
        u(str);
    }

    @Override // defpackage.mv0
    public final void g(int i, int i2) {
    }

    @Override // defpackage.mv0
    public final void i(int i) {
    }

    @Override // defpackage.zv0
    public final void m(int i) {
        dv0 dv0Var = this.h.f;
        synchronized (dv0Var) {
            dv0Var.b = i * 1000;
        }
    }

    @Override // defpackage.zv0
    public final void n(int i) {
        dv0 dv0Var = this.h.f;
        synchronized (dv0Var) {
            dv0Var.c = i * 1000;
        }
    }

    @Override // defpackage.zv0
    public final void o(int i) {
        dv0 dv0Var = this.h.f;
        synchronized (dv0Var) {
            dv0Var.d = i * 1000;
        }
    }

    @Override // defpackage.zv0
    public final void p(int i) {
        dv0 dv0Var = this.h.f;
        synchronized (dv0Var) {
            dv0Var.e = i * 1000;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x00a8, code lost:
    
        r0 = r1.k;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00aa, code lost:
    
        if (r0 == null) goto L26;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x00ae, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00b8, code lost:
    
        throw new java.io.IOException("Abort requested before buffering finished. ");
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x00b9, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00ba, code lost:
    
        r18 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00bc, code lost:
    
        r33 = r14;
        r4 = r15;
        r32 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x016e, code lost:
    
        defpackage.zr0.b.post(new defpackage.cw0(r45, r46, r33, r25));
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0181, code lost:
    
        r4 = r45;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v15 */
    /* JADX WARN: Type inference failed for: r2v16, types: [long] */
    /* JADX WARN: Type inference failed for: r2v29 */
    /* JADX WARN: Type inference failed for: r2v33 */
    /* JADX WARN: Type inference failed for: r2v44 */
    /* JADX WARN: Type inference failed for: r2v45 */
    /* JADX WARN: Type inference failed for: r4v15, types: [int] */
    @Override // defpackage.zv0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean q(java.lang.String r46, java.lang.String[] r47) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 635
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.kw0.q(java.lang.String, java.lang.String[]):boolean");
    }

    @Override // defpackage.zv0
    public final boolean r(String str) {
        return q(str, new String[]{str});
    }

    @Override // defpackage.zv0, defpackage.sy
    public final void release() {
        cv0 cv0Var = this.h;
        if (cv0Var != null) {
            cv0Var.o = null;
            cv0Var.l();
        }
    }

    @Override // defpackage.zv0
    public final String s(String str) {
        String strValueOf = String.valueOf(zr0.l(str));
        return strValueOf.length() != 0 ? "cache:".concat(strValueOf) : new String("cache:");
    }

    public final void u(String str) {
        synchronized (this) {
            this.j = true;
            notify();
            release();
        }
        String str2 = this.i;
        if (str2 != null) {
            String strS = s(str2);
            Exception exc = this.k;
            if (exc != null) {
                l(this.i, strS, "badUrl", t(str, exc));
            } else {
                l(this.i, strS, "externalAbort", "Programmatic precache abort.");
            }
        }
    }
}
