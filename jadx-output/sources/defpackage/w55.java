package defpackage;

import android.animation.ValueAnimator;
import com.google.android.material.appbar.CollapsingToolbarLayout;

/* loaded from: classes.dex */
public class w55 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ CollapsingToolbarLayout a;

    public w55(CollapsingToolbarLayout collapsingToolbarLayout) {
        this.a = collapsingToolbarLayout;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.setScrimAlpha(((Integer) valueAnimator.getAnimatedValue()).intValue());
    }
}
