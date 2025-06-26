package defpackage;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class dx4 {
    public final String a;
    public boolean b;
    public String c;
    public final /* synthetic */ ex4 d;

    public dx4(ex4 ex4Var, String str) {
        this.d = ex4Var;
        bi.g(str);
        this.a = str;
    }

    public final String a() {
        if (!this.b) {
            this.b = true;
            this.c = this.d.n().getString(this.a, null);
        }
        return this.c;
    }

    public final void b(String str) {
        SharedPreferences.Editor editorEdit = this.d.n().edit();
        editorEdit.putString(this.a, str);
        editorEdit.apply();
        this.c = str;
    }
}
