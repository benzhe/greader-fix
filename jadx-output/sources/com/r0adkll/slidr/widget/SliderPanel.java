package com.r0adkll.slidr.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.view.MotionEvent;
import android.view.View;
import android.widget.FrameLayout;
import defpackage.a17;
import defpackage.b17;
import defpackage.c17;
import defpackage.d17;
import defpackage.e17;
import defpackage.f17;
import defpackage.ha;
import defpackage.jo;
import defpackage.z07;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes2.dex */
public class SliderPanel extends FrameLayout {
    public int e;
    public int f;
    public View g;
    public d17 h;
    public h i;
    public Paint j;
    public e17 k;
    public boolean l;
    public int m;
    public a17 n;
    public final b17 o;
    public final d17.c p;
    public final d17.c q;
    public final d17.c r;
    public final d17.c s;
    public final d17.c t;
    public final d17.c u;

    public class a implements b17 {
        public a(SliderPanel sliderPanel) {
        }
    }

    public class b extends d17.c {
        public b() {
        }

        @Override // d17.c
        public int a(View view, int i, int i2) {
            return SliderPanel.a(i, 0, SliderPanel.this.e);
        }

        @Override // d17.c
        public int c(View view) {
            return SliderPanel.this.e;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getLeft() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float f = 1.0f - (i / r3.e);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int left = view.getLeft();
            int width = (int) (SliderPanel.this.getWidth() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f2);
            SliderPanel sliderPanel = SliderPanel.this;
            int i = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f > 0.0f) {
                float fAbs2 = Math.abs(f);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || left > width) {
                    i = sliderPanel2.e;
                }
            } else if (f == 0.0f && left > width) {
                i = sliderPanel.e;
            }
            SliderPanel.this.h.s(i, view.getTop());
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            SliderPanel sliderPanel = SliderPanel.this;
            return view.getId() == SliderPanel.this.g.getId() && (!sliderPanel.n.g || sliderPanel.h.j(sliderPanel.m, i));
        }
    }

    public class c extends d17.c {
        public c() {
        }

        @Override // d17.c
        public int a(View view, int i, int i2) {
            return SliderPanel.a(i, -SliderPanel.this.e, 0);
        }

        @Override // d17.c
        public int c(View view) {
            return SliderPanel.this.e;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getLeft() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float fAbs = Math.abs(i);
            float f = 1.0f - (fAbs / r3.e);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int i;
            int left = view.getLeft();
            int width = (int) (SliderPanel.this.getWidth() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f2);
            SliderPanel sliderPanel = SliderPanel.this;
            int i2 = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f < 0.0f) {
                float fAbs2 = Math.abs(f);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || left < (-width)) {
                    i = sliderPanel2.e;
                    i2 = -i;
                }
            } else if (f == 0.0f && left < (-width)) {
                i = sliderPanel.e;
                i2 = -i;
            }
            SliderPanel.this.h.s(i2, view.getTop());
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            SliderPanel sliderPanel = SliderPanel.this;
            return view.getId() == SliderPanel.this.g.getId() && (!sliderPanel.n.g || sliderPanel.h.j(sliderPanel.m, i));
        }
    }

    public class d extends d17.c {
        public d() {
        }

        @Override // d17.c
        public int b(View view, int i, int i2) {
            return SliderPanel.a(i, 0, SliderPanel.this.f);
        }

        @Override // d17.c
        public int d(View view) {
            return SliderPanel.this.f;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getTop() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float fAbs = Math.abs(i2);
            float f = 1.0f - (fAbs / r3.f);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int top = view.getTop();
            int height = (int) (SliderPanel.this.getHeight() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f);
            SliderPanel sliderPanel = SliderPanel.this;
            int i = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f2 > 0.0f) {
                float fAbs2 = Math.abs(f2);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || top > height) {
                    i = sliderPanel2.f;
                }
            } else if (f2 == 0.0f && top > height) {
                i = sliderPanel.f;
            }
            SliderPanel.this.h.s(view.getLeft(), i);
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            if (view.getId() == SliderPanel.this.g.getId()) {
                SliderPanel sliderPanel = SliderPanel.this;
                if (!sliderPanel.n.g || sliderPanel.l) {
                    return true;
                }
            }
            return false;
        }
    }

    public class e extends d17.c {
        public e() {
        }

        @Override // d17.c
        public int b(View view, int i, int i2) {
            return SliderPanel.a(i, -SliderPanel.this.f, 0);
        }

        @Override // d17.c
        public int d(View view) {
            return SliderPanel.this.f;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getTop() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float fAbs = Math.abs(i2);
            float f = 1.0f - (fAbs / r3.f);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int i;
            int top = view.getTop();
            int height = (int) (SliderPanel.this.getHeight() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f);
            SliderPanel sliderPanel = SliderPanel.this;
            int i2 = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f2 < 0.0f) {
                float fAbs2 = Math.abs(f2);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || top < (-height)) {
                    i = sliderPanel2.f;
                    i2 = -i;
                }
            } else if (f2 == 0.0f && top < (-height)) {
                i = sliderPanel.f;
                i2 = -i;
            }
            SliderPanel.this.h.s(view.getLeft(), i2);
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            if (view.getId() == SliderPanel.this.g.getId()) {
                SliderPanel sliderPanel = SliderPanel.this;
                if (!sliderPanel.n.g || sliderPanel.l) {
                    return true;
                }
            }
            return false;
        }
    }

    public class f extends d17.c {
        public f() {
        }

        @Override // d17.c
        public int b(View view, int i, int i2) {
            int i3 = SliderPanel.this.f;
            return SliderPanel.a(i, -i3, i3);
        }

        @Override // d17.c
        public int d(View view) {
            return SliderPanel.this.f;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getTop() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float fAbs = Math.abs(i2);
            float f = 1.0f - (fAbs / r3.f);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int i;
            int top = view.getTop();
            int height = (int) (SliderPanel.this.getHeight() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f);
            SliderPanel sliderPanel = SliderPanel.this;
            int i2 = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f2 > 0.0f) {
                float fAbs2 = Math.abs(f2);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || top > height) {
                    i2 = sliderPanel2.f;
                }
            } else if (f2 < 0.0f) {
                float fAbs3 = Math.abs(f2);
                SliderPanel sliderPanel3 = SliderPanel.this;
                if ((fAbs3 > sliderPanel3.n.e && !z) || top < (-height)) {
                    i = sliderPanel3.f;
                    i2 = -i;
                }
            } else if (top > height) {
                i2 = sliderPanel.f;
            } else if (top < (-height)) {
                i = sliderPanel.f;
                i2 = -i;
            }
            SliderPanel.this.h.s(view.getLeft(), i2);
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            if (view.getId() == SliderPanel.this.g.getId()) {
                SliderPanel sliderPanel = SliderPanel.this;
                if (!sliderPanel.n.g || sliderPanel.l) {
                    return true;
                }
            }
            return false;
        }
    }

    public class g extends d17.c {
        public g() {
        }

        @Override // d17.c
        public int a(View view, int i, int i2) {
            int i3 = SliderPanel.this.e;
            return SliderPanel.a(i, -i3, i3);
        }

        @Override // d17.c
        public int c(View view) {
            return SliderPanel.this.e;
        }

        @Override // d17.c
        public void e(int i) {
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                Objects.requireNonNull(((z07) hVar).c);
            }
            if (i != 0) {
                return;
            }
            if (SliderPanel.this.g.getLeft() == 0) {
                h hVar2 = SliderPanel.this.i;
                if (hVar2 != null) {
                    Objects.requireNonNull(((z07) hVar2).c);
                    return;
                }
                return;
            }
            h hVar3 = SliderPanel.this.i;
            if (hVar3 != null) {
                ((z07) hVar3).a();
            }
        }

        @Override // d17.c
        public void f(View view, int i, int i2, int i3, int i4) {
            float fAbs = Math.abs(i);
            float f = 1.0f - (fAbs / r3.e);
            h hVar = SliderPanel.this.i;
            if (hVar != null) {
                ((z07) hVar).b(f);
            }
            SliderPanel.b(SliderPanel.this, f);
        }

        @Override // d17.c
        public void g(View view, float f, float f2) {
            int i;
            int left = view.getLeft();
            int width = (int) (SliderPanel.this.getWidth() * SliderPanel.this.n.f);
            float fAbs = Math.abs(f2);
            SliderPanel sliderPanel = SliderPanel.this;
            int i2 = 0;
            boolean z = fAbs > sliderPanel.n.e;
            if (f > 0.0f) {
                float fAbs2 = Math.abs(f);
                SliderPanel sliderPanel2 = SliderPanel.this;
                if ((fAbs2 > sliderPanel2.n.e && !z) || left > width) {
                    i2 = sliderPanel2.e;
                }
            } else if (f < 0.0f) {
                float fAbs3 = Math.abs(f);
                SliderPanel sliderPanel3 = SliderPanel.this;
                if ((fAbs3 > sliderPanel3.n.e && !z) || left < (-width)) {
                    i = sliderPanel3.e;
                    i2 = -i;
                }
            } else if (left > width) {
                i2 = sliderPanel.e;
            } else if (left < (-width)) {
                i = sliderPanel.e;
                i2 = -i;
            }
            SliderPanel.this.h.s(i2, view.getTop());
            SliderPanel.this.invalidate();
        }

        @Override // d17.c
        public boolean h(View view, int i) {
            SliderPanel sliderPanel = SliderPanel.this;
            return view.getId() == SliderPanel.this.g.getId() && (!sliderPanel.n.g || sliderPanel.h.j(sliderPanel.m, i));
        }
    }

    public interface h {
    }

    public SliderPanel(Context context) {
        super(context);
        this.l = false;
        this.o = new a(this);
        this.p = new b();
        this.q = new c();
        this.r = new d();
        this.s = new e();
        this.t = new f();
        this.u = new g();
    }

    public static int a(int i, int i2, int i3) {
        return Math.max(i2, Math.min(i3, i));
    }

    public static void b(SliderPanel sliderPanel, float f2) {
        a17 a17Var = sliderPanel.n;
        float f3 = a17Var.c;
        float f4 = a17Var.d;
        sliderPanel.j.setAlpha((int) (jo.a(f3, f4, f2, f4) * 255.0f));
        e17 e17Var = sliderPanel.k;
        c17 c17Var = sliderPanel.n.i;
        Objects.requireNonNull(e17Var);
        int iOrdinal = c17Var.ordinal();
        if (iOrdinal == 0) {
            e17Var.c.set(0, 0, e17Var.b.getLeft(), e17Var.a.getMeasuredHeight());
        } else if (iOrdinal == 1) {
            e17Var.c.set(e17Var.b.getRight(), 0, e17Var.a.getMeasuredWidth(), e17Var.a.getMeasuredHeight());
        } else if (iOrdinal == 2) {
            e17Var.c.set(0, 0, e17Var.a.getMeasuredWidth(), e17Var.b.getTop());
        } else if (iOrdinal == 3) {
            e17Var.c.set(0, e17Var.b.getBottom(), e17Var.a.getMeasuredWidth(), e17Var.a.getMeasuredHeight());
        } else if (iOrdinal != 4) {
            if (iOrdinal == 5) {
                if (e17Var.b.getLeft() > 0) {
                    e17Var.c.set(0, 0, e17Var.b.getLeft(), e17Var.a.getMeasuredHeight());
                } else {
                    e17Var.c.set(e17Var.b.getRight(), 0, e17Var.a.getMeasuredWidth(), e17Var.a.getMeasuredHeight());
                }
            }
        } else if (e17Var.b.getTop() > 0) {
            e17Var.c.set(0, 0, e17Var.a.getMeasuredWidth(), e17Var.b.getTop());
        } else {
            e17Var.c.set(0, e17Var.b.getBottom(), e17Var.a.getMeasuredWidth(), e17Var.a.getMeasuredHeight());
        }
        sliderPanel.invalidate(e17Var.c);
    }

    @Override // android.view.View
    public void computeScroll() {
        super.computeScroll();
        d17 d17Var = this.h;
        if (d17Var.a == 2) {
            boolean zComputeScrollOffset = d17Var.q.a.computeScrollOffset();
            int currX = d17Var.q.a.getCurrX();
            int currY = d17Var.q.a.getCurrY();
            int left = currX - d17Var.s.getLeft();
            int top = currY - d17Var.s.getTop();
            if (left != 0) {
                ha.l(d17Var.s, left);
            }
            if (top != 0) {
                ha.m(d17Var.s, top);
            }
            if (left != 0 || top != 0) {
                d17Var.r.f(d17Var.s, currX, currY, left, top);
            }
            if (zComputeScrollOffset && currX == d17Var.q.a.getFinalX() && currY == d17Var.q.a.getFinalY()) {
                d17Var.q.a.abortAnimation();
                zComputeScrollOffset = false;
            }
            if (!zComputeScrollOffset) {
                d17Var.u.post(d17Var.v);
            }
        }
        if (d17Var.a == 2) {
            AtomicInteger atomicInteger = ha.a;
            postInvalidateOnAnimation();
        }
    }

    public b17 getDefaultInterface() {
        return this.o;
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        e17 e17Var = this.k;
        c17 c17Var = this.n.i;
        Paint paint = this.j;
        Objects.requireNonNull(e17Var);
        int iOrdinal = c17Var.ordinal();
        if (iOrdinal == 0) {
            e17Var.b(canvas, paint);
            return;
        }
        if (iOrdinal == 1) {
            e17Var.c(canvas, paint);
            return;
        }
        if (iOrdinal == 2) {
            e17Var.d(canvas, paint);
            return;
        }
        if (iOrdinal == 3) {
            e17Var.a(canvas, paint);
            return;
        }
        if (iOrdinal == 4) {
            if (e17Var.b.getTop() > 0) {
                e17Var.d(canvas, paint);
                return;
            } else {
                e17Var.a(canvas, paint);
                return;
            }
        }
        if (iOrdinal != 5) {
            return;
        }
        if (e17Var.b.getLeft() > 0) {
            e17Var.b(canvas, paint);
        } else {
            e17Var.c(canvas, paint);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0051  */
    @Override // android.view.ViewGroup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onInterceptTouchEvent(android.view.MotionEvent r7) {
        /*
            Method dump skipped, instructions count: 211
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.r0adkll.slidr.widget.SliderPanel.onInterceptTouchEvent(android.view.MotionEvent):boolean");
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        try {
            this.h.m(motionEvent);
            return true;
        } catch (IllegalArgumentException unused) {
            return false;
        }
    }

    public void setOnPanelSlideListener(h hVar) {
        this.i = hVar;
    }

    public SliderPanel(Context context, View view, a17 a17Var) {
        super(context);
        this.l = false;
        this.o = new a(this);
        d17.c bVar = new b();
        this.p = bVar;
        d17.c cVar = new c();
        this.q = cVar;
        d17.c dVar = new d();
        this.r = dVar;
        d17.c eVar = new e();
        this.s = eVar;
        d17.c fVar = new f();
        this.t = fVar;
        d17.c gVar = new g();
        this.u = gVar;
        this.g = view;
        this.n = a17Var == null ? new a17(null) : a17Var;
        setWillNotDraw(false);
        this.e = getResources().getDisplayMetrics().widthPixels;
        float f2 = getResources().getDisplayMetrics().density * 400.0f;
        int iOrdinal = this.n.i.ordinal();
        if (iOrdinal == 0) {
            this.m = 1;
        } else if (iOrdinal == 1) {
            this.m = 2;
            bVar = cVar;
        } else if (iOrdinal == 2) {
            this.m = 4;
            bVar = dVar;
        } else if (iOrdinal == 3) {
            this.m = 8;
            bVar = eVar;
        } else if (iOrdinal == 4) {
            this.m = 12;
            bVar = fVar;
        } else if (iOrdinal != 5) {
            this.m = 1;
        } else {
            this.m = 3;
            bVar = gVar;
        }
        float f3 = this.n.a;
        d17 d17Var = new d17(getContext(), this, bVar);
        d17Var.b = (int) ((1.0f / f3) * d17Var.b);
        this.h = d17Var;
        d17Var.n = f2;
        d17Var.p = this.m;
        setMotionEventSplittingEnabled(false);
        Paint paint = new Paint();
        this.j = paint;
        paint.setColor(this.n.b);
        this.j.setAlpha((int) (this.n.c * 255.0f));
        this.k = new e17(this, this.g);
        post(new f17(this));
    }
}
