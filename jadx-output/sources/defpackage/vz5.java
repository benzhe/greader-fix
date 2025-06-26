package defpackage;

import android.R;
import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Application;
import android.view.View;

/* loaded from: classes.dex */
public class vz5 extends AnimatorListenerAdapter {
    public final /* synthetic */ View a;
    public final /* synthetic */ Application b;

    public vz5(wz5 wz5Var, View view, Application application) {
        this.a = view;
        this.b = application;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        this.a.animate().translationX(0.0f).translationY(0.0f).alpha(1.0f).setDuration(this.b.getResources().getInteger(R.integer.config_longAnimTime)).setListener(null);
    }
}
