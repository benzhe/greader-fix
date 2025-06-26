package defpackage;

import android.content.Context;
import android.graphics.Typeface;
import defpackage.j9;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public class g9 implements Callable<j9.d> {
    public final /* synthetic */ Context e;
    public final /* synthetic */ f9 f;
    public final /* synthetic */ int g;
    public final /* synthetic */ String h;

    public g9(Context context, f9 f9Var, int i, String str) {
        this.e = context;
        this.f = f9Var;
        this.g = i;
        this.h = str;
    }

    @Override // java.util.concurrent.Callable
    public j9.d call() throws Exception {
        j9.d dVarB = j9.b(this.e, this.f, this.g);
        Typeface typeface = dVarB.a;
        if (typeface != null) {
            j9.a.b(this.h, typeface);
        }
        return dVarB;
    }
}
