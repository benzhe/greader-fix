package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class h34 extends dg4 {
    public final ry4 e;

    public h34(ry4 ry4Var) {
        this.e = ry4Var;
    }

    @Override // defpackage.eg4
    public final int h() {
        return System.identityHashCode(this.e);
    }

    @Override // defpackage.eg4
    public final void o1(String str, String str2, Bundle bundle, long j) {
        this.e.a(str, str2, bundle, j);
    }
}
