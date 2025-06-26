package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public final class bx0 implements Runnable {
    public final /* synthetic */ View e;
    public final /* synthetic */ np0 f;
    public final /* synthetic */ int g;
    public final /* synthetic */ ww0 h;

    public bx0(ww0 ww0Var, View view, np0 np0Var, int i) {
        this.h = ww0Var;
        this.e = view;
        this.f = np0Var;
        this.g = i;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.h.s(this.e, this.f, this.g - 1);
    }
}
