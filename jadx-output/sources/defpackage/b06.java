package defpackage;

import android.view.View;
import android.view.WindowManager;
import defpackage.l06;

/* loaded from: classes.dex */
public class b06 extends l06 {
    public final /* synthetic */ WindowManager.LayoutParams s;
    public final /* synthetic */ WindowManager t;
    public final /* synthetic */ q06 u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public b06(c06 c06Var, View view, Object obj, l06.b bVar, WindowManager.LayoutParams layoutParams, WindowManager windowManager, q06 q06Var) {
        super(view, null, bVar);
        this.s = layoutParams;
        this.t = windowManager;
        this.u = q06Var;
    }

    @Override // defpackage.l06
    public float b() {
        return this.s.x;
    }

    @Override // defpackage.l06
    public void c(float f) {
        this.s.x = (int) f;
        this.t.updateViewLayout(this.u.f(), this.s);
    }
}
