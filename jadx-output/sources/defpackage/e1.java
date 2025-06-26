package defpackage;

import android.content.Context;
import android.view.LayoutInflater;
import defpackage.p1;

/* loaded from: classes.dex */
public abstract class e1 implements p1 {
    public Context e;
    public Context f;
    public j1 g;
    public LayoutInflater h;
    public p1.a i;
    public int j;
    public int k;
    public q1 l;
    public int m;

    public e1(Context context, int i, int i2) {
        this.e = context;
        this.h = LayoutInflater.from(context);
        this.j = i;
        this.k = i2;
    }

    @Override // defpackage.p1
    public int n() {
        return this.m;
    }

    @Override // defpackage.p1
    public boolean q(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public boolean r(j1 j1Var, l1 l1Var) {
        return false;
    }

    @Override // defpackage.p1
    public void s(p1.a aVar) {
        this.i = aVar;
    }
}
