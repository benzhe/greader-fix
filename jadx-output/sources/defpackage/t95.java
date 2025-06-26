package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class t95 extends AnimatorListenerAdapter {
    public final /* synthetic */ u95 a;

    public t95(u95 u95Var) {
        this.a = u95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        super.onAnimationRepeat(animator);
        u95 u95Var = this.a;
        u95Var.g = (u95Var.g + 1) % u95Var.f.c.length;
        u95Var.h = true;
    }
}
