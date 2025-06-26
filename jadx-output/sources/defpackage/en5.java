package defpackage;

/* loaded from: classes.dex */
public class en5 {
    public final String a;
    public final String b;
    public final StackTraceElement[] c;
    public final en5 d;

    public en5(Throwable th, dn5 dn5Var) {
        this.a = th.getLocalizedMessage();
        this.b = th.getClass().getName();
        this.c = dn5Var.a(th.getStackTrace());
        Throwable cause = th.getCause();
        this.d = cause != null ? new en5(cause, dn5Var) : null;
    }
}
