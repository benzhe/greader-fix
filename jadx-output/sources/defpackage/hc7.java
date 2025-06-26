package defpackage;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class hc7 implements ic7, xc7 {
    public xi7<ic7> e;
    public volatile boolean f;

    @Override // defpackage.xc7
    public boolean a(ic7 ic7Var) {
        if (!c(ic7Var)) {
            return false;
        }
        ((bi7) ic7Var).k();
        return true;
    }

    @Override // defpackage.xc7
    public boolean b(ic7 ic7Var) {
        if (!this.f) {
            synchronized (this) {
                if (!this.f) {
                    xi7<ic7> xi7Var = this.e;
                    if (xi7Var == null) {
                        xi7Var = new xi7<>();
                        this.e = xi7Var;
                    }
                    xi7Var.a(ic7Var);
                    return true;
                }
            }
        }
        ic7Var.k();
        return false;
    }

    /* JADX WARN: Removed duplicated region for block: B:26:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0049 A[Catch: all -> 0x004d, DONT_GENERATE, TryCatch #0 {, blocks: (B:6:0x000c, B:8:0x0010, B:10:0x0012, B:12:0x0016, B:27:0x0049, B:15:0x002a, B:17:0x0030, B:19:0x0035, B:22:0x003c, B:24:0x0042, B:29:0x004b), top: B:34:0x000c }] */
    @Override // defpackage.xc7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean c(defpackage.ic7 r8) {
        /*
            r7 = this;
            java.lang.String r0 = "disposables is null"
            java.util.Objects.requireNonNull(r8, r0)
            boolean r0 = r7.f
            r1 = 0
            if (r0 == 0) goto Lb
            return r1
        Lb:
            monitor-enter(r7)
            boolean r0 = r7.f     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L12
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4d
            return r1
        L12:
            xi7<ic7> r0 = r7.e     // Catch: java.lang.Throwable -> L4d
            if (r0 == 0) goto L4b
            T[] r2 = r0.d     // Catch: java.lang.Throwable -> L4d
            int r3 = r0.a     // Catch: java.lang.Throwable -> L4d
            int r4 = r8.hashCode()     // Catch: java.lang.Throwable -> L4d
            int r4 = defpackage.xi7.b(r4)     // Catch: java.lang.Throwable -> L4d
            r4 = r4 & r3
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L4d
            r6 = 1
            if (r5 != 0) goto L2a
        L28:
            r8 = 0
            goto L46
        L2a:
            boolean r5 = r5.equals(r8)     // Catch: java.lang.Throwable -> L4d
            if (r5 == 0) goto L35
            r0.c(r4, r2, r3)     // Catch: java.lang.Throwable -> L4d
        L33:
            r8 = 1
            goto L46
        L35:
            int r4 = r4 + r6
            r4 = r4 & r3
            r5 = r2[r4]     // Catch: java.lang.Throwable -> L4d
            if (r5 != 0) goto L3c
            goto L28
        L3c:
            boolean r5 = r5.equals(r8)     // Catch: java.lang.Throwable -> L4d
            if (r5 == 0) goto L35
            r0.c(r4, r2, r3)     // Catch: java.lang.Throwable -> L4d
            goto L33
        L46:
            if (r8 != 0) goto L49
            goto L4b
        L49:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4d
            return r6
        L4b:
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4d
            return r1
        L4d:
            r8 = move-exception
            monitor-exit(r7)     // Catch: java.lang.Throwable -> L4d
            throw r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hc7.c(ic7):boolean");
    }

    public void d() {
        if (this.f) {
            return;
        }
        synchronized (this) {
            if (this.f) {
                return;
            }
            xi7<ic7> xi7Var = this.e;
            this.e = null;
            e(xi7Var);
        }
    }

    public void e(xi7<ic7> xi7Var) {
        if (xi7Var == null) {
            return;
        }
        ArrayList arrayList = null;
        for (ic7 ic7Var : xi7Var.d) {
            if (ic7Var instanceof ic7) {
                try {
                    ic7Var.k();
                } catch (Throwable th) {
                    n56.r2(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
        }
        if (arrayList != null) {
            if (arrayList.size() != 1) {
                throw new kc7(arrayList);
            }
            throw vi7.d((Throwable) arrayList.get(0));
        }
    }

    @Override // defpackage.ic7
    public void k() {
        if (this.f) {
            return;
        }
        synchronized (this) {
            if (this.f) {
                return;
            }
            this.f = true;
            xi7<ic7> xi7Var = this.e;
            this.e = null;
            e(xi7Var);
        }
    }
}
