package defpackage;

/* loaded from: classes.dex */
public class t20 {
    public static final t20 d = new t20(true, null, null);
    public final boolean a;
    public final String b;
    public final Throwable c;

    public t20(boolean z, String str, Throwable th) {
        this.a = z;
        this.b = str;
        this.c = th;
    }

    public static t20 a(String str) {
        return new t20(false, str, null);
    }

    public String b() {
        return this.b;
    }
}
