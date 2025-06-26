package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* loaded from: classes.dex */
public class m95 extends AnimatorListenerAdapter {
    public final /* synthetic */ o95 a;

    public m95(o95 o95Var) {
        this.a = o95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        super.onAnimationStart(animator);
        o95 o95Var = this.a;
        List<oi> list = o95Var.j;
        if (list == null || o95Var.k) {
            return;
        }
        Iterator<oi> it = list.iterator();
        while (it.hasNext()) {
            Objects.requireNonNull(it.next());
        }
    }
}
