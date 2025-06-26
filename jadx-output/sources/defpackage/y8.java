package defpackage;

import java.util.HashSet;
import java.util.Locale;

/* loaded from: classes.dex */
public final class y8 implements z8 {
    public static final Locale[] b = new Locale[0];
    public final Locale[] a;

    static {
        new Locale("en", "XA");
        new Locale("ar", "XB");
        int i = x8.b;
        String[] strArrSplit = "en-Latn".split("-", -1);
        if (strArrSplit.length > 2) {
            new Locale(strArrSplit[0], strArrSplit[1], strArrSplit[2]);
        } else if (strArrSplit.length > 1) {
            new Locale(strArrSplit[0], strArrSplit[1]);
        } else {
            if (strArrSplit.length != 1) {
                throw new IllegalArgumentException("Can not parse language tag: [en-Latn]");
            }
            new Locale(strArrSplit[0]);
        }
    }

    public y8(Locale... localeArr) {
        if (localeArr.length == 0) {
            this.a = b;
            return;
        }
        Locale[] localeArr2 = new Locale[localeArr.length];
        HashSet hashSet = new HashSet();
        for (int i = 0; i < localeArr.length; i++) {
            Locale locale = localeArr[i];
            if (locale == null) {
                throw new NullPointerException(jo.h("list[", i, "] is null"));
            }
            if (hashSet.contains(locale)) {
                throw new IllegalArgumentException(jo.h("list[", i, "] is a repetition"));
            }
            Locale locale2 = (Locale) locale.clone();
            localeArr2[i] = locale2;
            locale2.getLanguage();
            String country = locale2.getCountry();
            if (country != null && !country.isEmpty()) {
                locale2.getCountry();
            }
            int length = localeArr.length;
            hashSet.add(locale2);
        }
        this.a = localeArr2;
    }

    @Override // defpackage.z8
    public Object a() {
        return null;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof y8)) {
            return false;
        }
        Locale[] localeArr = ((y8) obj).a;
        if (this.a.length != localeArr.length) {
            return false;
        }
        int i = 0;
        while (true) {
            Locale[] localeArr2 = this.a;
            if (i >= localeArr2.length) {
                return true;
            }
            if (!localeArr2[i].equals(localeArr[i])) {
                return false;
            }
            i++;
        }
    }

    @Override // defpackage.z8
    public Locale get(int i) {
        if (i >= 0) {
            Locale[] localeArr = this.a;
            if (i < localeArr.length) {
                return localeArr[i];
            }
        }
        return null;
    }

    public int hashCode() {
        int iHashCode = 1;
        int i = 0;
        while (true) {
            Locale[] localeArr = this.a;
            if (i >= localeArr.length) {
                return iHashCode;
            }
            iHashCode = (iHashCode * 31) + localeArr[i].hashCode();
            i++;
        }
    }

    @Override // defpackage.z8
    public int size() {
        return this.a.length;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("[");
        int i = 0;
        while (true) {
            Locale[] localeArr = this.a;
            if (i >= localeArr.length) {
                sbZ.append("]");
                return sbZ.toString();
            }
            sbZ.append(localeArr[i]);
            if (i < this.a.length - 1) {
                sbZ.append(',');
            }
            i++;
        }
    }
}
