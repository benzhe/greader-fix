package defpackage;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes.dex */
public class ul6 extends BottomSheetBehavior.c {
    public final /* synthetic */ tl6 a;

    public ul6(tl6 tl6Var) {
        this.a = tl6Var;
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
    public void a(View view, float f) {
    }

    @Override // com.google.android.material.bottomsheet.BottomSheetBehavior.c
    public void b(View view, int i) {
        if (i != 4) {
            return;
        }
        while (true) {
            tl6 tl6Var = this.a;
            hm6 hm6Var = tl6Var.f;
            if (hm6Var.d == 0) {
                tl6Var.dismiss();
                return;
            }
            hm6Var.a();
        }
    }
}
