package defpackage;

import defpackage.rk7;
import defpackage.sq7;
import java.util.Objects;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class cq7 implements yp7 {
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(cq7.class, Object.class, "_state");
    private volatile Object _state;

    public static final class a implements up7 {
        @Override // defpackage.up7
        public eq7 a() {
            return null;
        }

        @Override // defpackage.up7
        public boolean isActive() {
            return true;
        }

        public String toString() {
            return "Finishing[cancelling=false, completing=false, rootCause=null, exceptions=null, list=null]";
        }
    }

    public static final class b extends sq7.a {
        public final /* synthetic */ cq7 d;
        public final /* synthetic */ Object e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(sq7 sq7Var, sq7 sq7Var2, cq7 cq7Var, Object obj) {
            super(sq7Var2);
            this.d = cq7Var;
            this.e = obj;
        }

        @Override // defpackage.nq7
        public Object c(sq7 sq7Var) {
            if (this.d.e() == this.e) {
                return null;
            }
            return rq7.a;
        }
    }

    @Override // defpackage.rk7
    public <E extends rk7.a> E c(rk7.b<E> bVar) {
        return (E) n56.A0(this, bVar);
    }

    public final boolean d(Object obj, eq7 eq7Var, bq7<?> bq7Var) {
        char c;
        b bVar = new b(bq7Var, bq7Var, this, obj);
        do {
            sq7 sq7VarC = eq7Var.c(null);
            if (sq7VarC == null) {
                Object obj2 = eq7Var._prev;
                while (true) {
                    sq7VarC = (sq7) obj2;
                    if (!sq7VarC.g()) {
                        break;
                    }
                    obj2 = sq7VarC._prev;
                }
            }
            sq7.f.lazySet(bq7Var, sq7VarC);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = sq7.e;
            atomicReferenceFieldUpdater.lazySet(bq7Var, eq7Var);
            bVar.b = eq7Var;
            c = !atomicReferenceFieldUpdater.compareAndSet(sq7VarC, eq7Var, bVar) ? (char) 0 : bVar.a(sq7VarC) == null ? (char) 1 : (char) 2;
            if (c == 1) {
                return true;
            }
        } while (c != 2);
        return false;
    }

    public final Object e() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof vq7)) {
                return obj;
            }
            ((vq7) obj).a(this);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v3, types: [tp7] */
    @Override // defpackage.yp7
    public final lp7 f(boolean z, boolean z2, pl7<? super Throwable, yj7> pl7Var) {
        bq7<?> bq7VarH = null;
        while (true) {
            Object objE = e();
            if (objE instanceof mp7) {
                mp7 mp7Var = (mp7) objE;
                if (mp7Var.e) {
                    if (bq7VarH == null) {
                        bq7VarH = h(pl7Var, z);
                    }
                    if (e.compareAndSet(this, objE, bq7VarH)) {
                        return bq7VarH;
                    }
                } else {
                    eq7 eq7Var = new eq7();
                    if (!mp7Var.e) {
                        eq7Var = new tp7(eq7Var);
                    }
                    e.compareAndSet(this, mp7Var, eq7Var);
                }
            } else {
                if (!(objE instanceof up7)) {
                    if (z2) {
                        if (!(objE instanceof uo7)) {
                            objE = null;
                        }
                        uo7 uo7Var = (uo7) objE;
                        pl7Var.invoke(uo7Var != null ? uo7Var.a : null);
                    }
                    return fq7.e;
                }
                eq7 eq7VarA = ((up7) objE).a();
                if (eq7VarA == null) {
                    Objects.requireNonNull(objE, "null cannot be cast to non-null type kotlinx.coroutines.JobNode<*>");
                    bq7 bq7Var = (bq7) objE;
                    eq7 eq7Var2 = new eq7();
                    sq7.f.lazySet(eq7Var2, bq7Var);
                    sq7.e.lazySet(eq7Var2, bq7Var);
                    while (true) {
                        if (bq7Var.e() != bq7Var) {
                            break;
                        }
                        if (sq7.e.compareAndSet(bq7Var, bq7Var, eq7Var2)) {
                            eq7Var2.d(bq7Var);
                            break;
                        }
                    }
                    e.compareAndSet(this, bq7Var, bq7Var.f());
                } else if (z && (objE instanceof a)) {
                    synchronized (objE) {
                        if (bq7VarH == null) {
                            bq7VarH = h(pl7Var, z);
                        }
                        if (d(objE, eq7VarA, bq7VarH)) {
                            return bq7VarH;
                        }
                    }
                } else {
                    if (bq7VarH == null) {
                        bq7VarH = h(pl7Var, z);
                    }
                    if (d(objE, eq7VarA, bq7VarH)) {
                        return bq7VarH;
                    }
                }
            }
        }
    }

    @Override // defpackage.yp7
    public final CancellationException g() {
        Object objE = e();
        if (objE instanceof a) {
            Objects.requireNonNull((a) objE);
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (objE instanceof up7) {
            throw new IllegalStateException(("Job is still new or active: " + this).toString());
        }
        if (objE instanceof uo7) {
            return i(((uo7) objE).a, null);
        }
        return new zp7(cq7.class.getSimpleName() + " has completed normally", null, this);
    }

    @Override // rk7.a
    public final rk7.b<?> getKey() {
        return yp7.d;
    }

    public final bq7<?> h(pl7<? super Throwable, yj7> pl7Var, boolean z) {
        if (z) {
            aq7 aq7Var = (aq7) (pl7Var instanceof aq7 ? pl7Var : null);
            if (aq7Var == null) {
                return new wp7(this, pl7Var);
            }
            boolean z2 = fp7.a;
            return aq7Var;
        }
        bq7<?> bq7Var = (bq7) (pl7Var instanceof bq7 ? pl7Var : null);
        if (bq7Var == null) {
            return new xp7(this, pl7Var);
        }
        boolean z3 = fp7.a;
        return bq7Var;
    }

    public final CancellationException i(Throwable th, String str) {
        CancellationException zp7Var = (CancellationException) (!(th instanceof CancellationException) ? null : th);
        if (zp7Var == null) {
            if (str == null) {
                str = "Job was cancelled";
            }
            zp7Var = new zp7(str, th, this);
        }
        return zp7Var;
    }

    @Override // defpackage.yp7
    public boolean isActive() {
        Object objE = e();
        return (objE instanceof up7) && ((up7) objE).isActive();
    }

    @Override // defpackage.rk7
    public <R> R m(R r, tl7<? super R, ? super rk7.a, ? extends R> tl7Var) {
        return (R) n56.x0(this, r, tl7Var);
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0032  */
    @Override // defpackage.yp7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean start() {
        /*
            r6 = this;
        L0:
            java.lang.Object r0 = r6.e()
            boolean r1 = r0 instanceof defpackage.mp7
            r2 = -1
            r3 = 0
            r4 = 1
            if (r1 == 0) goto L1e
            r1 = r0
            mp7 r1 = (defpackage.mp7) r1
            boolean r1 = r1.e
            if (r1 == 0) goto L13
            goto L32
        L13:
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.cq7.e
            mp7 r5 = defpackage.dq7.a
            boolean r0 = r1.compareAndSet(r6, r0, r5)
            if (r0 != 0) goto L30
            goto L33
        L1e:
            boolean r1 = r0 instanceof defpackage.tp7
            if (r1 == 0) goto L32
            java.util.concurrent.atomic.AtomicReferenceFieldUpdater r1 = defpackage.cq7.e
            r5 = r0
            tp7 r5 = (defpackage.tp7) r5
            eq7 r5 = r5.e
            boolean r0 = r1.compareAndSet(r6, r0, r5)
            if (r0 != 0) goto L30
            goto L33
        L30:
            r2 = 1
            goto L33
        L32:
            r2 = 0
        L33:
            if (r2 == 0) goto L39
            if (r2 == r4) goto L38
            goto L0
        L38:
            return r4
        L39:
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.cq7.start():boolean");
    }

    public String toString() {
        String str;
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder();
        sb2.append(cq7.class.getSimpleName());
        sb2.append('{');
        Object objE = e();
        if (!(objE instanceof a)) {
            if (!(objE instanceof up7)) {
                str = objE instanceof uo7 ? "Cancelled" : "Completed";
            } else if (!((up7) objE).isActive()) {
                str = "New";
            }
            sb2.append(str);
            sb2.append('}');
            sb.append(sb2.toString());
            sb.append('@');
            sb.append(n56.L0(this));
            return sb.toString();
        }
        Objects.requireNonNull((a) objE);
        str = "Active";
        sb2.append(str);
        sb2.append('}');
        sb.append(sb2.toString());
        sb.append('@');
        sb.append(n56.L0(this));
        return sb.toString();
    }
}
