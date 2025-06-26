package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.bottomappbar.BottomAppBar;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* loaded from: classes.dex */
public class i65 extends AnimatorListenerAdapter {
    public final /* synthetic */ BottomAppBar a;

    public i65(BottomAppBar bottomAppBar) {
        this.a = bottomAppBar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.a.o0.onAnimationStart(animator);
        FloatingActionButton floatingActionButtonD = this.a.D();
        if (floatingActionButtonD != null) {
            floatingActionButtonD.setTranslationX(this.a.getFabTranslationX());
        }
    }
}
