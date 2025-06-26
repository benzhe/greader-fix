package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class sq7 {
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(sq7.class, Object.class, "_next");
    public static final AtomicReferenceFieldUpdater f = AtomicReferenceFieldUpdater.newUpdater(sq7.class, Object.class, "_prev");
    public static final AtomicReferenceFieldUpdater g = AtomicReferenceFieldUpdater.newUpdater(sq7.class, Object.class, "_removedRef");
    public volatile Object _next = this;
    public volatile Object _prev = this;
    private volatile Object _removedRef = null;

    public static abstract class a extends nq7<sq7> {
        public sq7 b;
        public final sq7 c;

        public a(sq7 sq7Var) {
            this.c = sq7Var;
        }

        @Override // defpackage.nq7
        public void b(sq7 sq7Var, Object obj) {
            sq7 sq7Var2 = sq7Var;
            boolean z = obj == null;
            sq7 sq7Var3 = z ? this.c : this.b;
            if (sq7Var3 != null && sq7.e.compareAndSet(sq7Var2, this, sq7Var3) && z) {
                sq7 sq7Var4 = this.c;
                sq7 sq7Var5 = this.b;
                im7.c(sq7Var5);
                sq7Var4.d(sq7Var5);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003c, code lost:
    
        if (defpackage.sq7.e.compareAndSet(r2, r1, ((defpackage.wq7) r3).a) != false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.sq7 c(defpackage.vq7 r7) {
        /*
            r6 = this;
        L0:
            java.lang.Object r7 = r6._prev
            sq7 r7 = (defpackage.sq7) r7
            r0 = 0
            r1 = r7
        L6:
            r2 = r0
        L7:
            java.lang.Object r3 = r1._next
            if (r3 != r6) goto L18
            if (r7 != r1) goto Le
            return r1
        Le:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r0 = defpackage.sq7.f
            boolean r7 = r0.compareAndSet(r6, r7, r1)
            if (r7 != 0) goto L17
            goto L0
        L17:
            return r1
        L18:
            boolean r4 = r6.g()
            if (r4 == 0) goto L1f
            return r0
        L1f:
            if (r3 != 0) goto L22
            return r1
        L22:
            boolean r4 = r3 instanceof defpackage.vq7
            if (r4 == 0) goto L2c
            vq7 r3 = (defpackage.vq7) r3
            r3.a(r1)
            goto L0
        L2c:
            boolean r4 = r3 instanceof defpackage.wq7
            if (r4 == 0) goto L46
            if (r2 == 0) goto L41
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r4 = defpackage.sq7.e
            wq7 r3 = (defpackage.wq7) r3
            sq7 r3 = r3.a
            boolean r1 = r4.compareAndSet(r2, r1, r3)
            if (r1 != 0) goto L3f
            goto L0
        L3f:
            r1 = r2
            goto L6
        L41:
            java.lang.Object r1 = r1._prev
            sq7 r1 = (defpackage.sq7) r1
            goto L7
        L46:
        */
        //  java.lang.String r2 = "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */"
        /*
            java.util.Objects.requireNonNull(r3, r2)
            r2 = r3
            sq7 r2 = (defpackage.sq7) r2
            r5 = r2
            r2 = r1
            r1 = r5
            goto L7
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.sq7.c(vq7):sq7");
    }

    public final void d(sq7 sq7Var) {
        sq7 sq7Var2;
        do {
            sq7Var2 = (sq7) sq7Var._prev;
            if (e() != sq7Var) {
                return;
            }
        } while (!f.compareAndSet(sq7Var, sq7Var2, this));
        if (g()) {
            sq7Var.c(null);
        }
    }

    public final Object e() {
        while (true) {
            Object obj = this._next;
            if (!(obj instanceof vq7)) {
                return obj;
            }
            ((vq7) obj).a(this);
        }
    }

    public final sq7 f() {
        sq7 sq7Var;
        Object objE = e();
        wq7 wq7Var = (wq7) (!(objE instanceof wq7) ? null : objE);
        if (wq7Var != null && (sq7Var = wq7Var.a) != null) {
            return sq7Var;
        }
        Objects.requireNonNull(objE, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
        return (sq7) objE;
    }

    public boolean g() {
        return e() instanceof wq7;
    }

    public boolean h() {
        sq7 sq7Var;
        while (true) {
            Object objE = e();
            if (objE instanceof wq7) {
                sq7Var = ((wq7) objE).a;
                break;
            }
            if (objE == this) {
                sq7Var = (sq7) objE;
                break;
            }
            Objects.requireNonNull(objE, "null cannot be cast to non-null type kotlinx.coroutines.internal.Node /* = kotlinx.coroutines.internal.LockFreeLinkedListNode */");
            sq7 sq7Var2 = (sq7) objE;
            wq7 wq7Var = (wq7) sq7Var2._removedRef;
            if (wq7Var == null) {
                wq7Var = new wq7(sq7Var2);
                g.lazySet(sq7Var2, wq7Var);
            }
            if (e.compareAndSet(this, objE, wq7Var)) {
                sq7Var = null;
                sq7Var2.c(null);
                break;
            }
        }
        return sq7Var == null;
    }

    public String toString() {
        return getClass().getSimpleName() + '@' + Integer.toHexString(System.identityHashCode(this));
    }
}
