package defpackage;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class ha6 {
    public static final long b = TimeUnit.HOURS.toSeconds(1);
    public static final Pattern c = Pattern.compile("\\AA[\\w-]{38}\\z");
    public static ha6 d;
    public final ta6 a;

    public ha6(ta6 ta6Var) {
        this.a = ta6Var;
    }

    public static ha6 c() {
        if (ta6.a == null) {
            ta6.a = new ta6();
        }
        ta6 ta6Var = ta6.a;
        if (d == null) {
            d = new ha6(ta6Var);
        }
        return d;
    }

    public long a() {
        Objects.requireNonNull(this.a);
        return System.currentTimeMillis();
    }

    public long b() {
        return TimeUnit.MILLISECONDS.toSeconds(a());
    }

    public boolean d(ma6 ma6Var) {
        if (TextUtils.isEmpty(ma6Var.a())) {
            return true;
        }
        return ma6Var.b() + ma6Var.g() < b() + b;
    }
}
