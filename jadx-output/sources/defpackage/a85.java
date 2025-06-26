package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.ExtendedFloatingActionButton;

/* loaded from: classes.dex */
public class a85 extends AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ i85 b;

    public a85(ExtendedFloatingActionButton extendedFloatingActionButton, i85 i85Var) {
        this.b = i85Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.a = true;
        this.b.a();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.b.e();
        if (this.a) {
            return;
        }
        this.b.g(null);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.b.onAnimationStart(animator);
        this.a = false;
    }
}
