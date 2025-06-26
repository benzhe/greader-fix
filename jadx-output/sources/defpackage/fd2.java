package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class fd2 implements qd2<nd2<Bundle>> {
    public final boolean a;

    public fd2(si2 si2Var) {
        if (si2Var != null) {
            this.a = true;
        } else {
            this.a = false;
        }
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        return vt2.j(this.a ? ed2.a : null);
    }
}
