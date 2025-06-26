package defpackage;

import android.animation.ValueAnimator;
import android.view.ViewGroup;

/* loaded from: classes.dex */
public class n06 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ ViewGroup.LayoutParams a;
    public final /* synthetic */ l06 b;

    public n06(l06 l06Var, ViewGroup.LayoutParams layoutParams) {
        this.b = l06Var;
        this.a = layoutParams;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.height = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.b.i.setLayoutParams(this.a);
    }
}
