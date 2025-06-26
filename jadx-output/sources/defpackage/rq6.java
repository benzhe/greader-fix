package defpackage;

import android.text.TextUtils;

/* loaded from: classes2.dex */
public final class rq6<T, R> implements uc7<rx6, ap6> {
    public final /* synthetic */ ap6 e;
    public final /* synthetic */ String f;

    public rq6(ap6 ap6Var, String str) {
        this.e = ap6Var;
        this.f = str;
    }

    @Override // defpackage.uc7
    public ap6 apply(rx6 rx6Var) {
        rx6 rx6Var2 = rx6Var;
        im7.e(rx6Var2, "article");
        ap6 ap6Var = new ap6();
        ap6Var.h = TextUtils.isEmpty(rx6Var2.a) ? this.e.h : rx6Var2.a;
        String str = rx6Var2.j;
        if (str == null) {
            str = "";
        }
        ap6Var.i = str;
        ap6Var.k = this.f;
        ap6 ap6Var2 = this.e;
        ap6Var.j = ap6Var2.j;
        ap6Var.g = ap6Var2.g;
        ap6Var.p = ap6Var2.p;
        return ap6Var;
    }
}
