package defpackage;

/* loaded from: classes.dex */
public enum cj5 {
    NONE,
    JAVA_ONLY,
    ALL;

    public static cj5 i(pm5 pm5Var) {
        return !(pm5Var.g == 2) ? NONE : !(pm5Var.h == 2) ? JAVA_ONLY : ALL;
    }
}
