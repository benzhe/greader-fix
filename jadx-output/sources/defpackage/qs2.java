package defpackage;

/* loaded from: classes.dex */
public abstract class qs2 {
    public int a(CharSequence charSequence, int i) {
        int length = charSequence.length();
        if (i < 0 || i > length) {
            throw new IndexOutOfBoundsException(c50.y3(i, length, "index"));
        }
        while (i < length) {
            if (b(charSequence.charAt(i))) {
                return i;
            }
            i++;
        }
        return -1;
    }

    public abstract boolean b(char c);
}
