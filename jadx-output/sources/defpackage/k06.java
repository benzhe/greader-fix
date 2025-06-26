package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class k06 extends AnimatorListenerAdapter {
    public final /* synthetic */ l06 a;

    public k06(l06 l06Var) {
        this.a = l06Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l06 l06Var = this.a;
        ViewGroup.LayoutParams layoutParams = l06Var.i.getLayoutParams();
        int height = l06Var.i.getHeight();
        ValueAnimator duration = ValueAnimator.ofInt(height, 1).setDuration(l06Var.h);
        duration.addListener(new m06(l06Var, layoutParams, height));
        duration.addUpdateListener(new n06(l06Var, layoutParams));
        duration.start();
    }
}
