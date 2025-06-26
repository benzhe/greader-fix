package defpackage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class n95 extends AnimatorListenerAdapter {
    public final /* synthetic */ o95 a;

    public n95(o95 o95Var) {
        this.a = o95Var;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        super.onAnimationEnd(animator);
        super/*android.graphics.drawable.Drawable*/.setVisible(false, false);
        o95 o95Var = this.a;
        List<oi> list = o95Var.j;
        if (list == null || o95Var.k) {
            return;
        }
        Iterator<oi> it = list.iterator();
        while (it.hasNext()) {
            it.next().a(o95Var);
        }
    }
}
