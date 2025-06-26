package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import com.google.android.material.floatingactionbutton.FloatingActionButton;
import defpackage.e85;

/* loaded from: classes.dex */
public class c85 extends AnimatorListenerAdapter {
    public boolean a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ e85.f c;
    public final /* synthetic */ e85 d;

    public c85(e85 e85Var, boolean z, e85.f fVar) {
        this.d = e85Var;
        this.b = z;
        this.c = fVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        this.a = true;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        e85 e85Var = this.d;
        e85Var.u = 0;
        e85Var.o = null;
        if (this.a) {
            return;
        }
        FloatingActionButton floatingActionButton = e85Var.y;
        boolean z = this.b;
        floatingActionButton.b(z ? 8 : 4, z);
        e85.f fVar = this.c;
        if (fVar != null) {
            b85 b85Var = (b85) fVar;
            b85Var.a.a(b85Var.b);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.d.y.b(0, this.b);
        e85 e85Var = this.d;
        e85Var.u = 1;
        e85Var.o = animator;
        this.a = false;
    }
}
