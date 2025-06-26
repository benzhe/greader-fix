package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class i95 extends AnimatorListenerAdapter {
    public final /* synthetic */ k95 a;

    public i95(k95 k95Var) {
        this.a = k95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        k95 k95Var = this.a;
        k95Var.h = (k95Var.h + 4) % k95Var.g.c.length;
    }
}
