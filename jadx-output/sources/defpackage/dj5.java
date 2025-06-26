package defpackage;

/* loaded from: classes.dex */
public enum dj5 {
    DEVELOPER(1),
    USER_SIDELOAD(2),
    TEST_DISTRIBUTION(3),
    APP_STORE(4);

    public final int e;

    dj5(int i) {
        this.e = i;
    }

    public static dj5 i(String str) {
        return str != null ? APP_STORE : DEVELOPER;
    }

    @Override // java.lang.Enum
    public String toString() {
        return Integer.toString(this.e);
    }
}
