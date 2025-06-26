package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.of;
import java.util.Objects;

/* loaded from: classes.dex */
public class mf extends AnimatorListenerAdapter {
    public final /* synthetic */ of.a a;
    public final /* synthetic */ ViewPropertyAnimator b;
    public final /* synthetic */ View c;
    public final /* synthetic */ of d;

    public mf(of ofVar, of.a aVar, ViewPropertyAnimator viewPropertyAnimator, View view) {
        this.d = ofVar;
        this.a = aVar;
        this.b = viewPropertyAnimator;
        this.c = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        this.b.setListener(null);
        this.c.setAlpha(1.0f);
        this.c.setTranslationX(0.0f);
        this.c.setTranslationY(0.0f);
        this.d.c(this.a.a);
        this.d.r.remove(this.a.a);
        this.d.k();
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        of ofVar = this.d;
        RecyclerView.a0 a0Var = this.a.a;
        Objects.requireNonNull(ofVar);
    }
}
