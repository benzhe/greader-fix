package defpackage;

import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public class yf extends dg {
    public wf c;
    public wf d;

    @Override // defpackage.dg
    public int[] b(RecyclerView.m mVar, View view) {
        int[] iArr = new int[2];
        if (mVar.e()) {
            iArr[0] = e(view, g(mVar));
        } else {
            iArr[0] = 0;
        }
        if (mVar.f()) {
            iArr[1] = e(view, h(mVar));
        } else {
            iArr[1] = 0;
        }
        return iArr;
    }

    @Override // defpackage.dg
    public View c(RecyclerView.m mVar) {
        if (mVar.f()) {
            return f(mVar, h(mVar));
        }
        if (mVar.e()) {
            return f(mVar, g(mVar));
        }
        return null;
    }

    public final int e(View view, wf wfVar) {
        return ((wfVar.c(view) / 2) + wfVar.e(view)) - ((wfVar.l() / 2) + wfVar.k());
    }

    public final View f(RecyclerView.m mVar, wf wfVar) {
        int iY = mVar.y();
        View view = null;
        if (iY == 0) {
            return null;
        }
        int iL = (wfVar.l() / 2) + wfVar.k();
        int i = Integer.MAX_VALUE;
        for (int i2 = 0; i2 < iY; i2++) {
            View viewX = mVar.x(i2);
            int iAbs = Math.abs(((wfVar.c(viewX) / 2) + wfVar.e(viewX)) - iL);
            if (iAbs < i) {
                view = viewX;
                i = iAbs;
            }
        }
        return view;
    }

    public final wf g(RecyclerView.m mVar) {
        wf wfVar = this.d;
        if (wfVar == null || wfVar.a != mVar) {
            this.d = new uf(mVar);
        }
        return this.d;
    }

    public final wf h(RecyclerView.m mVar) {
        wf wfVar = this.c;
        if (wfVar == null || wfVar.a != mVar) {
            this.c = new vf(mVar);
        }
        return this.c;
    }
}
