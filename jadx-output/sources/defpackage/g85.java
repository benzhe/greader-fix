package defpackage;

import android.view.ViewTreeObserver;

/* loaded from: classes.dex */
public class g85 implements ViewTreeObserver.OnPreDrawListener {
    public final /* synthetic */ e85 e;

    public g85(e85 e85Var) {
        this.e = e85Var;
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        e85 e85Var = this.e;
        float rotation = e85Var.y.getRotation();
        if (e85Var.r == rotation) {
            return true;
        }
        e85Var.r = rotation;
        e85Var.v();
        return true;
    }
}
