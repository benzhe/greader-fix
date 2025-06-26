package defpackage;

/* loaded from: classes.dex */
public class bx5 {
    public static AssertionError a(String str, Object... objArr) {
        StringBuilder sbZ = jo.z("INTERNAL ASSERTION FAILED: ");
        sbZ.append(String.format(str, objArr));
        throw new AssertionError(sbZ.toString());
    }

    public static AssertionError b(Throwable th, String str, Object... objArr) {
        StringBuilder sbZ = jo.z("INTERNAL ASSERTION FAILED: ");
        sbZ.append(String.format(str, objArr));
        AssertionError assertionError = new AssertionError(sbZ.toString());
        assertionError.initCause(th);
        throw assertionError;
    }

    public static void c(boolean z, String str, Object... objArr) {
        if (z) {
            return;
        }
        a(str, objArr);
        throw null;
    }
}
