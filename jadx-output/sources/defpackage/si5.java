package defpackage;

import android.content.Context;
import android.content.res.Resources;
import defpackage.ul5;

/* loaded from: classes.dex */
public class si5 implements ul5.b {
    public final /* synthetic */ ii5 a;

    public si5(ii5 ii5Var) {
        this.a = ii5Var;
    }

    public ul5 a(pm5 pm5Var) throws Resources.NotFoundException {
        String str = pm5Var.c;
        String str2 = pm5Var.d;
        String str3 = pm5Var.e;
        ii5 ii5Var = this.a;
        Context context = ii5Var.a;
        int iM = vh5.m(context, "com.crashlytics.ApiEndpoint", "string");
        String string = iM > 0 ? context.getString(iM) : "";
        zl5 zl5Var = new zl5(new bm5(string, str, ii5Var.f, "17.3.0"), new cm5(string, str2, ii5Var.f, "17.3.0"));
        String str4 = this.a.i.a;
        cj5 cj5VarI = cj5.i(pm5Var);
        ii5 ii5Var2 = this.a;
        return new ul5(str3, str4, cj5VarI, ii5Var2.m, zl5Var, ii5Var2.n);
    }
}
