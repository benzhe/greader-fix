package defpackage;

import android.os.Trace;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public final class qf implements Runnable {
    public static final ThreadLocal<qf> i = new ThreadLocal<>();
    public static Comparator<c> j = new a();
    public long f;
    public long g;
    public ArrayList<RecyclerView> e = new ArrayList<>();
    public ArrayList<c> h = new ArrayList<>();

    public static class a implements Comparator<c> {
        /* JADX WARN: Removed duplicated region for block: B:17:0x0022  */
        @Override // java.util.Comparator
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public int compare(qf.c r7, qf.c r8) {
            /*
                r6 = this;
                qf$c r7 = (qf.c) r7
                qf$c r8 = (qf.c) r8
                androidx.recyclerview.widget.RecyclerView r0 = r7.d
                r1 = 1
                r2 = 0
                if (r0 != 0) goto Lc
                r3 = 1
                goto Ld
            Lc:
                r3 = 0
            Ld:
                androidx.recyclerview.widget.RecyclerView r4 = r8.d
                if (r4 != 0) goto L13
                r4 = 1
                goto L14
            L13:
                r4 = 0
            L14:
                r5 = -1
                if (r3 == r4) goto L1a
                if (r0 != 0) goto L22
                goto L23
            L1a:
                boolean r0 = r7.a
                boolean r3 = r8.a
                if (r0 == r3) goto L25
                if (r0 == 0) goto L23
            L22:
                r1 = -1
            L23:
                r2 = r1
                goto L36
            L25:
                int r0 = r8.b
                int r1 = r7.b
                int r0 = r0 - r1
                if (r0 == 0) goto L2e
                r2 = r0
                goto L36
            L2e:
                int r7 = r7.c
                int r8 = r8.c
                int r7 = r7 - r8
                if (r7 == 0) goto L36
                r2 = r7
            L36:
                return r2
            */
            throw new UnsupportedOperationException("Method not decompiled: qf.a.compare(java.lang.Object, java.lang.Object):int");
        }
    }

    public static class b implements RecyclerView.m.c {
        public int a;
        public int b;
        public int[] c;
        public int d;

        public void a(int i, int i2) {
            if (i < 0) {
                throw new IllegalArgumentException("Layout positions must be non-negative");
            }
            if (i2 < 0) {
                throw new IllegalArgumentException("Pixel distance must be non-negative");
            }
            int i3 = this.d * 2;
            int[] iArr = this.c;
            if (iArr == null) {
                int[] iArr2 = new int[4];
                this.c = iArr2;
                Arrays.fill(iArr2, -1);
            } else if (i3 >= iArr.length) {
                int[] iArr3 = new int[i3 * 2];
                this.c = iArr3;
                System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
            }
            int[] iArr4 = this.c;
            iArr4[i3] = i;
            iArr4[i3 + 1] = i2;
            this.d++;
        }

        public void b(RecyclerView recyclerView, boolean z) {
            this.d = 0;
            int[] iArr = this.c;
            if (iArr != null) {
                Arrays.fill(iArr, -1);
            }
            RecyclerView.m mVar = recyclerView.q;
            if (recyclerView.p == null || mVar == null || !mVar.k) {
                return;
            }
            if (z) {
                if (!recyclerView.h.g()) {
                    mVar.j(recyclerView.p.getItemCount(), this);
                }
            } else if (!recyclerView.M()) {
                mVar.i(this.a, this.b, recyclerView.l0, this);
            }
            int i = this.d;
            if (i > mVar.l) {
                mVar.l = i;
                mVar.m = z;
                recyclerView.f.l();
            }
        }

        public boolean c(int i) {
            if (this.c != null) {
                int i2 = this.d * 2;
                for (int i3 = 0; i3 < i2; i3 += 2) {
                    if (this.c[i3] == i) {
                        return true;
                    }
                }
            }
            return false;
        }
    }

    public static class c {
        public boolean a;
        public int b;
        public int c;
        public RecyclerView d;
        public int e;
    }

    public void a(RecyclerView recyclerView, int i2, int i3) {
        if (recyclerView.isAttachedToWindow() && this.f == 0) {
            this.f = recyclerView.getNanoTime();
            recyclerView.post(this);
        }
        b bVar = recyclerView.k0;
        bVar.a = i2;
        bVar.b = i3;
    }

    public void b(long j2) {
        c cVar;
        RecyclerView recyclerView;
        RecyclerView recyclerView2;
        c cVar2;
        int size = this.e.size();
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            RecyclerView recyclerView3 = this.e.get(i3);
            if (recyclerView3.getWindowVisibility() == 0) {
                recyclerView3.k0.b(recyclerView3, false);
                i2 += recyclerView3.k0.d;
            }
        }
        this.h.ensureCapacity(i2);
        int i4 = 0;
        for (int i5 = 0; i5 < size; i5++) {
            RecyclerView recyclerView4 = this.e.get(i5);
            if (recyclerView4.getWindowVisibility() == 0) {
                b bVar = recyclerView4.k0;
                int iAbs = Math.abs(bVar.b) + Math.abs(bVar.a);
                for (int i6 = 0; i6 < bVar.d * 2; i6 += 2) {
                    if (i4 >= this.h.size()) {
                        cVar2 = new c();
                        this.h.add(cVar2);
                    } else {
                        cVar2 = this.h.get(i4);
                    }
                    int[] iArr = bVar.c;
                    int i7 = iArr[i6 + 1];
                    cVar2.a = i7 <= iAbs;
                    cVar2.b = iAbs;
                    cVar2.c = i7;
                    cVar2.d = recyclerView4;
                    cVar2.e = iArr[i6];
                    i4++;
                }
            }
        }
        Collections.sort(this.h, j);
        for (int i8 = 0; i8 < this.h.size() && (recyclerView = (cVar = this.h.get(i8)).d) != null; i8++) {
            RecyclerView.a0 a0VarC = c(recyclerView, cVar.e, cVar.a ? Long.MAX_VALUE : j2);
            if (a0VarC != null && a0VarC.mNestedRecyclerView != null && a0VarC.isBound() && !a0VarC.isInvalid() && (recyclerView2 = a0VarC.mNestedRecyclerView.get()) != null) {
                if (recyclerView2.H && recyclerView2.i.h() != 0) {
                    recyclerView2.d0();
                }
                b bVar2 = recyclerView2.k0;
                bVar2.b(recyclerView2, true);
                if (bVar2.d != 0) {
                    try {
                        int i9 = e9.a;
                        Trace.beginSection("RV Nested Prefetch");
                        RecyclerView.x xVar = recyclerView2.l0;
                        RecyclerView.e eVar = recyclerView2.p;
                        xVar.d = 1;
                        xVar.e = eVar.getItemCount();
                        xVar.g = false;
                        xVar.h = false;
                        xVar.i = false;
                        for (int i10 = 0; i10 < bVar2.d * 2; i10 += 2) {
                            c(recyclerView2, bVar2.c[i10], j2);
                        }
                        Trace.endSection();
                    } catch (Throwable th) {
                        int i11 = e9.a;
                        Trace.endSection();
                        throw th;
                    }
                } else {
                    continue;
                }
            }
            cVar.a = false;
            cVar.b = 0;
            cVar.c = 0;
            cVar.d = null;
            cVar.e = 0;
        }
    }

    public final RecyclerView.a0 c(RecyclerView recyclerView, int i2, long j2) {
        boolean z;
        int iH = recyclerView.i.h();
        int i3 = 0;
        while (true) {
            if (i3 >= iH) {
                z = false;
                break;
            }
            RecyclerView.a0 a0VarK = RecyclerView.K(recyclerView.i.g(i3));
            if (a0VarK.mPosition == i2 && !a0VarK.isInvalid()) {
                z = true;
                break;
            }
            i3++;
        }
        if (z) {
            return null;
        }
        RecyclerView.t tVar = recyclerView.f;
        try {
            recyclerView.U();
            RecyclerView.a0 a0VarJ = tVar.j(i2, false, j2);
            if (a0VarJ != null) {
                if (!a0VarJ.isBound() || a0VarJ.isInvalid()) {
                    tVar.a(a0VarJ, false);
                } else {
                    tVar.g(a0VarJ.itemView);
                }
            }
            return a0VarJ;
        } finally {
            recyclerView.V(false);
        }
    }

    @Override // java.lang.Runnable
    public void run() {
        try {
            int i2 = e9.a;
            Trace.beginSection("RV Prefetch");
            if (this.e.isEmpty()) {
                this.f = 0L;
                Trace.endSection();
                return;
            }
            int size = this.e.size();
            long jMax = 0;
            for (int i3 = 0; i3 < size; i3++) {
                RecyclerView recyclerView = this.e.get(i3);
                if (recyclerView.getWindowVisibility() == 0) {
                    jMax = Math.max(recyclerView.getDrawingTime(), jMax);
                }
            }
            if (jMax == 0) {
                this.f = 0L;
                Trace.endSection();
            } else {
                b(TimeUnit.MILLISECONDS.toNanos(jMax) + this.g);
                this.f = 0L;
                Trace.endSection();
            }
        } catch (Throwable th) {
            this.f = 0L;
            int i4 = e9.a;
            Trace.endSection();
            throw th;
        }
    }
}
