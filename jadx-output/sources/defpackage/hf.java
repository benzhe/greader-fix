package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.of;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class hf implements Runnable {
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ of f;

    public hf(of ofVar, ArrayList arrayList) {
        this.f = ofVar;
        this.e = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            of.a aVar = (of.a) it.next();
            of ofVar = this.f;
            Objects.requireNonNull(ofVar);
            RecyclerView.a0 a0Var = aVar.a;
            View view = a0Var == null ? null : a0Var.itemView;
            RecyclerView.a0 a0Var2 = aVar.b;
            View view2 = a0Var2 != null ? a0Var2.itemView : null;
            if (view != null) {
                ViewPropertyAnimator duration = view.animate().setDuration(ofVar.f);
                ofVar.r.add(aVar.a);
                duration.translationX(aVar.e - aVar.c);
                duration.translationY(aVar.f - aVar.d);
                duration.alpha(0.0f).setListener(new mf(ofVar, aVar, duration, view)).start();
            }
            if (view2 != null) {
                ViewPropertyAnimator viewPropertyAnimatorAnimate = view2.animate();
                ofVar.r.add(aVar.b);
                viewPropertyAnimatorAnimate.translationX(0.0f).translationY(0.0f).setDuration(ofVar.f).alpha(1.0f).setListener(new nf(ofVar, aVar, viewPropertyAnimatorAnimate, view2)).start();
            }
        }
        this.e.clear();
        this.f.n.remove(this.e);
    }
}
