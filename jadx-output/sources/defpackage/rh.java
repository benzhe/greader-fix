package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class rh extends AnimatorListenerAdapter {
    public final /* synthetic */ f4 a;
    public final /* synthetic */ qh b;

    public rh(qh qhVar, f4 f4Var) {
        this.b = qhVar;
        this.a = f4Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.a.remove(animator);
        this.b.q.remove(animator);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.b.q.add(animator);
    }
}
