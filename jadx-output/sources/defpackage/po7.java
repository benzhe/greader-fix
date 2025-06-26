package defpackage;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* loaded from: classes2.dex */
public class po7<T> extends jp7<T> implements oo7<T>, wk7 {
    public static final AtomicIntegerFieldUpdater j = AtomicIntegerFieldUpdater.newUpdater(po7.class, "_decision");
    public static final AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(po7.class, Object.class, "_state");
    private volatile int _decision;
    public volatile Object _parentHandle;
    private volatile Object _state;
    public final rk7 h;
    public final pk7<T> i;

    /* JADX WARN: Multi-variable type inference failed */
    public po7(pk7<? super T> pk7Var, int i) {
        super(i);
        this.i = pk7Var;
        this.h = pk7Var.getContext();
        this._decision = 0;
        this._state = lo7.e;
        this._parentHandle = null;
    }

    @Override // defpackage.oo7
    public void a(pl7<? super Throwable, yj7> pl7Var) {
        Object obj;
        Object vp7Var = null;
        do {
            obj = this._state;
            if (!(obj instanceof lo7)) {
                if (obj instanceof no7) {
                    l(pl7Var, obj);
                    throw null;
                }
                if (obj instanceof qo7) {
                    qo7 qo7Var = (qo7) obj;
                    Objects.requireNonNull(qo7Var);
                    if (!uo7.b.compareAndSet(qo7Var, 0, 1)) {
                        l(pl7Var, obj);
                        throw null;
                    }
                    try {
                        if (!(obj instanceof uo7)) {
                            obj = null;
                        }
                        uo7 uo7Var = (uo7) obj;
                        pl7Var.invoke(uo7Var != null ? uo7Var.a : null);
                        return;
                    } catch (Throwable th) {
                        n56.c1(this.h, new yo7("Exception in cancellation handler for " + this, th));
                        return;
                    }
                }
                return;
            }
            if (vp7Var == null) {
                vp7Var = pl7Var instanceof no7 ? (no7) pl7Var : new vp7(pl7Var);
            }
        } while (!k.compareAndSet(this, obj, vp7Var));
    }

    @Override // defpackage.jp7
    public void b(Object obj, Throwable th) {
        if (obj instanceof wo7) {
            try {
                Objects.requireNonNull((wo7) obj);
                throw null;
            } catch (Throwable th2) {
                n56.c1(this.h, new yo7("Exception in cancellation handler for " + this, th2));
            }
        }
    }

    @Override // defpackage.jp7
    public final pk7<T> c() {
        return this.i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // defpackage.jp7
    public <T> T d(Object obj) {
        if (obj instanceof vo7) {
            Objects.requireNonNull((vo7) obj);
        } else {
            if (!(obj instanceof wo7)) {
                return obj;
            }
            Objects.requireNonNull((wo7) obj);
        }
        return null;
    }

    @Override // defpackage.jp7
    public Object f() {
        return this._state;
    }

    public boolean g(Throwable th) {
        Object obj;
        boolean z;
        do {
            obj = this._state;
            if (!(obj instanceof gq7)) {
                return false;
            }
            z = obj instanceof no7;
        } while (!k.compareAndSet(this, obj, new qo7(this, th, z)));
        if (z) {
            try {
                ((no7) obj).a(th);
            } catch (Throwable th2) {
                n56.c1(this.h, new yo7("Exception in cancellation handler for " + this, th2));
            }
        }
        h();
        i(0);
        return true;
    }

    @Override // defpackage.wk7
    public wk7 getCallerFrame() {
        pk7<T> pk7Var = this.i;
        if (!(pk7Var instanceof wk7)) {
            pk7Var = null;
        }
        return (wk7) pk7Var;
    }

    @Override // defpackage.pk7
    public rk7 getContext() {
        return this.h;
    }

    @Override // defpackage.wk7
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    public final void h() {
        if (k()) {
            return;
        }
        lp7 lp7Var = (lp7) this._parentHandle;
        if (lp7Var != null) {
            lp7Var.k();
        }
        this._parentHandle = fq7.e;
    }

    public final void i(int i) {
        boolean z;
        while (true) {
            int i2 = this._decision;
            z = false;
            if (i2 != 0) {
                if (i2 != 1) {
                    throw new IllegalStateException("Already resumed".toString());
                }
            } else if (j.compareAndSet(this, 0, 2)) {
                z = true;
                break;
            }
        }
        if (z) {
            return;
        }
        n56.p0(this, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x007c, code lost:
    
        if (r2 == false) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0080, code lost:
    
        return defpackage.sk7.COROUTINE_SUSPENDED;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0081, code lost:
    
        r0 = r4._state;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0085, code lost:
    
        if ((r0 instanceof defpackage.uo7) == false) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0087, code lost:
    
        r0 = ((defpackage.uo7) r0).a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008d, code lost:
    
        if (defpackage.fp7.b == false) goto L62;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0093, code lost:
    
        throw defpackage.xq7.a(r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0096, code lost:
    
        if (r4.g != 1) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0098, code lost:
    
        r1 = (defpackage.yp7) r4.h.c(defpackage.yp7.d);
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a2, code lost:
    
        if (r1 == null) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00a8, code lost:
    
        if (r1.isActive() != false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00aa, code lost:
    
        r1 = r1.g();
        b(r0, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00b3, code lost:
    
        if (defpackage.fp7.b == false) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        throw defpackage.xq7.a(r1, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00be, code lost:
    
        return d(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:?, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
    
        throw r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object j() throws java.lang.Throwable {
        /*
            r4 = this;
            java.lang.Object r0 = r4._state
            boolean r0 = r0 instanceof defpackage.gq7
            r1 = 1
            r0 = r0 ^ r1
            int r2 = r4.g
            if (r2 == 0) goto Lb
            goto L22
        Lb:
            pk7<T> r2 = r4.i
            boolean r3 = r2 instanceof defpackage.hp7
            if (r3 != 0) goto L12
            r2 = 0
        L12:
            hp7 r2 = (defpackage.hp7) r2
            if (r2 == 0) goto L22
            java.lang.Throwable r2 = r2.g(r4)
            if (r2 == 0) goto L22
            if (r0 != 0) goto L21
            r4.g(r2)
        L21:
            r0 = 1
        L22:
            if (r0 == 0) goto L25
            goto L5e
        L25:
            java.lang.Object r0 = r4._parentHandle
            lp7 r0 = (defpackage.lp7) r0
            if (r0 == 0) goto L2c
            goto L5e
        L2c:
            pk7<T> r0 = r4.i
            rk7 r0 = r0.getContext()
            yp7$a r2 = defpackage.yp7.d
            rk7$a r0 = r0.c(r2)
            yp7 r0 = (defpackage.yp7) r0
            if (r0 == 0) goto L5e
            r0.start()
            ro7 r2 = new ro7
            r2.<init>(r0, r4)
            lp7 r0 = r0.f(r1, r1, r2)
            r4._parentHandle = r0
            java.lang.Object r2 = r4._state
            boolean r2 = r2 instanceof defpackage.gq7
            r2 = r2 ^ r1
            if (r2 == 0) goto L5e
            boolean r2 = r4.k()
            if (r2 != 0) goto L5e
            r0.k()
            fq7 r0 = defpackage.fq7.e
            r4._parentHandle = r0
        L5e:
            int r0 = r4._decision
            r2 = 0
            if (r0 == 0) goto L73
            r3 = 2
            if (r0 != r3) goto L67
            goto L7c
        L67:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "Already suspended"
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L73:
            java.util.concurrent.atomic.AtomicIntegerFieldUpdater r0 = defpackage.po7.j
            boolean r0 = r0.compareAndSet(r4, r2, r1)
            if (r0 == 0) goto L5e
            r2 = 1
        L7c:
            if (r2 == 0) goto L81
            sk7 r0 = defpackage.sk7.COROUTINE_SUSPENDED
            return r0
        L81:
            java.lang.Object r0 = r4._state
            boolean r2 = r0 instanceof defpackage.uo7
            if (r2 == 0) goto L94
            uo7 r0 = (defpackage.uo7) r0
            java.lang.Throwable r0 = r0.a
            boolean r1 = defpackage.fp7.b
            if (r1 == 0) goto L93
            java.lang.Throwable r0 = defpackage.xq7.a(r0, r4)
        L93:
            throw r0
        L94:
            int r2 = r4.g
            if (r2 != r1) goto Lba
            rk7 r1 = r4.h
            yp7$a r2 = defpackage.yp7.d
            rk7$a r1 = r1.c(r2)
            yp7 r1 = (defpackage.yp7) r1
            if (r1 == 0) goto Lba
            boolean r2 = r1.isActive()
            if (r2 != 0) goto Lba
            java.util.concurrent.CancellationException r1 = r1.g()
            r4.b(r0, r1)
            boolean r0 = defpackage.fp7.b
            if (r0 == 0) goto Lb9
            java.lang.Throwable r1 = defpackage.xq7.a(r1, r4)
        Lb9:
            throw r1
        Lba:
            java.lang.Object r0 = r4.d(r0)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.po7.j():java.lang.Object");
    }

    public final boolean k() {
        pk7<T> pk7Var = this.i;
        return (pk7Var instanceof hp7) && ((hp7) pk7Var).i(this);
    }

    public final void l(pl7<? super Throwable, yj7> pl7Var, Object obj) {
        throw new IllegalStateException(("It's prohibited to register multiple handlers, tried to register " + pl7Var + ", already has " + obj).toString());
    }

    @Override // defpackage.pk7
    public void resumeWith(Object obj) {
        Object obj2;
        Throwable thA = sj7.a(obj);
        if (thA != null) {
            if (fp7.b) {
                thA = xq7.a(thA, this);
            }
            obj = new uo7(thA, false, 2);
        }
        int i = this.g;
        do {
            obj2 = this._state;
            if (!(obj2 instanceof gq7)) {
                if (obj2 instanceof qo7) {
                    qo7 qo7Var = (qo7) obj2;
                    Objects.requireNonNull(qo7Var);
                    if (qo7.c.compareAndSet(qo7Var, 0, 1)) {
                        return;
                    }
                }
                throw new IllegalStateException(("Already resumed, but proposed with update " + obj).toString());
            }
        } while (!k.compareAndSet(this, obj2, obj));
        h();
        i(i);
    }

    public String toString() {
        return "CancellableContinuation(" + n56.s2(this.i) + "){" + this._state + "}@" + n56.L0(this);
    }
}
