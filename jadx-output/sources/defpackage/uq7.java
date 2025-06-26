package defpackage;

import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceArray;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import org.apache.commons.io.FileUtils;

/* loaded from: classes2.dex */
public final class uq7<E> {
    private volatile Object _next = null;
    private volatile long _state = 0;
    public final int a;
    public AtomicReferenceArray b;
    public final int c;
    public final boolean d;
    public static final a h = new a(null);
    public static final yq7 g = new yq7("REMOVE_FROZEN");
    public static final AtomicReferenceFieldUpdater e = AtomicReferenceFieldUpdater.newUpdater(uq7.class, Object.class, "_next");
    public static final AtomicLongFieldUpdater f = AtomicLongFieldUpdater.newUpdater(uq7.class, "_state");

    public static final class a {
        public a(gm7 gm7Var) {
        }
    }

    public static final class b {
        public final int a;

        public b(int i) {
            this.a = i;
        }
    }

    public uq7(int i, boolean z) {
        this.c = i;
        this.d = z;
        int i2 = i - 1;
        this.a = i2;
        this.b = new AtomicReferenceArray(i);
        if (!(i2 <= 1073741823)) {
            throw new IllegalStateException("Check failed.".toString());
        }
        if (!((i & i2) == 0)) {
            throw new IllegalStateException("Check failed.".toString());
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0051, code lost:
    
        return 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(E r16) {
        /*
            r15 = this;
            r6 = r15
            r7 = r16
        L3:
            long r2 = r6._state
            r0 = 3458764513820540928(0x3000000000000000, double:1.727233711018889E-77)
            long r0 = r0 & r2
            r8 = 0
            r4 = 1
            int r5 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r5 == 0) goto L18
            r0 = 2305843009213693952(0x2000000000000000, double:1.4916681462400413E-154)
            long r0 = r0 & r2
            int r2 = (r0 > r8 ? 1 : (r0 == r8 ? 0 : -1))
            if (r2 == 0) goto L17
            r4 = 2
        L17:
            return r4
        L18:
            r0 = 1073741823(0x3fffffff, double:5.304989472E-315)
            long r0 = r0 & r2
            r10 = 0
            long r0 = r0 >> r10
            int r1 = (int) r0
            r11 = 1152921503533105152(0xfffffffc0000000, double:1.2882296003504729E-231)
            long r11 = r11 & r2
            r0 = 30
            long r11 = r11 >> r0
            int r12 = (int) r11
            int r11 = r6.a
            int r5 = r12 + 2
            r5 = r5 & r11
            r13 = r1 & r11
            if (r5 != r13) goto L33
            return r4
        L33:
            boolean r5 = r6.d
            r13 = 1073741823(0x3fffffff, float:1.9999999)
            if (r5 != 0) goto L52
            java.util.concurrent.atomic.AtomicReferenceArray r5 = r6.b
            r14 = r12 & r11
            java.lang.Object r5 = r5.get(r14)
            if (r5 == 0) goto L52
            int r0 = r6.c
            r2 = 1024(0x400, float:1.435E-42)
            if (r0 < r2) goto L51
            int r12 = r12 - r1
            r1 = r12 & r13
            int r0 = r0 >> 1
            if (r1 <= r0) goto L3
        L51:
            return r4
        L52:
            int r1 = r12 + 1
            r1 = r1 & r13
            java.util.concurrent.atomic.AtomicLongFieldUpdater r4 = defpackage.uq7.f
            r13 = -1152921503533105153(0xf00000003fffffff, double:-3.1050369248997324E231)
            long r13 = r13 & r2
            long r8 = (long) r1
            long r0 = r8 << r0
            long r8 = r13 | r0
            r0 = r4
            r1 = r15
            r4 = r8
            boolean r0 = r0.compareAndSet(r1, r2, r4)
            if (r0 == 0) goto L3
            java.util.concurrent.atomic.AtomicReferenceArray r0 = r6.b
            r1 = r12 & r11
            r0.set(r1, r7)
            r0 = r6
        L73:
            long r1 = r0._state
            r3 = 1152921504606846976(0x1000000000000000, double:1.2882297539194267E-231)
            long r1 = r1 & r3
            r3 = 0
            int r5 = (r1 > r3 ? 1 : (r1 == r3 ? 0 : -1))
            if (r5 != 0) goto L7f
            goto La3
        L7f:
            uq7 r0 = r0.e()
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r0.b
            int r2 = r0.a
            r2 = r2 & r12
            java.lang.Object r1 = r1.get(r2)
            boolean r2 = r1 instanceof uq7.b
            if (r2 == 0) goto L9f
            uq7$b r1 = (uq7.b) r1
            int r1 = r1.a
            if (r1 != r12) goto L9f
            java.util.concurrent.atomic.AtomicReferenceArray r1 = r0.b
            int r2 = r0.a
            r2 = r2 & r12
            r1.set(r2, r7)
            goto La0
        L9f:
            r0 = 0
        La0:
            if (r0 == 0) goto La3
            goto L73
        La3:
            return r10
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.uq7.a(java.lang.Object):int");
    }

    public final boolean b() {
        long j;
        do {
            j = this._state;
            if ((j & 2305843009213693952L) != 0) {
                return true;
            }
            if ((FileUtils.ONE_EB & j) != 0) {
                return false;
            }
        } while (!f.compareAndSet(this, j, j | 2305843009213693952L));
        return true;
    }

    public final int c() {
        long j = this._state;
        return 1073741823 & (((int) ((j & 1152921503533105152L) >> 30)) - ((int) ((1073741823 & j) >> 0)));
    }

    public final boolean d() {
        long j = this._state;
        return ((int) ((1073741823 & j) >> 0)) == ((int) ((j & 1152921503533105152L) >> 30));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final uq7<E> e() {
        long j;
        while (true) {
            j = this._state;
            if ((j & FileUtils.ONE_EB) != 0) {
                break;
            }
            long j2 = j | FileUtils.ONE_EB;
            if (f.compareAndSet(this, j, j2)) {
                j = j2;
                break;
            }
        }
        while (true) {
            uq7<E> uq7Var = (uq7) this._next;
            if (uq7Var != null) {
                return uq7Var;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = e;
            uq7 uq7Var2 = new uq7(this.c * 2, this.d);
            int i = (int) ((1073741823 & j) >> 0);
            int i2 = (int) ((1152921503533105152L & j) >> 30);
            while (true) {
                int i3 = this.a;
                int i4 = i & i3;
                if (i4 != (i3 & i2)) {
                    Object bVar = this.b.get(i4);
                    if (bVar == null) {
                        bVar = new b(i);
                    }
                    uq7Var2.b.set(uq7Var2.a & i, bVar);
                    i++;
                }
            }
            uq7Var2._state = (-1152921504606846977L) & j;
            atomicReferenceFieldUpdater.compareAndSet(this, null, uq7Var2);
        }
    }

    public final Object f() {
        while (true) {
            long j = this._state;
            if ((j & FileUtils.ONE_EB) != 0) {
                return g;
            }
            int i = (int) ((j & 1073741823) >> 0);
            int i2 = this.a;
            int i3 = ((int) ((1152921503533105152L & j) >> 30)) & i2;
            int i4 = i2 & i;
            if (i3 == i4) {
                return null;
            }
            Object obj = this.b.get(i4);
            if (obj == null) {
                if (this.d) {
                    return null;
                }
            } else {
                if (obj instanceof b) {
                    return null;
                }
                long j2 = ((i + 1) & 1073741823) << 0;
                if (f.compareAndSet(this, j, (j & (-1073741824)) | j2)) {
                    this.b.set(this.a & i, null);
                    return obj;
                }
                if (this.d) {
                    uq7<E> uq7VarE = this;
                    while (true) {
                        long j3 = uq7VarE._state;
                        int i5 = (int) ((j3 & 1073741823) >> 0);
                        boolean z = fp7.a;
                        if ((j3 & FileUtils.ONE_EB) != 0) {
                            uq7VarE = uq7VarE.e();
                        } else {
                            if (f.compareAndSet(uq7VarE, j3, (j3 & (-1073741824)) | j2)) {
                                uq7VarE.b.set(uq7VarE.a & i5, null);
                                uq7VarE = null;
                            } else {
                                continue;
                            }
                        }
                        if (uq7VarE == null) {
                            return obj;
                        }
                    }
                }
            }
        }
    }
}
