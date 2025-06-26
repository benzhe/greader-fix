package defpackage;

import java.util.Locale;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class jx6 {

    public static final class a {
        public final Locale a;

        public a(Locale locale) {
            im7.e(locale, "loc");
            this.a = locale;
        }

        public String toString() {
            String displayName = this.a.getDisplayName();
            im7.d(displayName, "loc.displayName");
            return displayName;
        }
    }

    public static final Locale a(String str) {
        im7.e(str, "str");
        Object[] array = new yn7("-").b(str, 0).toArray(new String[0]);
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        String[] strArr = (String[]) array;
        int length = strArr.length;
        return length != 1 ? length != 2 ? new Locale(strArr[0], strArr[1], strArr[2]) : new Locale(strArr[0], strArr[1]) : new Locale(strArr[0]);
    }

    public static final String b(Locale locale) {
        im7.e(locale, "loc");
        return locale.getISO3Language() + "-" + locale.getISO3Country() + "-" + locale.getVariant();
    }
}
