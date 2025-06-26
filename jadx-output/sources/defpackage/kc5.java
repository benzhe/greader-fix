package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.graphics.drawable.Drawable;
import com.google.android.material.transformation.FabTransformationBehavior;

/* loaded from: classes.dex */
public class kc5 extends AnimatorListenerAdapter {
    public final /* synthetic */ w65 a;
    public final /* synthetic */ Drawable b;

    public kc5(FabTransformationBehavior fabTransformationBehavior, w65 w65Var, Drawable drawable) {
        this.a = w65Var;
        this.b = drawable;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.a.setCircularRevealOverlayDrawable(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.a.setCircularRevealOverlayDrawable(this.b);
    }
}
