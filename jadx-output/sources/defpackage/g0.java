package defpackage;

import android.view.View;

/* loaded from: classes.dex */
public class g0 implements Runnable {
    public final /* synthetic */ d0 e;

    public class a extends oa {
        public a() {
        }

        @Override // defpackage.na
        public void b(View view) {
            g0.this.e.s.setAlpha(1.0f);
            g0.this.e.v.d(null);
            g0.this.e.v = null;
        }

        @Override // defpackage.oa, defpackage.na
        public void c(View view) {
            g0.this.e.s.setVisibility(0);
        }
    }

    public g0(d0 d0Var) {
        this.e = d0Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        d0 d0Var = this.e;
        d0Var.t.showAtLocation(d0Var.s, 55, 0, 0);
        this.e.J();
        if (!this.e.W()) {
            this.e.s.setAlpha(1.0f);
            this.e.s.setVisibility(0);
            return;
        }
        this.e.s.setAlpha(0.0f);
        d0 d0Var2 = this.e;
        ma maVarB = ha.b(d0Var2.s);
        maVarB.a(1.0f);
        d0Var2.v = maVarB;
        ma maVar = this.e.v;
        a aVar = new a();
        View view = maVar.a.get();
        if (view != null) {
            maVar.e(view, aVar);
        }
    }
}
