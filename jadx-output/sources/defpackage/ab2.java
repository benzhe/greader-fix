package defpackage;

import android.os.Bundle;

/* loaded from: classes.dex */
public final class ab2 implements nd2<Bundle> {
    public final String a;
    public final boolean b;

    public ab2(String str, boolean z) {
        this.a = str;
        this.b = z;
    }

    @Override // defpackage.nd2
    public final /* synthetic */ void b(Bundle bundle) {
        Bundle bundle2 = bundle;
        bundle2.putString("gct", this.a);
        if (this.b) {
            bundle2.putString("de", "1");
        }
    }
}
