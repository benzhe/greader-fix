package defpackage;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public final class x15 extends ww4 {
    public Handler c;
    public final w15 d;
    public final u15 e;
    public final s15 f;

    public x15(rx4 rx4Var) {
        super(rx4Var);
        this.d = new w15(this);
        this.e = new u15(this);
        this.f = new s15(this);
    }

    @Override // defpackage.ww4
    public final boolean h() {
        return false;
    }

    public final void i() {
        d();
        if (this.c == null) {
            this.c = new cc4(Looper.getMainLooper());
        }
    }
}
