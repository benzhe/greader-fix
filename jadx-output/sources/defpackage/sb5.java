package defpackage;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public class sb5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ pb5 a;

    public sb5(pb5 pb5Var) {
        this.a = pb5Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.c.setAlpha(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
