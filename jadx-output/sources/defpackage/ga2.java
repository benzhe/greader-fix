package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ga2 implements qd2<nd2<Bundle>> {
    public final vh2 a;

    public ga2(vh2 vh2Var) {
        this.a = vh2Var;
    }

    @Override // defpackage.qd2
    public final aw2<nd2<Bundle>> a() {
        String str;
        vh2 vh2Var = this.a;
        return vt2.j((vh2Var == null || (str = vh2Var.a) == null || str.isEmpty()) ? null : new nd2(this) { // from class: fa2
            public final ga2 a;

            {
                this.a = this;
            }

            @Override // defpackage.nd2
            public final void b(Object obj) {
                ((Bundle) obj).putString("key_schema", this.a.a.a);
            }
        });
    }
}
