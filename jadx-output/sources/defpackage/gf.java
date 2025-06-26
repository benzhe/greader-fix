package defpackage;

import android.view.View;
import android.view.ViewPropertyAnimator;
import androidx.recyclerview.widget.RecyclerView;
import defpackage.of;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public class gf implements Runnable {
    public final /* synthetic */ ArrayList e;
    public final /* synthetic */ of f;

    public gf(of ofVar, ArrayList arrayList) {
        this.f = ofVar;
        this.e = arrayList;
    }

    @Override // java.lang.Runnable
    public void run() {
        Iterator it = this.e.iterator();
        while (it.hasNext()) {
            of.b bVar = (of.b) it.next();
            of ofVar = this.f;
            RecyclerView.a0 a0Var = bVar.a;
            int i = bVar.b;
            int i2 = bVar.c;
            int i3 = bVar.d;
            int i4 = bVar.e;
            Objects.requireNonNull(ofVar);
            View view = a0Var.itemView;
            int i5 = i3 - i;
            int i6 = i4 - i2;
            if (i5 != 0) {
                view.animate().translationX(0.0f);
            }
            if (i6 != 0) {
                view.animate().translationY(0.0f);
            }
            ViewPropertyAnimator viewPropertyAnimatorAnimate = view.animate();
            ofVar.p.add(a0Var);
            viewPropertyAnimatorAnimate.setDuration(ofVar.e).setListener(new lf(ofVar, a0Var, i5, view, i6, viewPropertyAnimatorAnimate)).start();
        }
        this.e.clear();
        this.f.m.remove(this.e);
    }
}
