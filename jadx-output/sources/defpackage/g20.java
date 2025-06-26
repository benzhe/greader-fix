package defpackage;

import java.util.regex.Pattern;

/* loaded from: classes.dex */
public class g20 {
    static {
        Pattern.compile("\\$\\{(.*?)\\}");
    }

    public static boolean a(String str) {
        return str == null || str.trim().isEmpty();
    }
}
