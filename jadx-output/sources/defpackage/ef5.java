package defpackage;

import android.content.Context;
import android.os.Bundle;
import java.util.Objects;

/* loaded from: classes.dex */
public final /* synthetic */ class ef5 implements wf5 {
    public static final wf5 a = new ef5();

    @Override // defpackage.wf5
    public final Object a(tf5 tf5Var) {
        pe5 pe5Var = (pe5) tf5Var.a(pe5.class);
        Context context = (Context) tf5Var.a(Context.class);
        no5 no5Var = (no5) tf5Var.a(no5.class);
        Objects.requireNonNull(pe5Var, "null reference");
        Objects.requireNonNull(context, "null reference");
        Objects.requireNonNull(no5Var, "null reference");
        Objects.requireNonNull(context.getApplicationContext(), "null reference");
        if (cf5.c == null) {
            synchronized (cf5.class) {
                if (cf5.c == null) {
                    Bundle bundle = new Bundle(1);
                    if (pe5Var.g()) {
                        no5Var.b(ne5.class, kf5.e, lf5.a);
                        bundle.putBoolean("dataCollectionDefaultEnabled", pe5Var.f());
                    }
                    cf5.c = new cf5(q34.g(context, null, null, null, bundle).d);
                }
            }
        }
        return cf5.c;
    }
}
