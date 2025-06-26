package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class uf extends wf {
    public uf(RecyclerView.m mVar) {
        super(mVar, null);
    }

    @Override // defpackage.wf
    public int b(View view) {
        return this.a.G(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).rightMargin;
    }

    @Override // defpackage.wf
    public int c(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return this.a.F(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
    }

    @Override // defpackage.wf
    public int d(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return this.a.E(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
    }

    @Override // defpackage.wf
    public int e(View view) {
        return this.a.D(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).leftMargin;
    }

    @Override // defpackage.wf
    public int f() {
        return this.a.p;
    }

    @Override // defpackage.wf
    public int g() {
        RecyclerView.m mVar = this.a;
        return mVar.p - mVar.P();
    }

    @Override // defpackage.wf
    public int h() {
        return this.a.P();
    }

    @Override // defpackage.wf
    public int i() {
        return this.a.n;
    }

    @Override // defpackage.wf
    public int j() {
        return this.a.o;
    }

    @Override // defpackage.wf
    public int k() {
        return this.a.O();
    }

    @Override // defpackage.wf
    public int l() {
        RecyclerView.m mVar = this.a;
        return (mVar.p - mVar.O()) - this.a.P();
    }

    @Override // defpackage.wf
    public int n(View view) {
        this.a.V(view, true, this.c);
        return this.c.right;
    }

    @Override // defpackage.wf
    public int o(View view) {
        this.a.V(view, true, this.c);
        return this.c.left;
    }

    @Override // defpackage.wf
    public void p(int i) {
        this.a.b0(i);
    }
}
