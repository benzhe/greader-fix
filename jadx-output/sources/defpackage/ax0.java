package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class ax0 implements View.OnAttachStateChangeListener {
    public final /* synthetic */ np0 e;
    public final /* synthetic */ ww0 f;

    public ax0(ww0 ww0Var, np0 np0Var) {
        this.f = ww0Var;
        this.e = np0Var;
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewAttachedToWindow(View view) {
        this.f.s(view, this.e, 10);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public final void onViewDetachedFromWindow(View view) {
    }
}
