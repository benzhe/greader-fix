package defpackage;

import android.graphics.Rect;
import android.view.View;
import androidx.fragment.app.Fragment;
import defpackage.ic;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class hc implements Runnable {
    public final /* synthetic */ nc e;
    public final /* synthetic */ f4 f;
    public final /* synthetic */ Object g;
    public final /* synthetic */ ic.a h;
    public final /* synthetic */ ArrayList i;
    public final /* synthetic */ View j;
    public final /* synthetic */ Fragment k;
    public final /* synthetic */ Fragment l;
    public final /* synthetic */ boolean m;
    public final /* synthetic */ ArrayList n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Rect p;

    public hc(nc ncVar, f4 f4Var, Object obj, ic.a aVar, ArrayList arrayList, View view, Fragment fragment, Fragment fragment2, boolean z, ArrayList arrayList2, Object obj2, Rect rect) {
        this.e = ncVar;
        this.f = f4Var;
        this.g = obj;
        this.h = aVar;
        this.i = arrayList;
        this.j = view;
        this.k = fragment;
        this.l = fragment2;
        this.m = z;
        this.n = arrayList2;
        this.o = obj2;
        this.p = rect;
    }

    @Override // java.lang.Runnable
    public void run() {
        f4<String, View> f4VarE = ic.e(this.e, this.f, this.g, this.h);
        if (f4VarE != null) {
            this.i.addAll(f4VarE.values());
            this.i.add(this.j);
        }
        ic.c(this.k, this.l, this.m, f4VarE, false);
        Object obj = this.g;
        if (obj != null) {
            this.e.u(obj, this.n, this.i);
            View viewK = ic.k(f4VarE, this.h, this.o, this.m);
            if (viewK != null) {
                this.e.j(viewK, this.p);
            }
        }
    }
}
