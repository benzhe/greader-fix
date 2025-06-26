package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import defpackage.e85;

/* loaded from: classes.dex */
public class d85 extends AnimatorListenerAdapter {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ e85.f b;
    public final /* synthetic */ e85 c;

    public d85(e85 e85Var, boolean z, e85.f fVar) {
        this.c = e85Var;
        this.a = z;
        this.b = fVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        e85 e85Var = this.c;
        e85Var.u = 0;
        e85Var.o = null;
        e85.f fVar = this.b;
        if (fVar != null) {
            b85 b85Var = (b85) fVar;
            b85Var.a.b(b85Var.b);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.c.y.b(0, this.a);
        e85 e85Var = this.c;
        e85Var.u = 2;
        e85Var.o = animator;
    }
}
