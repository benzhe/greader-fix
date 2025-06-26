package defpackage;

import android.content.Context;

/* loaded from: classes.dex */
public final class kq {
    public final Context a;
    public final qb7<en, en> b;

    public kq(Context context, qb7 qb7Var, int i) {
        lq lqVar = (i & 2) != 0 ? new lq() : null;
        im7.e(context, "context");
        im7.e(lqVar, "transformer");
        this.a = context;
        this.b = lqVar;
    }
}
