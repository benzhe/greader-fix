package defpackage;

import android.content.Context;
import android.view.ViewGroup;
import com.google.android.gms.internal.ads.zzbcb;

/* loaded from: classes.dex */
public final class xt0 {
    public final Context a;
    public final iu0 b;
    public final ViewGroup c;
    public zzbcb d;

    public xt0(Context context, ViewGroup viewGroup, xw0 xw0Var) {
        this.a = context.getApplicationContext() != null ? context.getApplicationContext() : context;
        this.c = viewGroup;
        this.b = xw0Var;
        this.d = null;
    }

    public final zzbcb a() {
        bi.f("getAdVideoUnderlay must be called from the UI thread.");
        return this.d;
    }
}
