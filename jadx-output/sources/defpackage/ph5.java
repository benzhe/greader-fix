package defpackage;

import java.util.Collections;
import java.util.Map;
import java.util.Objects;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public abstract class ph5 {
    public static final Pattern e = Pattern.compile("http(s?)://[^\\/]+", 2);
    public final String a;
    public final fl5 b;
    public final dl5 c;
    public final String d;

    public ph5(String str, String str2, fl5 fl5Var, dl5 dl5Var) {
        if (str2 == null) {
            throw new IllegalArgumentException("url must not be null.");
        }
        if (fl5Var == null) {
            throw new IllegalArgumentException("requestFactory must not be null.");
        }
        this.d = str;
        this.a = vh5.r(str) ? str2 : e.matcher(str2).replaceFirst(str);
        this.b = fl5Var;
        this.c = dl5Var;
    }

    public el5 b() {
        return c(Collections.emptyMap());
    }

    public el5 c(Map<String, String> map) {
        fl5 fl5Var = this.b;
        dl5 dl5Var = this.c;
        String str = this.a;
        Objects.requireNonNull(fl5Var);
        el5 el5Var = new el5(dl5Var, str, map);
        el5Var.d.put("User-Agent", "Crashlytics Android SDK/17.3.0");
        el5Var.d.put("X-CRASHLYTICS-DEVELOPER-TOKEN", "470fa2b4ae81cd56ecbcda9735803434cec591fa");
        return el5Var;
    }
}
