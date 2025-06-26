package defpackage;

import android.view.MotionEvent;
import org.json.JSONObject;

/* loaded from: classes.dex */
public final class fo1 implements j70 {
    public final /* synthetic */ co1 a;

    public fo1(co1 co1Var) {
        this.a = co1Var;
    }

    @Override // defpackage.j70
    public final JSONObject Z() {
        return null;
    }

    @Override // defpackage.j70
    public final void a0() {
        kj1 kj1Var = this.a.h;
        if (kj1Var != null) {
            synchronized (kj1Var) {
                kj1Var.j.m("_videoMediaView");
            }
        }
    }

    @Override // defpackage.j70
    public final void b0(MotionEvent motionEvent) {
    }
}
