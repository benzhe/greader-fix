package defpackage;

import android.content.Context;
import android.os.Bundle;
import android.widget.FrameLayout;
import com.google.android.gms.internal.ads.zzvt;
import java.util.Objects;

/* loaded from: classes.dex */
public class wr3 {
    public final mr3 a;
    public final jr3 b;
    public final m30 c;
    public final z90 d;
    public final tn0 e;
    public final vk0 f;
    public final ca0 g;

    public wr3(mr3 mr3Var, jr3 jr3Var, m30 m30Var, z90 z90Var, tn0 tn0Var, vo0 vo0Var, vk0 vk0Var, ca0 ca0Var) {
        this.a = mr3Var;
        this.b = jr3Var;
        this.c = m30Var;
        this.d = z90Var;
        this.e = tn0Var;
        this.f = vk0Var;
        this.g = ca0Var;
    }

    public static void d(Context context, String str) {
        Bundle bundle = new Bundle();
        bundle.putString("action", "no_ads_fallback");
        bundle.putString("flow", str);
        os3 os3Var = os3.j;
        zr0 zr0Var = os3Var.a;
        String str2 = os3Var.g.e;
        Objects.requireNonNull(zr0Var);
        zr0.c(context, str2, "gmob-apps", bundle, new yr0());
    }

    public final x70 a(Context context, FrameLayout frameLayout, FrameLayout frameLayout2) {
        return new ls3(this, frameLayout, frameLayout2, context).b(context, false);
    }

    public final jk0 b(Context context, hg0 hg0Var) {
        return new cs3(context, hg0Var).b(context, false);
    }

    public final it3 c(Context context, zzvt zzvtVar, String str, hg0 hg0Var) {
        return new gs3(this, context, zzvtVar, str, hg0Var).b(context, false);
    }
}
