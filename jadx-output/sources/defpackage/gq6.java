package defpackage;

import android.animation.ValueAnimator;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;

/* loaded from: classes2.dex */
public class gq6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ HomeTabletActivity a;

    public gq6(HomeTabletActivity homeTabletActivity) {
        this.a = homeTabletActivity;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.Y.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.Y.requestLayout();
    }
}
