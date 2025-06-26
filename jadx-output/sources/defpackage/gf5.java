package defpackage;

import android.os.Bundle;
import defpackage.xr4;
import java.util.Set;

/* loaded from: classes.dex */
public final class gf5 implements xr4.a {
    public final /* synthetic */ hf5 a;

    public gf5(hf5 hf5Var) {
        this.a = hf5Var;
    }

    @Override // defpackage.ry4
    public final void a(String str, String str2, Bundle bundle, long j) {
        if (this.a.a.contains(str2)) {
            Bundle bundle2 = new Bundle();
            Set<String> set = ff5.a;
            String strC = zz4.c(str2, oy4.c, oy4.a);
            if (strC != null) {
                str2 = strC;
            }
            bundle2.putString("events", str2);
            this.a.b.a(2, bundle2);
        }
    }
}
