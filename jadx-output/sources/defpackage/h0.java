package defpackage;

import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class h0 extends oa {
    public final /* synthetic */ d0 a;

    public h0(d0 d0Var) {
        this.a = d0Var;
    }

    @Override // defpackage.na
    public void b(View view) {
        this.a.s.setAlpha(1.0f);
        this.a.v.d(null);
        this.a.v = null;
    }

    @Override // defpackage.oa, defpackage.na
    public void c(View view) {
        this.a.s.setVisibility(0);
        this.a.s.sendAccessibilityEvent(32);
        if (this.a.s.getParent() instanceof View) {
            View view2 = (View) this.a.s.getParent();
            AtomicInteger atomicInteger = ha.a;
            view2.requestApplyInsets();
        }
    }
}
