package defpackage;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public class xb5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ wb5 a;

    public xb5(wb5 wb5Var) {
        this.a = wb5Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
