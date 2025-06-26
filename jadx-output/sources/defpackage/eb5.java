package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.snackbar.BaseTransientBottomBar;
import com.google.android.material.snackbar.SnackbarContentLayout;

/* loaded from: classes.dex */
public class eb5 extends AnimatorListenerAdapter {
    public final /* synthetic */ int a;
    public final /* synthetic */ BaseTransientBottomBar b;

    public eb5(BaseTransientBottomBar baseTransientBottomBar, int i) {
        this.b = baseTransientBottomBar;
        this.a = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.b.d(this.a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        SnackbarContentLayout snackbarContentLayout = (SnackbarContentLayout) this.b.d;
        snackbarContentLayout.e.setAlpha(1.0f);
        long j = 180;
        long j2 = 0;
        snackbarContentLayout.e.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        if (snackbarContentLayout.f.getVisibility() == 0) {
            snackbarContentLayout.f.setAlpha(1.0f);
            snackbarContentLayout.f.animate().alpha(0.0f).setDuration(j).setStartDelay(j2).start();
        }
    }
}
