package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class v95 extends AnimatorListenerAdapter {
    public final /* synthetic */ w95 a;

    public v95(w95 w95Var) {
        this.a = w95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        w95 w95Var = this.a;
        if (w95Var.j) {
            w95Var.d.setRepeatCount(-1);
            w95 w95Var2 = this.a;
            w95Var2.k.a(w95Var2.a);
            this.a.j = false;
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        w95 w95Var = this.a;
        w95Var.g = (w95Var.g + 1) % w95Var.f.c.length;
        w95Var.h = true;
    }
}
