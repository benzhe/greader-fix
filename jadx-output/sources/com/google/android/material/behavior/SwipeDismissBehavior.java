package com.google.android.material.behavior;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewParent;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import defpackage.d65;
import defpackage.ha;
import defpackage.jb;
import defpackage.jb5;
import defpackage.lb5;
import defpackage.sa;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class SwipeDismissBehavior<V extends View> extends CoordinatorLayout.c<V> {
    public jb a;
    public b b;
    public boolean c;
    public int d = 2;
    public float e = 0.5f;
    public float f = 0.0f;
    public float g = 0.5f;
    public final jb.c h = new a();

    public class a extends jb.c {
        public int a;
        public int b = -1;

        public a() {
        }

        @Override // jb.c
        public int a(View view, int i, int i2) {
            int width;
            int width2;
            int width3;
            AtomicInteger atomicInteger = ha.a;
            boolean z = view.getLayoutDirection() == 1;
            int i3 = SwipeDismissBehavior.this.d;
            if (i3 == 0) {
                if (z) {
                    width = this.a - view.getWidth();
                    width2 = this.a;
                } else {
                    width = this.a;
                    width3 = view.getWidth();
                    width2 = width3 + width;
                }
            } else if (i3 != 1) {
                width = this.a - view.getWidth();
                width2 = view.getWidth() + this.a;
            } else if (z) {
                width = this.a;
                width3 = view.getWidth();
                width2 = width3 + width;
            } else {
                width = this.a - view.getWidth();
                width2 = this.a;
            }
            return Math.min(Math.max(width, i), width2);
        }

        @Override // jb.c
        public int b(View view, int i, int i2) {
            return view.getTop();
        }

        @Override // jb.c
        public int c(View view) {
            return view.getWidth();
        }

        @Override // jb.c
        public void h(View view, int i) {
            this.b = i;
            this.a = view.getLeft();
            ViewParent parent = view.getParent();
            if (parent != null) {
                parent.requestDisallowInterceptTouchEvent(true);
            }
        }

        @Override // jb.c
        public void i(int i) {
            b bVar = SwipeDismissBehavior.this.b;
            if (bVar != null) {
                jb5 jb5Var = (jb5) bVar;
                Objects.requireNonNull(jb5Var);
                if (i == 0) {
                    lb5.b().f(jb5Var.a.n);
                } else if (i == 1 || i == 2) {
                    lb5.b().e(jb5Var.a.n);
                }
            }
        }

        @Override // jb.c
        public void j(View view, int i, int i2, int i3, int i4) {
            float width = (view.getWidth() * SwipeDismissBehavior.this.f) + this.a;
            float width2 = (view.getWidth() * SwipeDismissBehavior.this.g) + this.a;
            float f = i;
            if (f <= width) {
                view.setAlpha(1.0f);
            } else if (f >= width2) {
                view.setAlpha(0.0f);
            } else {
                view.setAlpha(SwipeDismissBehavior.C(0.0f, 1.0f - ((f - width) / (width2 - width)), 1.0f));
            }
        }

        /* JADX WARN: Removed duplicated region for block: B:17:0x002c  */
        /* JADX WARN: Removed duplicated region for block: B:18:0x002e  */
        @Override // jb.c
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void k(android.view.View r8, float r9, float r10) {
            /*
                r7 = this;
                r10 = -1
                r7.b = r10
                int r10 = r8.getWidth()
                r0 = 0
                r1 = 0
                r2 = 1
                int r3 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r3 == 0) goto L3c
                java.util.concurrent.atomic.AtomicInteger r4 = defpackage.ha.a
                int r4 = r8.getLayoutDirection()
                if (r4 != r2) goto L18
                r4 = 1
                goto L19
            L18:
                r4 = 0
            L19:
                com.google.android.material.behavior.SwipeDismissBehavior r5 = com.google.android.material.behavior.SwipeDismissBehavior.this
                int r5 = r5.d
                r6 = 2
                if (r5 != r6) goto L21
                goto L2c
            L21:
                if (r5 != 0) goto L30
                if (r4 == 0) goto L2a
                int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r9 >= 0) goto L2e
                goto L2c
            L2a:
                if (r3 <= 0) goto L2e
            L2c:
                r9 = 1
                goto L59
            L2e:
                r9 = 0
                goto L59
            L30:
                if (r5 != r2) goto L2e
                if (r4 == 0) goto L37
                if (r3 <= 0) goto L2e
                goto L3b
            L37:
                int r9 = (r9 > r0 ? 1 : (r9 == r0 ? 0 : -1))
                if (r9 >= 0) goto L2e
            L3b:
                goto L2c
            L3c:
                int r9 = r8.getLeft()
                int r0 = r7.a
                int r9 = r9 - r0
                int r0 = r8.getWidth()
                float r0 = (float) r0
                com.google.android.material.behavior.SwipeDismissBehavior r3 = com.google.android.material.behavior.SwipeDismissBehavior.this
                float r3 = r3.e
                float r0 = r0 * r3
                int r0 = java.lang.Math.round(r0)
                int r9 = java.lang.Math.abs(r9)
                if (r9 < r0) goto L2e
                goto L2c
            L59:
                if (r9 == 0) goto L68
                int r9 = r8.getLeft()
                int r0 = r7.a
                if (r9 >= r0) goto L65
                int r0 = r0 - r10
                goto L66
            L65:
                int r0 = r0 + r10
            L66:
                r1 = 1
                goto L6a
            L68:
                int r0 = r7.a
            L6a:
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                jb r9 = r9.a
                int r10 = r8.getTop()
                boolean r9 = r9.x(r0, r10)
                if (r9 == 0) goto L85
                com.google.android.material.behavior.SwipeDismissBehavior$c r9 = new com.google.android.material.behavior.SwipeDismissBehavior$c
                com.google.android.material.behavior.SwipeDismissBehavior r10 = com.google.android.material.behavior.SwipeDismissBehavior.this
                r9.<init>(r8, r1)
                java.util.concurrent.atomic.AtomicInteger r10 = defpackage.ha.a
                r8.postOnAnimation(r9)
                goto L92
            L85:
                if (r1 == 0) goto L92
                com.google.android.material.behavior.SwipeDismissBehavior r9 = com.google.android.material.behavior.SwipeDismissBehavior.this
                com.google.android.material.behavior.SwipeDismissBehavior$b r9 = r9.b
                if (r9 == 0) goto L92
                jb5 r9 = (defpackage.jb5) r9
                r9.a(r8)
            L92:
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.material.behavior.SwipeDismissBehavior.a.k(android.view.View, float, float):void");
        }

        @Override // jb.c
        public boolean l(View view, int i) {
            int i2 = this.b;
            return (i2 == -1 || i2 == i) && SwipeDismissBehavior.this.B(view);
        }
    }

    public interface b {
    }

    public class c implements Runnable {
        public final View e;
        public final boolean f;

        public c(View view, boolean z) {
            this.e = view;
            this.f = z;
        }

        @Override // java.lang.Runnable
        public void run() {
            b bVar;
            jb jbVar = SwipeDismissBehavior.this.a;
            if (jbVar != null && jbVar.j(true)) {
                View view = this.e;
                AtomicInteger atomicInteger = ha.a;
                view.postOnAnimation(this);
            } else {
                if (!this.f || (bVar = SwipeDismissBehavior.this.b) == null) {
                    return;
                }
                ((jb5) bVar).a(this.e);
            }
        }
    }

    public static float C(float f, float f2, float f3) {
        return Math.min(Math.max(f, f2), f3);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean A(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        jb jbVar = this.a;
        if (jbVar == null) {
            return false;
        }
        jbVar.r(motionEvent);
        return true;
    }

    public boolean B(View view) {
        return true;
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean j(CoordinatorLayout coordinatorLayout, V v, MotionEvent motionEvent) {
        boolean zU = this.c;
        int actionMasked = motionEvent.getActionMasked();
        if (actionMasked == 0) {
            zU = coordinatorLayout.u(v, (int) motionEvent.getX(), (int) motionEvent.getY());
            this.c = zU;
        } else if (actionMasked == 1 || actionMasked == 3) {
            this.c = false;
        }
        if (!zU) {
            return false;
        }
        if (this.a == null) {
            this.a = new jb(coordinatorLayout.getContext(), coordinatorLayout, this.h);
        }
        return this.a.y(motionEvent);
    }

    @Override // androidx.coordinatorlayout.widget.CoordinatorLayout.c
    public boolean k(CoordinatorLayout coordinatorLayout, V v, int i) {
        AtomicInteger atomicInteger = ha.a;
        if (v.getImportantForAccessibility() == 0) {
            v.setImportantForAccessibility(1);
            ha.p(1048576, v);
            ha.k(v, 0);
            if (B(v)) {
                ha.q(v, sa.a.l, null, new d65(this));
            }
        }
        return false;
    }
}
