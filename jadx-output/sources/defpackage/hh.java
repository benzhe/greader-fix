package defpackage;

import android.animation.Animator;
import defpackage.ih;

/* loaded from: classes.dex */
public class hh implements Animator.AnimatorListener {
    public final /* synthetic */ ih.a a;
    public final /* synthetic */ ih b;

    public hh(ih ihVar, ih.a aVar) {
        this.b = ihVar;
        this.a = aVar;
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
        this.b.a(1.0f, this.a, true);
        ih.a aVar = this.a;
        aVar.k = aVar.e;
        aVar.l = aVar.f;
        aVar.m = aVar.g;
        aVar.a((aVar.j + 1) % aVar.i.length);
        ih ihVar = this.b;
        if (!ihVar.j) {
            ihVar.i += 1.0f;
            return;
        }
        ihVar.j = false;
        animator.cancel();
        animator.setDuration(1332L);
        animator.start();
        this.a.b(false);
    }

    @Override // android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        this.b.i = 0.0f;
    }
}
