package defpackage;

/* loaded from: classes.dex */
public final class us2 extends rs2 {
    public static final us2 b = new us2();

    public us2() {
        super("CharMatcher.none()");
    }

    @Override // defpackage.qs2
    public final int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException(c50.y3(i, length, "index"));
        }
        return -1;
    }

    @Override // defpackage.qs2
    public final boolean b(char c) {
        return false;
    }
}
