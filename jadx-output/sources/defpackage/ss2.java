package defpackage;

import org.apache.commons.io.IOUtils;

/* loaded from: classes.dex */
public final class ss2 extends qs2 {
    public final char a;

    public ss2(char c) {
        this.a = c;
    }

    @Override // defpackage.qs2
    public final boolean b(char c) {
        return c == this.a;
    }

    public final String toString() {
        char c = this.a;
        char[] cArr = {IOUtils.DIR_SEPARATOR_WINDOWS, 'u', 0, 0, 0, 0};
        for (int i = 0; i < 4; i++) {
            cArr[5 - i] = "0123456789ABCDEF".charAt(c & 15);
            c = (char) (c >> 4);
        }
        String strCopyValueOf = String.copyValueOf(cArr);
        return jo.c(jo.x(strCopyValueOf, 18), "CharMatcher.is('", strCopyValueOf, "')");
    }
}
