package defpackage;

import android.view.View;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public final class w85 implements z85 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ boolean b;
    public final /* synthetic */ boolean c;
    public final /* synthetic */ z85 d;

    public w85(boolean z, boolean z2, boolean z3, z85 z85Var) {
        this.a = z;
        this.b = z2;
        this.c = z3;
        this.d = z85Var;
    }

    @Override // defpackage.z85
    public qa a(View view, qa qaVar, a95 a95Var) {
        if (this.a) {
            a95Var.d = qaVar.b() + a95Var.d;
        }
        boolean zN0 = c50.n0(view);
        if (this.b) {
            if (zN0) {
                a95Var.c = qaVar.c() + a95Var.c;
            } else {
                a95Var.a = qaVar.c() + a95Var.a;
            }
        }
        if (this.c) {
            if (zN0) {
                a95Var.a = qaVar.d() + a95Var.a;
            } else {
                a95Var.c = qaVar.d() + a95Var.c;
            }
        }
        int i = a95Var.a;
        int i2 = a95Var.b;
        int i3 = a95Var.c;
        int i4 = a95Var.d;
        AtomicInteger atomicInteger = ha.a;
        view.setPaddingRelative(i, i2, i3, i4);
        z85 z85Var = this.d;
        return z85Var != null ? z85Var.a(view, qaVar, a95Var) : qaVar;
    }
}
