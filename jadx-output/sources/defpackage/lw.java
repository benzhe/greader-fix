package defpackage;

/* loaded from: classes.dex */
public final class lw implements cc0 {
    public final /* synthetic */ String a;
    public final /* synthetic */ mw b;

    public lw(String str, mw mwVar) {
        this.a = str;
        this.b = mwVar;
    }

    @Override // defpackage.cc0
    public final void a(uh0 uh0Var) {
        String str = this.a;
        String string = uh0Var.toString();
        StringBuilder sb = new StringBuilder(String.valueOf(string).length() + String.valueOf(str).length() + 21);
        sb.append("Failed to load URL: ");
        sb.append(str);
        sb.append("\n");
        sb.append(string);
        is0.zzez(sb.toString());
        this.b.a(null);
    }
}
