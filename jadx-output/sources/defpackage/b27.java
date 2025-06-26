package defpackage;

/* loaded from: classes2.dex */
public enum b27 {
    NO_CACHE(1),
    NO_STORE(2);

    public final int e;

    b27(int i) {
        this.e = i;
    }

    public static boolean i(int i) {
        return (i & 1) == 0;
    }
}
