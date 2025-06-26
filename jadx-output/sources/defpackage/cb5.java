package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes.dex */
public class cb5 extends AnimatorListenerAdapter {
    public final /* synthetic */ BaseTransientBottomBar a;

    public cb5(BaseTransientBottomBar baseTransientBottomBar) {
        this.a = baseTransientBottomBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.a.e();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) this.a.d;
        snackbarContentLayout.e.setAlpha(0.0f);
        long j = 180;
        long j2 = 70;
        snackbarContentLayout.e.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        if (snackbarContentLayout.f.getVisibility() == 0) {
            snackbarContentLayout.f.setAlpha(0.0f);
            snackbarContentLayout.f.animate().alpha(1.0f).setDuration(j).setStartDelay(j2).start();
        }
    }
}
