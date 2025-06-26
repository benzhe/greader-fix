package defpackage;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class h25 implements o25 {
    public final /* synthetic */ j25 a;

    public h25(j25 j25Var) {
        this.a = j25Var;
    }

    @Override // defpackage.o25
    public final void d(String str, Bundle bundle) throws IllegalStateException {
        if (TextUtils.isEmpty(str)) {
            this.a.j.a().f.a("AppId not known when logging error event");
        } else {
            this.a.m().q(new g25(this, str, bundle));
        }
    }
}
