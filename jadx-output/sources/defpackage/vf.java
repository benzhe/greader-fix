package defpackage;

import android.view.View;
import android.view.ViewGroup;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class vf extends wf {
    public vf(RecyclerView.m mVar) {
        super(mVar, null);
    }

    @Override // defpackage.wf
    public int b(View view) {
        return this.a.B(view) + ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).bottomMargin;
    }

    @Override // defpackage.wf
    public int c(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return this.a.E(view) + ((ViewGroup.MarginLayoutParams) nVar).topMargin + ((ViewGroup.MarginLayoutParams) nVar).bottomMargin;
    }

    @Override // defpackage.wf
    public int d(View view) {
        RecyclerView.n nVar = (RecyclerView.n) view.getLayoutParams();
        return this.a.F(view) + ((ViewGroup.MarginLayoutParams) nVar).leftMargin + ((ViewGroup.MarginLayoutParams) nVar).rightMargin;
    }

    @Override // defpackage.wf
    public int e(View view) {
        return this.a.H(view) - ((ViewGroup.MarginLayoutParams) ((RecyclerView.n) view.getLayoutParams())).topMargin;
    }

    @Override // defpackage.wf
    public int f() {
        return this.a.q;
    }

    @Override // defpackage.wf
    public int g() {
        RecyclerView.m mVar = this.a;
        return mVar.q - mVar.N();
    }

    @Override // defpackage.wf
    public int h() {
        return this.a.N();
    }

    @Override // defpackage.wf
    public int i() {
        return this.a.o;
    }

    @Override // defpackage.wf
    public int j() {
        return this.a.n;
    }

    @Override // defpackage.wf
    public int k() {
        return this.a.Q();
    }

    @Override // defpackage.wf
    public int l() {
        RecyclerView.m mVar = this.a;
        return (mVar.q - mVar.Q()) - this.a.N();
    }

    @Override // defpackage.wf
    public int n(View view) {
        this.a.V(view, true, this.c);
        return this.c.bottom;
    }

    @Override // defpackage.wf
    public int o(View view) {
        this.a.V(view, true, this.c);
        return this.c.top;
    }

    @Override // defpackage.wf
    public void p(int i) {
        this.a.c0(i);
    }
}
