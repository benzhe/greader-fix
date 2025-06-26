package defpackage;

import org.jsoup.nodes.Node;

/* loaded from: classes2.dex */
public class hs7 extends is7 {
    public static final a48 c = b48.e(hs7.class);
    public final js7 b;

    public hs7() {
        js7 js7Var = new js7("banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|foot|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote", "and|article|body|column|main|shadow", "article|body|content|entry|hentry|h-entry|main|page|pagination|post|text|blog|story", "hidden|^hid$| hid$| hid |^hid |banner|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|share|shoutbox|sidebar|skyscraper|sponsor|shopping|tags|tool|widget", "print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single|utility", "byline|author|dateline|writtenby|p-author", "<(/?)font[^>]*>", "\\s{2,}", "//(www\\.)?(dailymotion|youtube|youtube-nocookie|player\\.vimeo)\\.com", "(next|weiter|continue|>([^\\|]|$)|»([^\\|]|$))", "(prev|earl|old|new|<|«)", "^\\s*$", "\\S$");
        im7.f(js7Var, "regEx");
        this.b = js7Var;
    }

    public void f(Node node) {
        im7.f(node, "node");
        int i = 0;
        while (i < node.childNodeSize()) {
            Node nodeChildNode = node.childNode(i);
            if (im7.a(nodeChildNode.nodeName(), "#comment")) {
                im7.b(nodeChildNode, "child");
                d(nodeChildNode, "removeComments");
            } else {
                im7.b(nodeChildNode, "child");
                f(nodeChildNode);
                i++;
            }
        }
    }

    public hs7(js7 js7Var) {
        im7.f(js7Var, "regEx");
        this.b = js7Var;
    }
}
