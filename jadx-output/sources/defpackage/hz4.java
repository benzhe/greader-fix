package defpackage;

import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class hz4 implements o25 {
    public final /* synthetic */ sz4 a;

    public hz4(sz4 sz4Var) {
        this.a = sz4Var;
    }

    @Override // defpackage.o25
    public final void d(String str, Bundle bundle) throws IllegalStateException {
        if (!TextUtils.isEmpty(str)) {
            throw new IllegalStateException("Unexpected call on client side");
        }
        this.a.A("auto", "_err", bundle);
    }
}
