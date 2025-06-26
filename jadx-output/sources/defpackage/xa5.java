package defpackage;

import android.animation.AnimatorSet;
import android.animation.ValueAnimator;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import java.util.Objects;

/* loaded from: classes.dex */
public class xa5 implements Runnable {
    public final /* synthetic */ BaseTransientBottomBar e;

    public xa5(BaseTransientBottomBar baseTransientBottomBar) {
        this.e = baseTransientBottomBar;
    }

    @Override // java.lang.Runnable
    public void run() {
        BaseTransientBottomBar.SnackbarBaseLayout snackbarBaseLayout = this.e.c;
        if (snackbarBaseLayout == null) {
            return;
        }
        if (snackbarBaseLayout.getParent() != null) {
            this.e.c.setVisibility(0);
        }
        if (this.e.c.getAnimationMode() != 1) {
            BaseTransientBottomBar baseTransientBottomBar = this.e;
            int iC = baseTransientBottomBar.c();
            baseTransientBottomBar.c.setTranslationY(iC);
            ValueAnimator valueAnimator = new ValueAnimator();
            valueAnimator.setIntValues(iC, 0);
            valueAnimator.setInterpolator(i55.b);
            valueAnimator.setDuration(250L);
            valueAnimator.addListener(new cb5(baseTransientBottomBar));
            valueAnimator.addUpdateListener(new db5(baseTransientBottomBar, iC));
            valueAnimator.start();
            return;
        }
        BaseTransientBottomBar baseTransientBottomBar2 = this.e;
        Objects.requireNonNull(baseTransientBottomBar2);
        ValueAnimator valueAnimatorOfFloat = ValueAnimator.ofFloat(0.0f, 1.0f);
        valueAnimatorOfFloat.setInterpolator(i55.a);
        valueAnimatorOfFloat.addUpdateListener(new ab5(baseTransientBottomBar2));
        ValueAnimator valueAnimatorOfFloat2 = ValueAnimator.ofFloat(0.8f, 1.0f);
        valueAnimatorOfFloat2.setInterpolator(i55.d);
        valueAnimatorOfFloat2.addUpdateListener(new bb5(baseTransientBottomBar2));
        AnimatorSet animatorSet = new AnimatorSet();
        animatorSet.playTogether(valueAnimatorOfFloat, valueAnimatorOfFloat2);
        animatorSet.setDuration(150L);
        animatorSet.addListener(new ya5(baseTransientBottomBar2));
        animatorSet.start();
    }
}
