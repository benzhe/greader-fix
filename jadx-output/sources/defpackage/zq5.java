package defpackage;

import defpackage.bq5;
import defpackage.dq5;
import defpackage.ln5;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes.dex */
public class zq5 {
    public final yq5 a;
    public final dq5.a b;
    public final vo5<mr5> c;
    public boolean d = false;
    public wq5 e = wq5.UNKNOWN;
    public mr5 f;

    public zq5(yq5 yq5Var, dq5.a aVar, vo5<mr5> vo5Var) {
        this.a = yq5Var;
        this.c = vo5Var;
        this.b = aVar;
    }

    public boolean a(wq5 wq5Var) {
        this.e = wq5Var;
        mr5 mr5Var = this.f;
        if (mr5Var == null || this.d || !d(mr5Var, wq5Var)) {
            return false;
        }
        c(this.f);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x009f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean b(defpackage.mr5 r13) {
        /*
            r12 = this;
            java.util.List<bq5> r0 = r13.d
            boolean r0 = r0.isEmpty()
            r1 = 1
            r2 = 0
            if (r0 == 0) goto L11
            boolean r0 = r13.g
            if (r0 == 0) goto Lf
            goto L11
        Lf:
            r0 = 0
            goto L12
        L11:
            r0 = 1
        L12:
            java.lang.Object[] r3 = new java.lang.Object[r2]
            java.lang.String r4 = "We got a new snapshot with no changes?"
            defpackage.bx5.c(r0, r4, r3)
            dq5$a r0 = r12.b
            boolean r0 = r0.a
            if (r0 != 0) goto L54
            java.util.ArrayList r7 = new java.util.ArrayList
            r7.<init>()
            java.util.List<bq5> r0 = r13.d
            java.util.Iterator r0 = r0.iterator()
        L2a:
            boolean r3 = r0.hasNext()
            if (r3 == 0) goto L40
            java.lang.Object r3 = r0.next()
            bq5 r3 = (defpackage.bq5) r3
            bq5$a r4 = r3.a
            bq5$a r5 = bq5.a.METADATA
            if (r4 == r5) goto L2a
            r7.add(r3)
            goto L2a
        L40:
            mr5 r0 = new mr5
            yq5 r4 = r13.a
            du5 r5 = r13.b
            du5 r6 = r13.c
            boolean r8 = r13.e
            ln5<bu5> r9 = r13.f
            boolean r10 = r13.g
            r11 = 1
            r3 = r0
            r3.<init>(r4, r5, r6, r7, r8, r9, r10, r11)
            r13 = r0
        L54:
            boolean r0 = r12.d
            if (r0 != 0) goto L64
            wq5 r0 = r12.e
            boolean r0 = r12.d(r13, r0)
            if (r0 == 0) goto L9f
            r12.c(r13)
            goto La0
        L64:
            java.util.List<bq5> r0 = r13.d
            boolean r0 = r0.isEmpty()
            if (r0 != 0) goto L6e
            r0 = 1
            goto L96
        L6e:
            mr5 r0 = r12.f
            if (r0 == 0) goto L88
            ln5<bu5> r0 = r0.f
            jn5<T, java.lang.Void> r0 = r0.e
            boolean r0 = r0.isEmpty()
            r0 = r0 ^ r1
            ln5<bu5> r3 = r13.f
            jn5<T, java.lang.Void> r3 = r3.e
            boolean r3 = r3.isEmpty()
            r3 = r3 ^ r1
            if (r0 == r3) goto L88
            r0 = 1
            goto L89
        L88:
            r0 = 0
        L89:
            boolean r3 = r13.g
            if (r3 != 0) goto L92
            if (r0 == 0) goto L90
            goto L92
        L90:
            r0 = 0
            goto L96
        L92:
            dq5$a r0 = r12.b
            boolean r0 = r0.b
        L96:
            if (r0 == 0) goto L9f
            vo5<mr5> r0 = r12.c
            r2 = 0
            r0.a(r13, r2)
            goto La0
        L9f:
            r1 = 0
        La0:
            r12.f = r13
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zq5.b(mr5):boolean");
    }

    public final void c(mr5 mr5Var) {
        bx5.c(!this.d, "Trying to raise initial event for second time", new Object[0]);
        yq5 yq5Var = mr5Var.a;
        du5 du5Var = mr5Var.b;
        ln5<bu5> ln5Var = mr5Var.f;
        boolean z = mr5Var.e;
        boolean z2 = mr5Var.h;
        ArrayList arrayList = new ArrayList();
        Iterator<yt5> it = du5Var.iterator();
        while (true) {
            ln5.a aVar = (ln5.a) it;
            if (!aVar.hasNext()) {
                mr5 mr5Var2 = new mr5(yq5Var, du5Var, new du5(zt5.a, new ln5(Collections.emptyList(), new cu5(yq5Var.b()))), arrayList, z, ln5Var, true, z2);
                this.d = true;
                this.c.a(mr5Var2, null);
                return;
            }
            arrayList.add(new bq5(bq5.a.ADDED, (yt5) aVar.next()));
        }
    }

    public final boolean d(mr5 mr5Var, wq5 wq5Var) {
        bx5.c(!this.d, "Determining whether to raise first event but already had first event.", new Object[0]);
        if (!mr5Var.e) {
            return true;
        }
        wq5 wq5Var2 = wq5.OFFLINE;
        boolean z = !wq5Var.equals(wq5Var2);
        if (!this.b.c || !z) {
            return !mr5Var.b.e.isEmpty() || wq5Var.equals(wq5Var2);
        }
        bx5.c(mr5Var.e, "Waiting for sync, but snapshot is not from cache", new Object[0]);
        return false;
    }
}
