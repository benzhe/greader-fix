package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* renamed from: if, reason: invalid class name */
/* loaded from: classes.dex */
public class Cif implements Runnable {
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ of f;

    public Cif(of ofVar, ArrayList arrayList) {
        this.f = ofVar;
        this.e = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            RecyclerView.a0 a0Var = (RecyclerView.a0) it.next();
            of ofVar = this.f;
            Objects.requireNonNull(ofVar);
            View view = a0Var.itemView;
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            ofVar.o.add(a0Var);
            viewPropertyAnimatorAnimate.alpha(1.0f).setDuration(ofVar.c).setListener(new kf(ofVar, a0Var, view, viewPropertyAnimatorAnimate)).start();
        }
        this.e.clear();
        this.f.l.remove(this.e);
    }
}
