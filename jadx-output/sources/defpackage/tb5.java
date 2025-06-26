package defpackage;

import android.animation.ValueAnimator;

/* loaded from: classes.dex */
public class tb5 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ pb5 a;

    public tb5(pb5 pb5Var) {
        this.a = pb5Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        float fFloatValue = ((Float) valueAnimator.getAnimatedValue()).floatValue();
        this.a.c.setScaleX(fFloatValue);
        this.a.c.setScaleY(fFloatValue);
    }
}
