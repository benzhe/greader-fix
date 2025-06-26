package defpackage;

import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class js7 {
    public final Pattern a;
    public final Pattern b;
    public final Pattern c;
    public final Pattern d;
    public final Pattern e;
    public final Pattern f;
    public final Pattern g;
    public final Pattern h;
    public final Pattern i;

    public js7(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13) {
        im7.f(str, "unlikelyCandidatesPattern");
        im7.f(str2, "okMaybeItsACandidatePattern");
        im7.f(str3, "positivePattern");
        im7.f(str4, "negativePattern");
        im7.f(str5, "extraneousPattern");
        im7.f(str6, "bylinePattern");
        im7.f(str7, "replaceFontsPattern");
        im7.f(str8, "normalizePattern");
        im7.f(str9, "videosPattern");
        im7.f(str10, "nextLinkPattern");
        im7.f(str11, "prevLinkPattern");
        im7.f(str12, "whitespacePattern");
        im7.f(str13, "hasContentPattern");
        Pattern patternCompile = Pattern.compile(str, 2);
        im7.b(patternCompile, "Pattern.compile(unlikely…Pattern.CASE_INSENSITIVE)");
        this.a = patternCompile;
        Pattern patternCompile2 = Pattern.compile(str2, 2);
        im7.b(patternCompile2, "Pattern.compile(okMaybeI…Pattern.CASE_INSENSITIVE)");
        this.b = patternCompile2;
        Pattern patternCompile3 = Pattern.compile(str3, 2);
        im7.b(patternCompile3, "Pattern.compile(positive…Pattern.CASE_INSENSITIVE)");
        this.c = patternCompile3;
        Pattern patternCompile4 = Pattern.compile(str4, 2);
        im7.b(patternCompile4, "Pattern.compile(negative…Pattern.CASE_INSENSITIVE)");
        this.d = patternCompile4;
        im7.b(Pattern.compile(str5, 2), "Pattern.compile(extraneo…Pattern.CASE_INSENSITIVE)");
        Pattern patternCompile5 = Pattern.compile(str6, 2);
        im7.b(patternCompile5, "Pattern.compile(bylinePa…Pattern.CASE_INSENSITIVE)");
        this.e = patternCompile5;
        im7.b(Pattern.compile(str7, 2), "Pattern.compile(replaceF…Pattern.CASE_INSENSITIVE)");
        Pattern patternCompile6 = Pattern.compile(str8);
        im7.b(patternCompile6, "Pattern.compile(normalizePattern)");
        this.f = patternCompile6;
        Pattern patternCompile7 = Pattern.compile(str9, 2);
        im7.b(patternCompile7, "Pattern.compile(videosPa…Pattern.CASE_INSENSITIVE)");
        this.g = patternCompile7;
        im7.b(Pattern.compile(str10, 2), "Pattern.compile(nextLink…Pattern.CASE_INSENSITIVE)");
        im7.b(Pattern.compile(str11, 2), "Pattern.compile(prevLink…Pattern.CASE_INSENSITIVE)");
        Pattern patternCompile8 = Pattern.compile(str12);
        im7.b(patternCompile8, "Pattern.compile(whitespacePattern)");
        this.h = patternCompile8;
        Pattern patternCompile9 = Pattern.compile(str13);
        im7.b(patternCompile9, "Pattern.compile(hasContentPattern)");
        this.i = patternCompile9;
    }

    public boolean a(String str) {
        im7.f(str, "matchString");
        return this.d.matcher(str).find();
    }

    public boolean b(String str) {
        im7.f(str, "matchString");
        return this.c.matcher(str).find();
    }

    public boolean c(String str) {
        im7.f(str, "matchString");
        return this.g.matcher(str).find();
    }
}
