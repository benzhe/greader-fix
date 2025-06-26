package defpackage;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class bx4 {
    public final String a;
    public final long b;
    public boolean c;
    public long d;
    public final /* synthetic */ ex4 e;

    public bx4(ex4 ex4Var, String str, long j) {
        this.e = ex4Var;
        bi.g(str);
        this.a = str;
        this.b = j;
    }

    public final long a() {
        if (!this.c) {
            this.c = true;
            this.d = this.e.n().getLong(this.a, this.b);
        }
        return this.d;
    }

    public final void b(long j) {
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.putLong(this.a, j);
        editorEdit.apply();
        this.d = j;
    }
}
