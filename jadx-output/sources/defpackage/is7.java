package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import java.util.Collections;
import java.util.List;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.Node;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public abstract class is7 {
    public static final a48 a = b48.e(is7.class);

    public static /* synthetic */ String b(is7 is7Var, Element element, js7 js7Var, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            js7Var = null;
        }
        if ((i & 4) != 0) {
            z = true;
        }
        return is7Var.a(element, js7Var, z);
    }

    public String a(Element element, js7 js7Var, boolean z) {
        im7.f(element, "e");
        String strText = element.text();
        im7.b(strText, "e.text()");
        String string = co7.F(strText).toString();
        if (!z || js7Var == null) {
            return string;
        }
        im7.f(string, AtomText.TYPE_TEXT);
        String strReplaceAll = js7Var.f.matcher(string).replaceAll(StringUtils.SPACE);
        im7.b(strReplaceAll, "normalize.matcher(text).replaceAll(\" \")");
        return strReplaceAll;
    }

    public Element c(Node node, js7 js7Var) {
        im7.f(js7Var, "regEx");
        while (node != null && !(node instanceof Element) && (node instanceof TextNode)) {
            String strText = ((TextNode) node).text();
            im7.b(strText, "next.text()");
            im7.f(strText, "matchString");
            if (!js7Var.h.matcher(strText).find()) {
                break;
            }
            node = node.nextSibling();
        }
        if (!(node instanceof Element)) {
            node = null;
        }
        return (Element) node;
    }

    public void d(Node node, String str) {
        im7.f(node, "node");
        im7.f(str, "reason");
        if (node.parent() != null) {
            im7.f(node, "node");
            im7.f(str, "reason");
            a.a("{} [{}]", str, "\n------\n" + node.outerHtml() + "\n------\n");
            node.remove();
        }
    }

    public void e(Element element, String str, pl7<? super Element, Boolean> pl7Var) {
        List<Element> listV;
        im7.f(element, "element");
        im7.f(str, "tagName");
        Elements elementsByTag = element.getElementsByTag(str);
        im7.b(elementsByTag, "element.getElementsByTag(tagName)");
        im7.e(elementsByTag, "$this$reversed");
        if (elementsByTag.size() <= 1) {
            listV = ek7.s(elementsByTag);
        } else {
            listV = ek7.v(elementsByTag);
            im7.e(listV, "$this$reverse");
            Collections.reverse(listV);
        }
        for (Element element2 : listV) {
            if (element2.parentNode() != null) {
                if (pl7Var != null) {
                    im7.b(element2, "childElement");
                    if (pl7Var.invoke(element2).booleanValue()) {
                    }
                }
                im7.b(element2, "childElement");
                d(element2, "removeNode('" + str + "')");
            }
        }
    }
}
