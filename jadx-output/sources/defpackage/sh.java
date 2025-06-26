package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
public class sh extends AnimatorListenerAdapter {
    public final /* synthetic */ qh a;

    public sh(qh qhVar) {
        this.a = qhVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.a.o();
        animator.removeListener(this);
    }
}
