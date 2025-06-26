package defpackage;

import java.nio.charset.Charset;

/* loaded from: classes.dex */
public class fm5 {
    public static final cl5 b = new cl5();
    public static final String c = a("hts/cahyiseot-agolai.o/1frlglgc/aclg", "tp:/rsltcrprsp.ogepscmv/ieo/eaybtho");
    public static final String d = a("AzSBpY4F0rHiHFdinTvM", "IayrSTFL9eJ69YeSUO2");
    public static final xq<tk5, byte[]> e = new xq() { // from class: em5
        @Override // defpackage.xq
        public Object apply(Object obj) {
            return fm5.b.g((tk5) obj).getBytes(Charset.forName("UTF-8"));
        }
    };
    public final yq<tk5> a;

    public fm5(yq<tk5> yqVar, xq<tk5, byte[]> xqVar) {
        this.a = yqVar;
    }

    public static String a(String str, String str2) {
        int length = str.length() - str2.length();
        if (length < 0 || length > 1) {
            throw new IllegalArgumentException("Invalid input received");
        }
        StringBuilder sb = new StringBuilder(str2.length() + str.length());
        for (int i = 0; i < str.length(); i++) {
            sb.append(str.charAt(i));
            if (str2.length() > i) {
                sb.append(str2.charAt(i));
            }
        }
        return sb.toString();
    }
}
