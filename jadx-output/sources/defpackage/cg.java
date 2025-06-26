package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import defpackage.of;

/* loaded from: classes.dex */
public abstract class cg extends RecyclerView.j {
    public boolean g = true;

    @Override // androidx.recyclerview.widget.RecyclerView.j
    public boolean a(RecyclerView.a0 a0Var, RecyclerView.a0 a0Var2, RecyclerView.j.c cVar, RecyclerView.j.c cVar2) {
        int i;
        int i2;
        int i3 = cVar.a;
        int i4 = cVar.b;
        if (a0Var2.shouldIgnore()) {
            int i5 = cVar.a;
            i2 = cVar.b;
            i = i5;
        } else {
            i = cVar2.a;
            i2 = cVar2.b;
        }
        of ofVar = (of) this;
        if (a0Var == a0Var2) {
            return ofVar.i(a0Var, i3, i4, i, i2);
        }
        float translationX = a0Var.itemView.getTranslationX();
        float translationY = a0Var.itemView.getTranslationY();
        float alpha = a0Var.itemView.getAlpha();
        ofVar.n(a0Var);
        a0Var.itemView.setTranslationX(translationX);
        a0Var.itemView.setTranslationY(translationY);
        a0Var.itemView.setAlpha(alpha);
        ofVar.n(a0Var2);
        a0Var2.itemView.setTranslationX(-((int) ((i - i3) - translationX)));
        a0Var2.itemView.setTranslationY(-((int) ((i2 - i4) - translationY)));
        a0Var2.itemView.setAlpha(0.0f);
        ofVar.k.add(new of.a(a0Var, a0Var2, i3, i4, i, i2));
        return true;
    }

    public abstract boolean i(RecyclerView.a0 a0Var, int i, int i2, int i3, int i4);
}
