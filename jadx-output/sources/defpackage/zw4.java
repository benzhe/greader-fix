package defpackage;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class zw4 {
    public final String a;
    public final boolean b;
    public boolean c;
    public boolean d;
    public final /* synthetic */ ex4 e;

    public zw4(ex4 ex4Var, String str, boolean z) {
        this.e = ex4Var;
        bi.g(str);
        this.a = str;
        this.b = z;
    }

    public final boolean a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.n().getBoolean(this.a, this.b);
        }
        return this.d;
    }

    public final void b(boolean z) {
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.putBoolean(this.a, z);
        editorEdit.apply();
        this.d = z;
    }
}
