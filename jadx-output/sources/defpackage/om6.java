package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.view.View;
import com.miguelcatalan.materialsearchview.MaterialSearchView;
import java.util.Objects;

/* loaded from: classes.dex */
public final class om6 extends AnimatorListenerAdapter {
    public final /* synthetic */ pm6 a;
    public final /* synthetic */ View b;

    public om6(pm6 pm6Var, View view) {
        this.a = pm6Var;
        this.b = view;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationCancel(Animator animator) {
        Objects.requireNonNull(this.a);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        MaterialSearchView.e eVar = ((mm6) this.a).a.t;
        if (eVar != null) {
            eVar.a();
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationRepeat(Animator animator) {
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        Objects.requireNonNull(this.a);
    }
}
