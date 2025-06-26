package defpackage;

/* loaded from: classes2.dex */
public final class ed7 {
    public static int a(int i, String str) {
        if (i > 0) {
            return i;
        }
        throw new IllegalArgumentException(str + " > 0 required but it was " + i);
    }
}
