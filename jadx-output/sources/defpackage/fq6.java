package defpackage;

import android.animation.ValueAnimator;
import com.noinnion.android.greader.ui.home.HomeTabletActivity;

/* loaded from: classes2.dex */
public class fq6 implements ValueAnimator.AnimatorUpdateListener {
    public final /* synthetic */ HomeTabletActivity a;

    public fq6(HomeTabletActivity homeTabletActivity) {
        this.a = homeTabletActivity;
    }

    @Override // android.animation.ValueAnimator.AnimatorUpdateListener
    public void onAnimationUpdate(ValueAnimator valueAnimator) {
        this.a.X.getLayoutParams().width = ((Integer) valueAnimator.getAnimatedValue()).intValue();
        this.a.X.requestLayout();
    }
}
