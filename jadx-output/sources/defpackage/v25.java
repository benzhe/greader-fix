package defpackage;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;

/* loaded from: classes.dex */
public final class v25 {
    public final rx4 a;

    public v25(rx4 rx4Var) {
        this.a = rx4Var;
    }

    public final void a(String str, Bundle bundle) {
        String string;
        this.a.m().d();
        if (this.a.g()) {
            return;
        }
        if (bundle.isEmpty()) {
            string = null;
        } else {
            if (true == str.isEmpty()) {
                str = "auto";
            }
            Uri.Builder builder = new Uri.Builder();
            builder.path(str);
            for (String str2 : bundle.keySet()) {
                builder.appendQueryParameter(str2, bundle.getString(str2));
            }
            string = builder.build().toString();
        }
        if (TextUtils.isEmpty(string)) {
            return;
        }
        this.a.q().z.b(string);
        this.a.q().A.b(this.a.n.a());
    }

    public final boolean b() {
        return c() && this.a.n.a() - this.a.q().A.a() > this.a.g.n(null, ew4.C0);
    }

    public final boolean c() {
        return this.a.q().A.a() > 0;
    }
}
