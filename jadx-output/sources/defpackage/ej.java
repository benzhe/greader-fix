package defpackage;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;

/* loaded from: classes.dex */
public final class ej extends RecyclerView.r {
    public ViewPager2.g a;
    public final ViewPager2 b;
    public final RecyclerView c;
    public final LinearLayoutManager d;
    public int e;
    public int f;
    public a g;
    public int h;
    public int i;
    public boolean j;
    public boolean k;
    public boolean l;
    public boolean m;

    public static final class a {
        public int a;
        public float b;
        public int c;

        public void a() {
            this.a = -1;
            this.b = 0.0f;
            this.c = 0;
        }
    }

    public ej(ViewPager2 viewPager2) {
        this.b = viewPager2;
        RecyclerView recyclerView = viewPager2.n;
        this.c = recyclerView;
        this.d = (LinearLayoutManager) recyclerView.getLayoutManager();
        this.g = new a();
        e();
    }

    @Override // androidx.recyclerview.widget.RecyclerView.r
    public void a(RecyclerView recyclerView, int i) {
        ViewPager2.g gVar;
        int i2 = this.e;
        boolean z = true;
        if (!(i2 == 1 && this.f == 1) && i == 1) {
            this.m = false;
            this.e = 1;
            int i3 = this.i;
            if (i3 != -1) {
                this.h = i3;
                this.i = -1;
            } else if (this.h == -1) {
                this.h = this.d.l1();
            }
            d(1);
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 2) {
            if (this.k) {
                d(2);
                this.j = true;
                return;
            }
            return;
        }
        if ((i2 == 1 || i2 == 4) && i == 0) {
            f();
            if (this.k) {
                a aVar = this.g;
                if (aVar.c == 0) {
                    int i4 = this.h;
                    int i5 = aVar.a;
                    if (i4 != i5) {
                        c(i5);
                    }
                } else {
                    z = false;
                }
            } else {
                int i6 = this.g.a;
                if (i6 != -1 && (gVar = this.a) != null) {
                    gVar.b(i6, 0.0f, 0);
                }
            }
            if (z) {
                d(0);
                e();
            }
        }
        if (this.e == 2 && i == 0 && this.l) {
            f();
            a aVar2 = this.g;
            if (aVar2.c == 0) {
                int i7 = this.i;
                int i8 = aVar2.a;
                if (i7 != i8) {
                    if (i8 == -1) {
                        i8 = 0;
                    }
                    c(i8);
                }
                d(0);
                e();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0025  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x002f  */
    @Override // androidx.recyclerview.widget.RecyclerView.r
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void b(androidx.recyclerview.widget.RecyclerView r5, int r6, int r7) {
        /*
            r4 = this;
            r5 = 1
            r4.k = r5
            r4.f()
            boolean r0 = r4.j
            r1 = 0
            r2 = -1
            if (r0 == 0) goto L3d
            r4.j = r1
            if (r7 > 0) goto L22
            if (r7 != 0) goto L20
            if (r6 >= 0) goto L16
            r6 = 1
            goto L17
        L16:
            r6 = 0
        L17:
            androidx.viewpager2.widget.ViewPager2 r7 = r4.b
            boolean r7 = r7.b()
            if (r6 != r7) goto L20
            goto L22
        L20:
            r6 = 0
            goto L23
        L22:
            r6 = 1
        L23:
            if (r6 == 0) goto L2f
            ej$a r6 = r4.g
            int r7 = r6.c
            if (r7 == 0) goto L2f
            int r6 = r6.a
            int r6 = r6 + r5
            goto L33
        L2f:
            ej$a r6 = r4.g
            int r6 = r6.a
        L33:
            r4.i = r6
            int r7 = r4.h
            if (r7 == r6) goto L4b
            r4.c(r6)
            goto L4b
        L3d:
            int r6 = r4.e
            if (r6 != 0) goto L4b
            ej$a r6 = r4.g
            int r6 = r6.a
            if (r6 != r2) goto L48
            r6 = 0
        L48:
            r4.c(r6)
        L4b:
            ej$a r6 = r4.g
            int r7 = r6.a
            if (r7 != r2) goto L52
            r7 = 0
        L52:
            float r0 = r6.b
            int r6 = r6.c
            androidx.viewpager2.widget.ViewPager2$g r3 = r4.a
            if (r3 == 0) goto L5d
            r3.b(r7, r0, r6)
        L5d:
            ej$a r6 = r4.g
            int r7 = r6.a
            int r0 = r4.i
            if (r7 == r0) goto L67
            if (r0 != r2) goto L75
        L67:
            int r6 = r6.c
            if (r6 != 0) goto L75
            int r6 = r4.f
            if (r6 == r5) goto L75
            r4.d(r1)
            r4.e()
        L75:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ej.b(androidx.recyclerview.widget.RecyclerView, int, int):void");
    }

    public final void c(int i) {
        ViewPager2.g gVar = this.a;
        if (gVar != null) {
            gVar.c(i);
        }
    }

    public final void d(int i) {
        if ((this.e == 3 && this.f == 0) || this.f == i) {
            return;
        }
        this.f = i;
        ViewPager2.g gVar = this.a;
        if (gVar != null) {
            gVar.a(i);
        }
    }

    public final void e() {
        this.e = 0;
        this.f = 0;
        this.g.a();
        this.h = -1;
        this.i = -1;
        this.j = false;
        this.k = false;
        this.m = false;
        this.l = false;
    }

    /* JADX WARN: Removed duplicated region for block: B:76:0x0180  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f() {
        /*
            Method dump skipped, instructions count: 429
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ej.f():void");
    }
}
