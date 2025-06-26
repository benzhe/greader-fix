package defpackage;

import android.os.Build;
import android.os.LocaleList;
import java.util.Locale;

/* loaded from: classes.dex */
public final class x8 {
    public static final /* synthetic */ int b = 0;
    public z8 a;

    static {
        a(new Locale[0]);
    }

    public x8(z8 z8Var) {
        this.a = z8Var;
    }

    public static x8 a(Locale... localeArr) {
        return Build.VERSION.SDK_INT >= 24 ? new x8(new a9(new LocaleList(localeArr))) : new x8(new y8(localeArr));
    }

    public boolean equals(Object obj) {
        return (obj instanceof x8) && this.a.equals(((x8) obj).a);
    }

    public int hashCode() {
        return this.a.hashCode();
    }

    public String toString() {
        return this.a.toString();
    }
}
