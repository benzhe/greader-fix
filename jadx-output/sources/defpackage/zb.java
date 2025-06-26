package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.content.res.Resources;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public class zb extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup a;
    public final /* synthetic */ View b;
    public final /* synthetic */ Fragment c;
    public final /* synthetic */ xb d;

    public zb(xb xbVar, ViewGroup viewGroup, View view, Fragment fragment) {
        this.d = xbVar;
        this.a = viewGroup;
        this.b = view;
        this.c = fragment;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) throws Resources.NotFoundException {
        this.a.endViewTransition(this.b);
        Animator animator2 = this.c.getAnimator();
        this.c.setAnimator(null);
        if (animator2 == null || this.a.indexOfChild(this.b) >= 0) {
            return;
        }
        xb xbVar = this.d;
        Fragment fragment = this.c;
        xbVar.i0(fragment, fragment.getStateAfterAnimating(), 0, 0, false);
    }
}
