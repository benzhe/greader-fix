package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.util.regex.Pattern;

/* loaded from: classes2.dex */
public class ur7 extends js7 {
    public final Pattern j;

    /* JADX WARN: Illegal instructions before constructor call */
    public ur7(String str, String str2, String str3, String str4, String str5, String str6, String str7, String str8, String str9, String str10, String str11, String str12, String str13, String str14, int i) {
        String str15 = (i & 1) != 0 ? "banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|foot|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote" : null;
        String str16 = (i & 2) != 0 ? "and|article|body|column|main|shadow" : null;
        String str17 = (i & 4) != 0 ? "article|body|content|entry|hentry|h-entry|main|page|pagination|post|text|blog|story" : null;
        String str18 = (i & 8) != 0 ? "hidden|^hid$| hid$| hid |^hid |banner|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|share|shoutbox|sidebar|skyscraper|sponsor|shopping|tags|tool|widget|float" : null;
        String str19 = (i & 16) != 0 ? "print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single|utility" : null;
        String str20 = (i & 32) != 0 ? "byline|author|dateline|writtenby|p-author" : null;
        String str21 = (i & 64) != 0 ? "<(/?)font[^>]*>" : null;
        String str22 = (i & 128) != 0 ? "\\s{2,}" : null;
        String str23 = (i & RecyclerView.a0.FLAG_TMP_DETACHED) != 0 ? "//(www\\.)?(dailymotion|youtube|youtube-nocookie|player\\.vimeo)\\.com" : null;
        String str24 = (i & 512) != 0 ? "(next|weiter|continue|>([^\\|]|$)|»([^\\|]|$))" : null;
        String str25 = (i & 1024) != 0 ? "(prev|earl|old|new|<|«)" : null;
        String str26 = (i & RecyclerView.a0.FLAG_MOVED) != 0 ? "^\\s*$" : null;
        String str27 = (i & RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT) != 0 ? "\\S$" : null;
        String str28 = (i & RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST) != 0 ? "author|avatar|thumbnail" : null;
        im7.f(str15, "unlikelyCandidatesPattern");
        im7.f(str16, "okMaybeItsACandidatePattern");
        im7.f(str17, "positivePattern");
        im7.f(str18, "negativePattern");
        im7.f(str19, "extraneousPattern");
        im7.f(str20, "bylinePattern");
        im7.f(str21, "replaceFontsPattern");
        im7.f(str22, "normalizePattern");
        im7.f(str23, "videosPattern");
        im7.f(str24, "nextLinkPattern");
        im7.f(str25, "prevLinkPattern");
        im7.f(str26, "whitespacePattern");
        im7.f(str27, "hasContentPattern");
        im7.f(str28, "removeImagePattern");
        super(str15, str16, str17, str18, str19, str20, str21, str22, str23, str24, str25, str26, str27);
        Pattern patternCompile = Pattern.compile(str28);
        im7.b(patternCompile, "Pattern.compile(removeImagePattern)");
        this.j = patternCompile;
    }
}
