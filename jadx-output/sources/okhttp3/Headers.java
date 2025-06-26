package okhttp3;

import defpackage.bm7;
import defpackage.bn7;
import defpackage.co7;
import defpackage.ek7;
import defpackage.en7;
import defpackage.gm7;
import defpackage.hk7;
import defpackage.im7;
import defpackage.jo;
import defpackage.rj7;
import defpackage.um7;
import defpackage.wm7;
import java.time.Instant;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.TreeMap;
import java.util.TreeSet;
import okhttp3.internal.Util;
import okhttp3.internal.http.DatesKt;
import org.apache.commons.text.lookup.AbstractStringLookup;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.codehaus.mojo.animal_sniffer.IgnoreJRERequirement;

/* loaded from: classes2.dex */
public final class Headers implements Iterable<rj7<? extends String, ? extends String>>, wm7 {
    public static final Companion Companion = new Companion(null);
    private final String[] namesAndValues;

    public static final class Builder {
        private final List<String> namesAndValues = new ArrayList(20);

        public final Builder add(String str) {
            im7.e(str, "line");
            int iK = co7.k(str, AbstractStringLookup.SPLIT_CH, 0, false, 6);
            if (!(iK != -1)) {
                throw new IllegalArgumentException(jo.n("Unexpected header: ", str).toString());
            }
            String strSubstring = str.substring(0, iK);
            im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            String string = co7.F(strSubstring).toString();
            String strSubstring2 = str.substring(iK + 1);
            im7.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            add(string, strSubstring2);
            return this;
        }

        public final Builder addAll(Headers headers) {
            im7.e(headers, "headers");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                addLenient$okhttp(headers.name(i), headers.value(i));
            }
            return this;
        }

        public final Builder addLenient$okhttp(String str) {
            im7.e(str, "line");
            int iK = co7.k(str, AbstractStringLookup.SPLIT_CH, 1, false, 4);
            if (iK != -1) {
                String strSubstring = str.substring(0, iK);
                im7.d(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
                String strSubstring2 = str.substring(iK + 1);
                im7.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp(strSubstring, strSubstring2);
            } else if (str.charAt(0) == ':') {
                String strSubstring3 = str.substring(1);
                im7.d(strSubstring3, "(this as java.lang.String).substring(startIndex)");
                addLenient$okhttp("", strSubstring3);
            } else {
                addLenient$okhttp("", str);
            }
            return this;
        }

        public final Builder addUnsafeNonAscii(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            Headers.Companion.checkName(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Headers build() {
            Object[] array = this.namesAndValues.toArray(new String[0]);
            Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
            return new Headers((String[]) array, null);
        }

        public final String get(String str) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            bn7 bn7VarC = en7.c(en7.b(this.namesAndValues.size() - 2, 0), 2);
            int i = bn7VarC.e;
            int i2 = bn7VarC.f;
            int i3 = bn7VarC.g;
            if (i3 >= 0) {
                if (i > i2) {
                    return null;
                }
            } else if (i < i2) {
                return null;
            }
            while (!co7.e(str, this.namesAndValues.get(i), true)) {
                if (i == i2) {
                    return null;
                }
                i += i3;
            }
            return this.namesAndValues.get(i + 1);
        }

        public final List<String> getNamesAndValues$okhttp() {
            return this.namesAndValues;
        }

        public final Builder removeAll(String str) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            int i = 0;
            while (i < this.namesAndValues.size()) {
                if (co7.e(str, this.namesAndValues.get(i), true)) {
                    this.namesAndValues.remove(i);
                    this.namesAndValues.remove(i);
                    i -= 2;
                }
                i += 2;
            }
            return this;
        }

        public final Builder set(String str, Date date) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(date, "value");
            set(str, DatesKt.toHttpDateString(date));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder set(String str, Instant instant) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(instant, "value");
            return set(str, new Date(instant.toEpochMilli()));
        }

        public final Builder set(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            removeAll(str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder add(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            Companion companion = Headers.Companion;
            companion.checkName(str);
            companion.checkValue(str2, str);
            addLenient$okhttp(str, str2);
            return this;
        }

        public final Builder addLenient$okhttp(String str, String str2) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(str2, "value");
            this.namesAndValues.add(str);
            this.namesAndValues.add(co7.F(str2).toString());
            return this;
        }

        public final Builder add(String str, Date date) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(date, "value");
            add(str, DatesKt.toHttpDateString(date));
            return this;
        }

        @IgnoreJRERequirement
        public final Builder add(String str, Instant instant) {
            im7.e(str, InetAddressKeys.KEY_NAME);
            im7.e(instant, "value");
            add(str, new Date(instant.toEpochMilli()));
            return this;
        }
    }

    public static final class Companion {
        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkName(String str) {
            if (!(str.length() > 0)) {
                throw new IllegalArgumentException("name is empty".toString());
            }
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (!('!' <= cCharAt && '~' >= cCharAt)) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in header name: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final void checkValue(String str, String str2) {
            int length = str.length();
            for (int i = 0; i < length; i++) {
                char cCharAt = str.charAt(i);
                if (!(cCharAt == '\t' || (' ' <= cCharAt && '~' >= cCharAt))) {
                    throw new IllegalArgumentException(Util.format("Unexpected char %#04x at %d in %s value: %s", Integer.valueOf(cCharAt), Integer.valueOf(i), str2, str).toString());
                }
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String get(String[] strArr, String str) {
            bn7 bn7VarC = en7.c(en7.b(strArr.length - 2, 0), 2);
            int i = bn7VarC.e;
            int i2 = bn7VarC.f;
            int i3 = bn7VarC.g;
            if (i3 >= 0) {
                if (i > i2) {
                    return null;
                }
            } else if (i < i2) {
                return null;
            }
            while (!co7.e(str, strArr[i], true)) {
                if (i == i2) {
                    return null;
                }
                i += i3;
            }
            return strArr[i + 1];
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m54deprecated_of(String... strArr) {
            im7.e(strArr, "namesAndValues");
            return of((String[]) Arrays.copyOf(strArr, strArr.length));
        }

        public final Headers of(String... strArr) throws CloneNotSupportedException {
            im7.e(strArr, "namesAndValues");
            if (!(strArr.length % 2 == 0)) {
                throw new IllegalArgumentException("Expected alternating header names and values".toString());
            }
            Object objClone = strArr.clone();
            Objects.requireNonNull(objClone, "null cannot be cast to non-null type kotlin.Array<kotlin.String>");
            String[] strArr2 = (String[]) objClone;
            int length = strArr2.length;
            for (int i = 0; i < length; i++) {
                if (!(strArr2[i] != null)) {
                    throw new IllegalArgumentException("Headers cannot be null".toString());
                }
                String str = strArr2[i];
                Objects.requireNonNull(str, "null cannot be cast to non-null type kotlin.CharSequence");
                strArr2[i] = co7.F(str).toString();
            }
            bn7 bn7VarC = en7.c(en7.d(0, strArr2.length), 2);
            int i2 = bn7VarC.e;
            int i3 = bn7VarC.f;
            int i4 = bn7VarC.g;
            if (i4 < 0 ? i2 >= i3 : i2 <= i3) {
                while (true) {
                    String str2 = strArr2[i2];
                    String str3 = strArr2[i2 + 1];
                    checkName(str2);
                    checkValue(str3, str2);
                    if (i2 == i3) {
                        break;
                    }
                    i2 += i4;
                }
            }
            return new Headers(strArr2, null);
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }

        /* renamed from: -deprecated_of, reason: not valid java name */
        public final Headers m53deprecated_of(Map<String, String> map) {
            im7.e(map, "headers");
            return of(map);
        }

        public final Headers of(Map<String, String> map) {
            im7.e(map, "$this$toHeaders");
            String[] strArr = new String[map.size() * 2];
            int i = 0;
            for (Map.Entry<String, String> entry : map.entrySet()) {
                String key = entry.getKey();
                String value = entry.getValue();
                Objects.requireNonNull(key, "null cannot be cast to non-null type kotlin.CharSequence");
                String string = co7.F(key).toString();
                Objects.requireNonNull(value, "null cannot be cast to non-null type kotlin.CharSequence");
                String string2 = co7.F(value).toString();
                checkName(string);
                checkValue(string2, string);
                strArr[i] = string;
                strArr[i + 1] = string2;
                i += 2;
            }
            return new Headers(strArr, null);
        }
    }

    private Headers(String[] strArr) {
        this.namesAndValues = strArr;
    }

    public static final Headers of(Map<String, String> map) {
        return Companion.of(map);
    }

    public static final Headers of(String... strArr) {
        return Companion.of(strArr);
    }

    /* renamed from: -deprecated_size, reason: not valid java name */
    public final int m52deprecated_size() {
        return size();
    }

    public final long byteCount() {
        String[] strArr = this.namesAndValues;
        long length = strArr.length * 2;
        for (int i = 0; i < strArr.length; i++) {
            length += this.namesAndValues[i].length();
        }
        return length;
    }

    public boolean equals(Object obj) {
        return (obj instanceof Headers) && Arrays.equals(this.namesAndValues, ((Headers) obj).namesAndValues);
    }

    public final String get(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        return Companion.get(this.namesAndValues, str);
    }

    public final Date getDate(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        String str2 = get(str);
        if (str2 != null) {
            return DatesKt.toHttpDateOrNull(str2);
        }
        return null;
    }

    @IgnoreJRERequirement
    public final Instant getInstant(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        Date date = getDate(str);
        if (date != null) {
            return date.toInstant();
        }
        return null;
    }

    public int hashCode() {
        return Arrays.hashCode(this.namesAndValues);
    }

    @Override // java.lang.Iterable
    public Iterator<rj7<? extends String, ? extends String>> iterator() {
        int size = size();
        rj7[] rj7VarArr = new rj7[size];
        for (int i = 0; i < size; i++) {
            rj7VarArr[i] = new rj7(name(i), value(i));
        }
        im7.e(rj7VarArr, "array");
        return new bm7(rj7VarArr);
    }

    public final String name(int i) {
        return this.namesAndValues[i * 2];
    }

    public final Set<String> names() {
        co7.f(um7.a);
        TreeSet treeSet = new TreeSet(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            treeSet.add(name(i));
        }
        Set<String> setUnmodifiableSet = Collections.unmodifiableSet(treeSet);
        im7.d(setUnmodifiableSet, "Collections.unmodifiableSet(result)");
        return setUnmodifiableSet;
    }

    public final Builder newBuilder() {
        Builder builder = new Builder();
        List<String> namesAndValues$okhttp = builder.getNamesAndValues$okhttp();
        String[] strArr = this.namesAndValues;
        im7.e(namesAndValues$okhttp, "$this$addAll");
        im7.e(strArr, "elements");
        namesAndValues$okhttp.addAll(ek7.a(strArr));
        return builder;
    }

    public final int size() {
        return this.namesAndValues.length / 2;
    }

    public final Map<String, List<String>> toMultimap() {
        co7.f(um7.a);
        TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
        int size = size();
        for (int i = 0; i < size; i++) {
            String strName = name(i);
            Locale locale = Locale.US;
            im7.d(locale, "Locale.US");
            Objects.requireNonNull(strName, "null cannot be cast to non-null type java.lang.String");
            String lowerCase = strName.toLowerCase(locale);
            im7.d(lowerCase, "(this as java.lang.String).toLowerCase(locale)");
            List arrayList = (List) treeMap.get(lowerCase);
            if (arrayList == null) {
                arrayList = new ArrayList(2);
                treeMap.put(lowerCase, arrayList);
            }
            arrayList.add(value(i));
        }
        return treeMap;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int size = size();
        for (int i = 0; i < size; i++) {
            sb.append(name(i));
            sb.append(": ");
            sb.append(value(i));
            sb.append("\n");
        }
        String string = sb.toString();
        im7.d(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }

    public final String value(int i) {
        return this.namesAndValues[(i * 2) + 1];
    }

    public final List<String> values(String str) {
        im7.e(str, InetAddressKeys.KEY_NAME);
        int size = size();
        ArrayList arrayList = null;
        for (int i = 0; i < size; i++) {
            if (co7.e(str, name(i), true)) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(value(i));
            }
        }
        if (arrayList == null) {
            return hk7.e;
        }
        List<String> listUnmodifiableList = Collections.unmodifiableList(arrayList);
        im7.d(listUnmodifiableList, "Collections.unmodifiableList(result)");
        return listUnmodifiableList;
    }

    public /* synthetic */ Headers(String[] strArr, gm7 gm7Var) {
        this(strArr);
    }
}
