package defpackage;

import android.graphics.Bitmap;
import android.view.View;
import java.io.File;

/* loaded from: classes2.dex */
public class bx6 extends l07 {
    public final /* synthetic */ ax6 a;

    public bx6(ax6 ax6Var) {
        this.a = ax6Var;
    }

    @Override // defpackage.l07
    public void a(String str, View view, Bitmap bitmap) {
        File fileA = ux6.n().i().a(str);
        if (fileA == null || !fileA.exists()) {
            this.a.dismissAllowingStateLoss();
        } else {
            this.a.d(fileA, bitmap);
        }
    }
}
