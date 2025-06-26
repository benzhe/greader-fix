package defpackage;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
public final class cx4 {
    public final String a;
    public final String b;
    public final String c;
    public final long d;
    public final /* synthetic */ ex4 e;

    public /* synthetic */ cx4(ex4 ex4Var, long j) {
        this.e = ex4Var;
        bi.g("health_monitor");
        bi.b(j > 0);
        this.a = "health_monitor:start";
        this.b = "health_monitor:count";
        this.c = "health_monitor:value";
        this.d = j;
    }

    public final void a() {
        this.e.d();
        long jA = this.e.a.n.a();
        SharedPreferences.Editor editorEdit = this.e.n().edit();
        editorEdit.remove(this.b);
        editorEdit.remove(this.c);
        editorEdit.putLong(this.a, jA);
        editorEdit.apply();
    }
}
