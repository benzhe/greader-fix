package defpackage;

import android.view.ViewTreeObserver;

/* loaded from: classes2.dex */
public class r07 implements ViewTreeObserver.OnGlobalLayoutListener {
    public final /* synthetic */ t07 e;

    public r07(t07 t07Var) {
        this.e = t07Var;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        t07 t07Var = this.e;
        t07Var.r = new float[]{(t07Var.d.getWidth() / 2) - (t07Var.b.getWidth() / 2), 0.0f};
        t07Var.r[1] = ((t07Var.d.getHeight() / 2) - (t07Var.b.getHeight() / 2)) + t07Var.s;
    }
}
