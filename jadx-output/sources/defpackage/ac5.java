package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class ac5 extends AnimatorListenerAdapter {
    public final /* synthetic */ wb5 a;

    public ac5(wb5 wb5Var) {
        this.a = wb5Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        wb5 wb5Var = this.a;
        wb5Var.c.setChecked(wb5Var.j);
        this.a.p.start();
    }
}
