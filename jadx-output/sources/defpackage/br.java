package defpackage;

import java.nio.charset.Charset;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;
import java.util.regex.Pattern;

/* loaded from: classes.dex */
public final class br implements yr {
    public static final String c = bi.Q("hts/frbslgiggolai.o/0clgbthfra=snpoo", "tp:/ieaeogn.ogepscmvc/o/ac?omtjo_rt3");
    public static final String d;
    public static final String e;
    public static final Set<uq> f;
    public static final br g;
    public final String a;
    public final String b;

    static {
        String strQ = bi.Q("hts/frbslgigp.ogepscmv/ieo/eaybtho", "tp:/ieaeogn-agolai.o/1frlglgc/aclg");
        d = strQ;
        String strQ2 = bi.Q("AzSCki82AwsLzKd5O8zo", "IayckHiZRO1EFl1aGoK");
        e = strQ2;
        f = Collections.unmodifiableSet(new HashSet(Arrays.asList(new uq("proto"), new uq("json"))));
        g = new br(strQ, strQ2);
    }

    public br(String str, String str2) {
        this.a = str;
        this.b = str2;
    }

    public static br a(byte[] bArr) {
        String str = new String(bArr, Charset.forName("UTF-8"));
        if (!str.startsWith("1$")) {
            throw new IllegalArgumentException("Version marker missing from extras");
        }
        String[] strArrSplit = str.substring(2).split(Pattern.quote("\\"), 2);
        if (strArrSplit.length != 2) {
            throw new IllegalArgumentException("Extra is not a valid encoded LegacyFlgDestination");
        }
        String str2 = strArrSplit[0];
        if (str2.isEmpty()) {
            throw new IllegalArgumentException("Missing endpoint in CCTDestination extras");
        }
        String str3 = strArrSplit[1];
        if (str3.isEmpty()) {
            str3 = null;
        }
        return new br(str2, str3);
    }

    public byte[] b() {
        String str = this.b;
        if (str == null && this.a == null) {
            return null;
        }
        Object[] objArr = new Object[4];
        objArr[0] = "1$";
        objArr[1] = this.a;
        objArr[2] = "\\";
        if (str == null) {
            str = "";
        }
        objArr[3] = str;
        return String.format("%s%s%s%s", objArr).getBytes(Charset.forName("UTF-8"));
    }
}
