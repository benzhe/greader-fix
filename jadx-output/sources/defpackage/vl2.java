package defpackage;

import java.util.regex.Matcher;
import java.util.regex.Pattern;
import java.util.regex.PatternSyntaxException;

/* loaded from: classes.dex */
public final class vl2 {
    public final Pattern a;

    public vl2() {
        Pattern patternCompile;
        try {
            patternCompile = Pattern.compile((String) os3.j.f.a(y40.p4));
        } catch (PatternSyntaxException unused) {
            patternCompile = null;
        }
        this.a = patternCompile;
    }

    public final String a(String str) {
        Pattern pattern = this.a;
        if (pattern != null && str != null) {
            Matcher matcher = pattern.matcher(str);
            if (matcher.find()) {
                return matcher.group();
            }
        }
        return null;
    }
}
