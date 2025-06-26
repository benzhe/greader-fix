package defpackage;

import android.content.res.Resources;
import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public class m65 implements z85 {
    public final /* synthetic */ boolean a;
    public final /* synthetic */ BottomSheetBehavior b;

    public m65(BottomSheetBehavior bottomSheetBehavior, boolean z) {
        this.b = bottomSheetBehavior;
        this.a = z;
    }

    @Override // defpackage.z85
    public qa a(View view, qa qaVar, a95 a95Var) throws Resources.NotFoundException {
        this.b.p = qaVar.e();
        boolean zN0 = c50.n0(view);
        int paddingBottom = view.getPaddingBottom();
        int paddingLeft = view.getPaddingLeft();
        int paddingRight = view.getPaddingRight();
        BottomSheetBehavior bottomSheetBehavior = this.b;
        if (bottomSheetBehavior.l) {
            bottomSheetBehavior.o = qaVar.b();
            paddingBottom = a95Var.d + this.b.o;
        }
        if (this.b.m) {
            paddingLeft = (zN0 ? a95Var.c : a95Var.a) + qaVar.c();
        }
        if (this.b.n) {
            paddingRight = qaVar.d() + (zN0 ? a95Var.a : a95Var.c);
        }
        view.setPadding(paddingLeft, view.getPaddingTop(), paddingRight, paddingBottom);
        if (this.a) {
            this.b.j = qaVar.a.e().d;
        }
        BottomSheetBehavior bottomSheetBehavior2 = this.b;
        if (bottomSheetBehavior2.l || this.a) {
            bottomSheetBehavior2.V(false);
        }
        return qaVar;
    }
}
