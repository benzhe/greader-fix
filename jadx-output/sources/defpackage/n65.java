package defpackage;

import android.view.View;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import defpackage.ua;

/* loaded from: classes.dex */
public class n65 implements ua {
    public final /* synthetic */ int a;
    public final /* synthetic */ BottomSheetBehavior b;

    public n65(BottomSheetBehavior bottomSheetBehavior, int i) {
        this.b = bottomSheetBehavior;
        this.a = i;
    }

    @Override // defpackage.ua
    public boolean a(View view, ua.a aVar) {
        this.b.M(this.a);
        return true;
    }
}
