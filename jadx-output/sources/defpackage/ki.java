package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import defpackage.qh;

/* loaded from: classes.dex */
public abstract class ki extends qh {
    public static final String[] C = {"android:visibility:visibility", "android:visibility:parent"};
    public int B = 3;

    public static class a extends AnimatorListenerAdapter implements qh.d {
        public final View a;
        public final int b;
        public final ViewGroup c;
        public final boolean d;
        public boolean e;
        public boolean f = false;

        public a(View view, int i, boolean z) {
            this.a = view;
            this.b = i;
            this.c = (ViewGroup) view.getParent();
            this.d = z;
            g(true);
        }

        @Override // qh.d
        public void a(qh qhVar) {
        }

        @Override // qh.d
        public void b(qh qhVar) {
            g(false);
        }

        @Override // qh.d
        public void c(qh qhVar) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            f();
            qhVar.x(this);
        }

        @Override // qh.d
        public void d(qh qhVar) {
        }

        @Override // qh.d
        public void e(qh qhVar) {
            g(true);
        }

        public final void f() throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            if (!this.f) {
                ci.a.f(this.a, this.b);
                ViewGroup viewGroup = this.c;
                if (viewGroup != null) {
                    viewGroup.invalidate();
                }
            }
            g(false);
        }

        public final void g(boolean z) {
            ViewGroup viewGroup;
            if (!this.d || this.e == z || (viewGroup = this.c) == null) {
                return;
            }
            this.e = z;
            ai.a(viewGroup, z);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationCancel(Animator animator) {
            this.f = true;
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            f();
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationPause(Animator animator) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            if (this.f) {
                return;
            }
            ci.a.f(this.a, this.b);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationRepeat(Animator animator) {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorPauseListener
        public void onAnimationResume(Animator animator) throws IllegalAccessException, NoSuchFieldException, IllegalArgumentException {
            if (this.f) {
                return;
            }
            ci.a.f(this.a, 0);
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationStart(Animator animator) {
        }
    }

    public static class b {
        public boolean a;
        public boolean b;
        public int c;
        public int d;
        public ViewGroup e;
        public ViewGroup f;
    }

    public final void K(yh yhVar) {
        yhVar.a.put("android:visibility:visibility", Integer.valueOf(yhVar.b.getVisibility()));
        yhVar.a.put("android:visibility:parent", yhVar.b.getParent());
        int[] iArr = new int[2];
        yhVar.b.getLocationOnScreen(iArr);
        yhVar.a.put("android:visibility:screenLocation", iArr);
    }

    public final b L(yh yhVar, yh yhVar2) {
        b bVar = new b();
        bVar.a = false;
        bVar.b = false;
        if (yhVar == null || !yhVar.a.containsKey("android:visibility:visibility")) {
            bVar.c = -1;
            bVar.e = null;
        } else {
            bVar.c = ((Integer) yhVar.a.get("android:visibility:visibility")).intValue();
            bVar.e = (ViewGroup) yhVar.a.get("android:visibility:parent");
        }
        if (yhVar2 == null || !yhVar2.a.containsKey("android:visibility:visibility")) {
            bVar.d = -1;
            bVar.f = null;
        } else {
            bVar.d = ((Integer) yhVar2.a.get("android:visibility:visibility")).intValue();
            bVar.f = (ViewGroup) yhVar2.a.get("android:visibility:parent");
        }
        if (yhVar != null && yhVar2 != null) {
            int i = bVar.c;
            int i2 = bVar.d;
            if (i == i2 && bVar.e == bVar.f) {
                return bVar;
            }
            if (i != i2) {
                if (i == 0) {
                    bVar.b = false;
                    bVar.a = true;
                } else if (i2 == 0) {
                    bVar.b = true;
                    bVar.a = true;
                }
            } else if (bVar.f == null) {
                bVar.b = false;
                bVar.a = true;
            } else if (bVar.e == null) {
                bVar.b = true;
                bVar.a = true;
            }
        } else if (yhVar == null && bVar.d == 0) {
            bVar.b = true;
            bVar.a = true;
        } else if (yhVar2 == null && bVar.c == 0) {
            bVar.b = false;
            bVar.a = true;
        }
        return bVar;
    }

    public abstract Animator M(ViewGroup viewGroup, View view, yh yhVar, yh yhVar2);

    @Override // defpackage.qh
    public void e(yh yhVar) {
        K(yhVar);
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0041, code lost:
    
        if (L(p(r1, false), s(r1, false)).a != false) goto L29;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x0229  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0178  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x01f9  */
    @Override // defpackage.qh
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public android.animation.Animator l(android.view.ViewGroup r24, defpackage.yh r25, defpackage.yh r26) throws java.lang.IllegalAccessException, java.lang.NoSuchFieldException, java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 703
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.ki.l(android.view.ViewGroup, yh, yh):android.animation.Animator");
    }

    @Override // defpackage.qh
    public String[] r() {
        return C;
    }

    @Override // defpackage.qh
    public boolean t(yh yhVar, yh yhVar2) {
        if (yhVar == null && yhVar2 == null) {
            return false;
        }
        if (yhVar != null && yhVar2 != null && yhVar2.a.containsKey("android:visibility:visibility") != yhVar.a.containsKey("android:visibility:visibility")) {
            return false;
        }
        b bVarL = L(yhVar, yhVar2);
        if (bVarL.a) {
            return bVarL.c == 0 || bVarL.d == 0;
        }
        return false;
    }
}
