package defpackage;

import android.content.res.Resources;
import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AnimationUtils;
import android.view.animation.Interpolator;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public abstract class va implements View.OnTouchListener {
    public static final int u = ViewConfiguration.getTapTimeout();
    public final a e;
    public final Interpolator f;
    public final View g;
    public Runnable h;
    public float[] i;
    public float[] j;
    public int k;
    public int l;
    public float[] m;
    public float[] n;
    public float[] o;
    public boolean p;
    public boolean q;
    public boolean r;
    public boolean s;
    public boolean t;

    public static class a {
        public int a;
        public int b;
        public float c;
        public float d;
        public float j;
        public int k;
        public long e = Long.MIN_VALUE;
        public long i = -1;
        public long f = 0;
        public int g = 0;
        public int h = 0;

        public final float a(long j) {
            if (j < this.e) {
                return 0.0f;
            }
            long j2 = this.i;
            if (j2 < 0 || j < j2) {
                return va.b((j - r0) / this.a, 0.0f, 1.0f) * 0.5f;
            }
            float f = this.j;
            return (va.b((j - j2) / this.k, 0.0f, 1.0f) * f) + (1.0f - f);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            va vaVar = va.this;
            if (vaVar.s) {
                if (vaVar.q) {
                    vaVar.q = false;
                    a aVar = vaVar.e;
                    Objects.requireNonNull(aVar);
                    long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
                    aVar.e = jCurrentAnimationTimeMillis;
                    aVar.i = -1L;
                    aVar.f = jCurrentAnimationTimeMillis;
                    aVar.j = 0.5f;
                    aVar.g = 0;
                    aVar.h = 0;
                }
                a aVar2 = va.this.e;
                if ((aVar2.i > 0 && AnimationUtils.currentAnimationTimeMillis() > aVar2.i + ((long) aVar2.k)) || !va.this.e()) {
                    va.this.s = false;
                    return;
                }
                va vaVar2 = va.this;
                if (vaVar2.r) {
                    vaVar2.r = false;
                    Objects.requireNonNull(vaVar2);
                    long jUptimeMillis = SystemClock.uptimeMillis();
                    MotionEvent motionEventObtain = MotionEvent.obtain(jUptimeMillis, jUptimeMillis, 3, 0.0f, 0.0f, 0);
                    vaVar2.g.onTouchEvent(motionEventObtain);
                    motionEventObtain.recycle();
                }
                if (aVar2.f == 0) {
                    throw new RuntimeException("Cannot compute scroll delta before calling start()");
                }
                long jCurrentAnimationTimeMillis2 = AnimationUtils.currentAnimationTimeMillis();
                float fA = aVar2.a(jCurrentAnimationTimeMillis2);
                long j = jCurrentAnimationTimeMillis2 - aVar2.f;
                aVar2.f = jCurrentAnimationTimeMillis2;
                float f = j * ((fA * 4.0f) + ((-4.0f) * fA * fA));
                aVar2.g = (int) (aVar2.c * f);
                int i = (int) (f * aVar2.d);
                aVar2.h = i;
                ((ya) va.this).v.scrollListBy(i);
                View view = va.this.g;
                AtomicInteger atomicInteger = ha.a;
                view.postOnAnimation(this);
            }
        }
    }

    public va(View view) {
        a aVar = new a();
        this.e = aVar;
        this.f = new AccelerateInterpolator();
        this.i = new float[]{0.0f, 0.0f};
        this.j = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.m = new float[]{0.0f, 0.0f};
        this.n = new float[]{0.0f, 0.0f};
        this.o = new float[]{Float.MAX_VALUE, Float.MAX_VALUE};
        this.g = view;
        float f = Resources.getSystem().getDisplayMetrics().density;
        float[] fArr = this.o;
        float f2 = ((int) ((1575.0f * f) + 0.5f)) / 1000.0f;
        fArr[0] = f2;
        fArr[1] = f2;
        float[] fArr2 = this.n;
        float f3 = ((int) ((f * 315.0f) + 0.5f)) / 1000.0f;
        fArr2[0] = f3;
        fArr2[1] = f3;
        this.k = 1;
        float[] fArr3 = this.j;
        fArr3[0] = Float.MAX_VALUE;
        fArr3[1] = Float.MAX_VALUE;
        float[] fArr4 = this.i;
        fArr4[0] = 0.2f;
        fArr4[1] = 0.2f;
        float[] fArr5 = this.m;
        fArr5[0] = 0.001f;
        fArr5[1] = 0.001f;
        this.l = u;
        aVar.a = 500;
        aVar.b = 500;
    }

    public static float b(float f, float f2, float f3) {
        return f > f3 ? f3 : f < f2 ? f2 : f;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final float a(int r4, float r5, float r6, float r7) {
        /*
            r3 = this;
            float[] r0 = r3.i
            r0 = r0[r4]
            float[] r1 = r3.j
            r1 = r1[r4]
            float r0 = r0 * r6
            r2 = 0
            float r0 = b(r0, r2, r1)
            float r1 = r3.c(r5, r0)
            float r6 = r6 - r5
            float r5 = r3.c(r6, r0)
            float r5 = r5 - r1
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 >= 0) goto L26
            android.view.animation.Interpolator r6 = r3.f
            float r5 = -r5
            float r5 = r6.getInterpolation(r5)
            float r5 = -r5
            goto L30
        L26:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 <= 0) goto L39
            android.view.animation.Interpolator r6 = r3.f
            float r5 = r6.getInterpolation(r5)
        L30:
            r6 = -1082130432(0xffffffffbf800000, float:-1.0)
            r0 = 1065353216(0x3f800000, float:1.0)
            float r5 = b(r5, r6, r0)
            goto L3a
        L39:
            r5 = 0
        L3a:
            int r6 = (r5 > r2 ? 1 : (r5 == r2 ? 0 : -1))
            if (r6 != 0) goto L3f
            return r2
        L3f:
            float[] r0 = r3.m
            r0 = r0[r4]
            float[] r1 = r3.n
            r1 = r1[r4]
            float[] r2 = r3.o
            r4 = r2[r4]
            float r0 = r0 * r7
            if (r6 <= 0) goto L56
            float r5 = r5 * r0
            float r4 = b(r5, r1, r4)
            return r4
        L56:
            float r5 = -r5
            float r5 = r5 * r0
            float r4 = b(r5, r1, r4)
            float r4 = -r4
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.va.a(int, float, float, float):float");
    }

    public final float c(float f, float f2) {
        if (f2 == 0.0f) {
            return 0.0f;
        }
        int i = this.k;
        if (i == 0 || i == 1) {
            if (f < f2) {
                if (f >= 0.0f) {
                    return 1.0f - (f / f2);
                }
                if (this.s && i == 1) {
                    return 1.0f;
                }
            }
        } else if (i == 2 && f < 0.0f) {
            return f / (-f2);
        }
        return 0.0f;
    }

    public final void d() {
        int i = 0;
        if (this.q) {
            this.s = false;
            return;
        }
        a aVar = this.e;
        Objects.requireNonNull(aVar);
        long jCurrentAnimationTimeMillis = AnimationUtils.currentAnimationTimeMillis();
        int i2 = (int) (jCurrentAnimationTimeMillis - aVar.e);
        int i3 = aVar.b;
        if (i2 > i3) {
            i = i3;
        } else if (i2 >= 0) {
            i = i2;
        }
        aVar.k = i;
        aVar.j = aVar.a(jCurrentAnimationTimeMillis);
        aVar.i = jCurrentAnimationTimeMillis;
    }

    /* JADX WARN: Removed duplicated region for block: B:22:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:6:0x0021  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean e() {
        /*
            r9 = this;
            va$a r0 = r9.e
            float r1 = r0.d
            float r2 = java.lang.Math.abs(r1)
            float r1 = r1 / r2
            int r1 = (int) r1
            float r0 = r0.c
            float r2 = java.lang.Math.abs(r0)
            float r0 = r0 / r2
            int r0 = (int) r0
            r2 = 1
            r3 = 0
            if (r1 == 0) goto L53
            r4 = r9
            ya r4 = (defpackage.ya) r4
            android.widget.ListView r4 = r4.v
            int r5 = r4.getCount()
            if (r5 != 0) goto L23
        L21:
            r1 = 0
            goto L51
        L23:
            int r6 = r4.getChildCount()
            int r7 = r4.getFirstVisiblePosition()
            int r8 = r7 + r6
            if (r1 <= 0) goto L41
            if (r8 < r5) goto L50
            int r6 = r6 - r2
            android.view.View r1 = r4.getChildAt(r6)
            int r1 = r1.getBottom()
            int r4 = r4.getHeight()
            if (r1 > r4) goto L50
            goto L21
        L41:
            if (r1 >= 0) goto L21
            if (r7 > 0) goto L50
            android.view.View r1 = r4.getChildAt(r3)
            int r1 = r1.getTop()
            if (r1 < 0) goto L50
            goto L21
        L50:
            r1 = 1
        L51:
            if (r1 != 0) goto L54
        L53:
            r2 = 0
        L54:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.va.e():boolean");
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0016  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
        /*
            r5 = this;
            boolean r0 = r5.t
            r1 = 0
            if (r0 != 0) goto L6
            return r1
        L6:
            int r0 = r7.getActionMasked()
            r2 = 1
            if (r0 == 0) goto L1a
            if (r0 == r2) goto L16
            r3 = 2
            if (r0 == r3) goto L1e
            r6 = 3
            if (r0 == r6) goto L16
            goto L7f
        L16:
            r5.d()
            goto L7f
        L1a:
            r5.r = r2
            r5.p = r1
        L1e:
            float r0 = r7.getX()
            int r3 = r6.getWidth()
            float r3 = (float) r3
            android.view.View r4 = r5.g
            int r4 = r4.getWidth()
            float r4 = (float) r4
            float r0 = r5.a(r1, r0, r3, r4)
            float r7 = r7.getY()
            int r6 = r6.getHeight()
            float r6 = (float) r6
            android.view.View r3 = r5.g
            int r3 = r3.getHeight()
            float r3 = (float) r3
            float r6 = r5.a(r2, r7, r6, r3)
            va$a r7 = r5.e
            r7.c = r0
            r7.d = r6
            boolean r6 = r5.s
            if (r6 != 0) goto L7f
            boolean r6 = r5.e()
            if (r6 == 0) goto L7f
            java.lang.Runnable r6 = r5.h
            if (r6 != 0) goto L61
            va$b r6 = new va$b
            r6.<init>()
            r5.h = r6
        L61:
            r5.s = r2
            r5.q = r2
            boolean r6 = r5.p
            if (r6 != 0) goto L78
            int r6 = r5.l
            if (r6 <= 0) goto L78
            android.view.View r7 = r5.g
            java.lang.Runnable r0 = r5.h
            long r3 = (long) r6
            java.util.concurrent.atomic.AtomicInteger r6 = defpackage.ha.a
            r7.postOnAnimationDelayed(r0, r3)
            goto L7d
        L78:
            java.lang.Runnable r6 = r5.h
            r6.run()
        L7d:
            r5.p = r2
        L7f:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.va.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }
}
