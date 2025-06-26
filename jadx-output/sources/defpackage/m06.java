package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewGroup;
import defpackage.l06;

/* loaded from: classes.dex */
public class m06 extends AnimatorListenerAdapter {
    public final /* synthetic */ ViewGroup.LayoutParams a;
    public final /* synthetic */ int b;
    public final /* synthetic */ l06 c;

    public m06(l06 l06Var, ViewGroup.LayoutParams layoutParams, int i) {
        this.c = l06Var;
        this.a = layoutParams;
        this.b = i;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        l06 l06Var = this.c;
        l06.b bVar = l06Var.j;
        View view = l06Var.i;
        Object obj = l06Var.p;
        a06 a06Var = (a06) bVar;
        if (a06Var.a.d() != null) {
            a06Var.a.d().onClick(view);
        }
        this.c.i.setAlpha(1.0f);
        this.c.i.setTranslationX(0.0f);
        ViewGroup.LayoutParams layoutParams = this.a;
        layoutParams.height = this.b;
        this.c.i.setLayoutParams(layoutParams);
    }
}
