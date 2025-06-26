package defpackage;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class rk implements ik, dl, fk {
    public static final String j = vj.e("GreedyScheduler");
    public nk e;
    public el f;
    public boolean h;
    public List<dm> g = new ArrayList();
    public final Object i = new Object();

    public rk(Context context, xm xmVar, nk nkVar) {
        this.e = nkVar;
        this.f = new el(context, xmVar, this);
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x0054  */
    @Override // defpackage.ik
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(defpackage.dm... r13) {
        /*
            r12 = this;
            boolean r0 = r12.h
            r1 = 1
            if (r0 != 0) goto Le
            nk r0 = r12.e
            hk r0 = r0.f
            r0.a(r12)
            r12.h = r1
        Le:
            java.util.ArrayList r0 = new java.util.ArrayList
            r0.<init>()
            java.util.ArrayList r2 = new java.util.ArrayList
            r2.<init>()
            int r3 = r13.length
            r4 = 0
            r5 = 0
        L1b:
            if (r5 >= r3) goto L8a
            r6 = r13[r5]
            ak r7 = r6.b
            ak r8 = defpackage.ak.ENQUEUED
            if (r7 != r8) goto L87
            boolean r7 = r6.d()
            if (r7 != 0) goto L87
            long r7 = r6.g
            r9 = 0
            int r11 = (r7 > r9 ? 1 : (r7 == r9 ? 0 : -1))
            if (r11 != 0) goto L87
            boolean r7 = r6.c()
            if (r7 != 0) goto L87
            boolean r7 = r6.b()
            if (r7 == 0) goto L5d
            int r7 = android.os.Build.VERSION.SDK_INT
            r8 = 24
            if (r7 < r8) goto L54
            qj r7 = r6.j
            rj r7 = r7.h
            int r7 = r7.a()
            if (r7 <= 0) goto L51
            r7 = 1
            goto L52
        L51:
            r7 = 0
        L52:
            if (r7 != 0) goto L87
        L54:
            r0.add(r6)
            java.lang.String r6 = r6.a
            r2.add(r6)
            goto L87
        L5d:
            vj r7 = defpackage.vj.c()
            java.lang.String r8 = defpackage.rk.j
            java.lang.String r9 = "Starting work for %s"
            java.lang.Object[] r10 = new java.lang.Object[r1]
            java.lang.String r11 = r6.a
            r10[r4] = r11
            java.lang.String r9 = java.lang.String.format(r9, r10)
            java.lang.Throwable[] r10 = new java.lang.Throwable[r4]
            r7.a(r8, r9, r10)
            nk r7 = r12.e
            java.lang.String r6 = r6.a
            xm r8 = r7.d
            rm r9 = new rm
            r10 = 0
            r9.<init>(r7, r6, r10)
            ym r8 = (defpackage.ym) r8
            java.util.concurrent.Executor r6 = r8.a
            r6.execute(r9)
        L87:
            int r5 = r5 + 1
            goto L1b
        L8a:
            java.lang.Object r13 = r12.i
            monitor-enter(r13)
            boolean r3 = r0.isEmpty()     // Catch: java.lang.Throwable -> Lbc
            if (r3 != 0) goto Lba
            vj r3 = defpackage.vj.c()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r5 = defpackage.rk.j     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r6 = "Starting tracking for [%s]"
            java.lang.Object[] r1 = new java.lang.Object[r1]     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r7 = ","
            java.lang.String r2 = android.text.TextUtils.join(r7, r2)     // Catch: java.lang.Throwable -> Lbc
            r1[r4] = r2     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r1 = java.lang.String.format(r6, r1)     // Catch: java.lang.Throwable -> Lbc
            java.lang.Throwable[] r2 = new java.lang.Throwable[r4]     // Catch: java.lang.Throwable -> Lbc
            r3.a(r5, r1, r2)     // Catch: java.lang.Throwable -> Lbc
            java.util.List<dm> r1 = r12.g     // Catch: java.lang.Throwable -> Lbc
            r1.addAll(r0)     // Catch: java.lang.Throwable -> Lbc
            el r0 = r12.f     // Catch: java.lang.Throwable -> Lbc
            java.util.List<dm> r1 = r12.g     // Catch: java.lang.Throwable -> Lbc
            r0.b(r1)     // Catch: java.lang.Throwable -> Lbc
        Lba:
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            return
        Lbc:
            r0 = move-exception
            monitor-exit(r13)     // Catch: java.lang.Throwable -> Lbc
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.rk.a(dm[]):void");
    }

    @Override // defpackage.dl
    public void b(List<String> list) {
        for (String str : list) {
            vj.c().a(j, String.format("Constraints not met: Cancelling work ID %s", str), new Throwable[0]);
            this.e.e(str);
        }
    }

    @Override // defpackage.fk
    public void c(String str, boolean z) {
        synchronized (this.i) {
            int size = this.g.size();
            int i = 0;
            while (true) {
                if (i >= size) {
                    break;
                }
                if (this.g.get(i).a.equals(str)) {
                    vj.c().a(j, String.format("Stopping tracking for %s", str), new Throwable[0]);
                    this.g.remove(i);
                    this.f.b(this.g);
                    break;
                }
                i++;
            }
        }
    }

    @Override // defpackage.ik
    public void d(String str) {
        if (!this.h) {
            this.e.f.a(this);
            this.h = true;
        }
        vj.c().a(j, String.format("Cancelling work ID %s", str), new Throwable[0]);
        nk nkVar = this.e;
        ((ym) nkVar.d).a.execute(new sm(nkVar, str));
    }

    @Override // defpackage.dl
    public void e(List<String> list) {
        for (String str : list) {
            vj.c().a(j, String.format("Constraints met: Scheduling work ID %s", str), new Throwable[0]);
            nk nkVar = this.e;
            ((ym) nkVar.d).a.execute(new rm(nkVar, str, null));
        }
    }
}
