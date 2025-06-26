package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Resources;

/* loaded from: classes.dex */
public class rb5 extends AnimatorListenerAdapter {
    public final /* synthetic */ pb5 a;

    public rb5(pb5 pb5Var) {
        this.a = pb5Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
        this.a.a.setEndIconVisible(false);
    }
}
