package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.transformation.FabTransformationBehavior;
import defpackage.w65;

/* loaded from: classes.dex */
public class lc5 extends AnimatorListenerAdapter {
    public final /* synthetic */ w65 a;

    public lc5(FabTransformationBehavior fabTransformationBehavior, w65 w65Var) {
        this.a = w65Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        w65.e revealInfo = this.a.getRevealInfo();
        revealInfo.c = Float.MAX_VALUE;
        this.a.setRevealInfo(revealInfo);
    }
}
