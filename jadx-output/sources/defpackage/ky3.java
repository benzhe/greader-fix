package defpackage;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class ky3 extends iy3 {
    public static final Class<?> c = Collections.unmodifiableList(Collections.emptyList()).getClass();

    public ky3(jy3 jy3Var) {
        super(null);
    }

    @Override // defpackage.iy3
    public final void a(Object obj, long j) {
        Object objUnmodifiableList;
        List list = (List) h04.t(obj, j);
        if (list instanceof hy3) {
            objUnmodifiableList = ((hy3) list).v0();
        } else if (c.isAssignableFrom(list.getClass())) {
            return;
        } else {
            objUnmodifiableList = Collections.unmodifiableList(list);
        }
        h04.f(obj, j, objUnmodifiableList);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006d  */
    @Override // defpackage.iy3
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final <E> void b(java.lang.Object r5, java.lang.Object r6, long r7) {
        /*
            r4 = this;
            java.lang.Object r6 = defpackage.h04.t(r6, r7)
            java.util.List r6 = (java.util.List) r6
            int r0 = r6.size()
            java.lang.Object r1 = defpackage.h04.t(r5, r7)
            java.util.List r1 = (java.util.List) r1
            boolean r2 = r1.isEmpty()
            if (r2 == 0) goto L26
            boolean r1 = r1 instanceof defpackage.hy3
            if (r1 == 0) goto L20
            gy3 r1 = new gy3
            r1.<init>(r0)
            goto L59
        L20:
            java.util.ArrayList r1 = new java.util.ArrayList
            r1.<init>(r0)
            goto L59
        L26:
            java.lang.Class<?> r2 = defpackage.ky3.c
            java.lang.Class r3 = r1.getClass()
            boolean r2 = r2.isAssignableFrom(r3)
            if (r2 == 0) goto L41
            java.util.ArrayList r2 = new java.util.ArrayList
            int r3 = r1.size()
            int r3 = r3 + r0
            r2.<init>(r3)
            r2.addAll(r1)
        L3f:
            r1 = r2
            goto L59
        L41:
            boolean r2 = r1 instanceof defpackage.e04
            if (r2 == 0) goto L5c
            gy3 r2 = new gy3
            int r3 = r1.size()
            int r3 = r3 + r0
            r2.<init>(r3)
            e04 r1 = (defpackage.e04) r1
            int r0 = r2.size()
            r2.addAll(r0, r1)
            goto L3f
        L59:
            defpackage.h04.f(r5, r7, r1)
        L5c:
            int r0 = r1.size()
            int r2 = r6.size()
            if (r0 <= 0) goto L6b
            if (r2 <= 0) goto L6b
            r1.addAll(r6)
        L6b:
            if (r0 <= 0) goto L6e
            r6 = r1
        L6e:
            defpackage.h04.f(r5, r7, r6)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ky3.b(java.lang.Object, java.lang.Object, long):void");
    }
}
