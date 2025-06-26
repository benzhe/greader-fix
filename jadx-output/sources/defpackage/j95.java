package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class j95 extends AnimatorListenerAdapter {
    public final /* synthetic */ k95 a;

    public j95(k95 k95Var) {
        this.a = k95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.a.a();
        k95 k95Var = this.a;
        k95Var.k.a(k95Var.a);
    }
}
