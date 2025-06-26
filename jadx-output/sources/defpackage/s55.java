package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.AppBarLayout;

/* loaded from: classes.dex */
public class s55 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ la5 a;

    public s55(AppBarLayout appBarLayout, la5 la5Var) {
        this.a = la5Var;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.s(((Float) valueAnimator.getAnimatedValue()).floatValue());
    }
}
