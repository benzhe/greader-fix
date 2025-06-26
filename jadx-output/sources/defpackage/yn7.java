package defpackage;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import org.apache.commons.io.FilenameUtils;

/* loaded from: classes2.dex */
public final class yn7 implements Serializable {
    public static final a f = new a(null);
    public final Pattern e;

    public static final class a {
        public a(gm7 gm7Var) {
        }
    }

    public yn7(String str, zn7 zn7Var) {
        im7.e(str, "pattern");
        im7.e(zn7Var, "option");
        int i = zn7Var.e;
        Pattern patternCompile = Pattern.compile(str, (i & 2) != 0 ? i | 64 : i);
        im7.d(patternCompile, "Pattern.compile(pattern,…nicodeCase(option.value))");
        im7.e(patternCompile, "nativePattern");
        this.e = patternCompile;
    }

    public final boolean a(CharSequence charSequence) {
        im7.e(charSequence, "input");
        return this.e.matcher(charSequence).matches();
    }

    public final List<String> b(CharSequence charSequence, int i) {
        im7.e(charSequence, "input");
        int iEnd = 0;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("Limit must be non-negative, but was " + i + FilenameUtils.EXTENSION_SEPARATOR).toString());
        }
        Matcher matcher = this.e.matcher(charSequence);
        if (!matcher.find() || i == 1) {
            return n56.r1(charSequence.toString());
        }
        int i2 = 10;
        if (i > 0 && i <= 10) {
            i2 = i;
        }
        ArrayList arrayList = new ArrayList(i2);
        int i3 = i - 1;
        do {
            arrayList.add(charSequence.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i3 >= 0 && arrayList.size() == i3) {
                break;
            }
        } while (matcher.find());
        arrayList.add(charSequence.subSequence(iEnd, charSequence.length()).toString());
        return arrayList;
    }

    public String toString() {
        String string = this.e.toString();
        im7.d(string, "nativePattern.toString()");
        return string;
    }

    public yn7(String str) {
        im7.e(str, "pattern");
        Pattern patternCompile = Pattern.compile(str);
        im7.d(patternCompile, "Pattern.compile(pattern)");
        im7.e(patternCompile, "nativePattern");
        this.e = patternCompile;
    }
}
