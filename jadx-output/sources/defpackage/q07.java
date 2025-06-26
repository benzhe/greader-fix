package defpackage;

import java.util.Comparator;

/* loaded from: classes2.dex */
public final class q07 implements Comparator<String> {
    @Override // java.util.Comparator
    public int compare(String str, String str2) {
        String str3 = str;
        String str4 = str2;
        return str3.substring(0, str3.lastIndexOf("_")).compareTo(str4.substring(0, str4.lastIndexOf("_")));
    }
}
