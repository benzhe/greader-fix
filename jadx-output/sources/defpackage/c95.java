package defpackage;

import android.view.View;
import com.google.android.material.navigation.NavigationBarView;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class c95 implements z85 {
    public c95(NavigationBarView navigationBarView) {
    }

    @Override // defpackage.z85
    public qa a(View view, qa qaVar, a95 a95Var) {
        a95Var.d = qaVar.b() + a95Var.d;
        AtomicInteger atomicInteger = ha.a;
        boolean z = view.getLayoutDirection() == 1;
        int iC = qaVar.c();
        int iD = qaVar.d();
        int i = a95Var.a + (z ? iD : iC);
        a95Var.a = i;
        int i2 = a95Var.c;
        if (!z) {
            iC = iD;
        }
        int i3 = i2 + iC;
        a95Var.c = i3;
        view.setPaddingRelative(i, a95Var.b, i3, a95Var.d);
        return qaVar;
    }
}
