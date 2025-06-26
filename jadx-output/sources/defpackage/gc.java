package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;

/* loaded from: classes.dex */
public final class gc implements Runnable {
    public final /* synthetic */ Fragment e;
    public final /* synthetic */ Fragment f;
    public final /* synthetic */ boolean g;
    public final /* synthetic */ f4 h;
    public final /* synthetic */ View i;
    public final /* synthetic */ nc j;
    public final /* synthetic */ Rect k;

    public gc(Fragment fragment, Fragment fragment2, boolean z, f4 f4Var, View view, nc ncVar, Rect rect) {
        this.e = fragment;
        this.f = fragment2;
        this.g = z;
        this.h = f4Var;
        this.i = view;
        this.j = ncVar;
        this.k = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        ic.c(this.e, this.f, this.g, this.h, false);
        View view = this.i;
        if (view != null) {
            this.j.j(view, this.k);
        }
    }
}
