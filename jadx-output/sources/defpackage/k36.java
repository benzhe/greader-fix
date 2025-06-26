package defpackage;

import android.os.Bundle;
import defpackage.bf5;

/* loaded from: classes.dex */
public final class k36 implements bf5.b {
    public nb7<String> a;

    public k36(nb7<String> nb7Var) {
        this.a = nb7Var;
    }

    @Override // bf5.b
    public void a(int i, Bundle bundle) {
        if (i == 2) {
            this.a.d(bundle.getString("events"));
        }
    }
}
