package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Attributes;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class tr7 extends fs7 {
    @Override // defpackage.fs7
    public void b(Document document, Element element, String str, String str2, String str3) {
        im7.f(document, "originalDocument");
        im7.f(element, "element");
        im7.f(str, "scheme");
        im7.f(str2, "prePath");
        im7.f(str3, "pathBase");
        Element elementFirst = document.head().select("base").first();
        String strAttr = elementFirst != null ? elementFirst.attr(NSSimpleChapters.HREF) : null;
        if (strAttr != null) {
            super.b(document, element, str, str2, strAttr);
        } else {
            super.b(document, element, str, str2, str3);
        }
    }

    @Override // defpackage.fs7
    public void c(Document document, Element element, String str, Collection<String> collection) {
        im7.f(document, "originalDocument");
        im7.f(element, "articleContent");
        im7.f(str, "articleUri");
        im7.f(collection, "additionalClassesToPreserve");
        im7.f(element, "articleContent");
        Elements elementsSelect = element.select("img");
        im7.b(elementsSelect, "articleContent.select(\"img\")");
        for (Element element2 : elementsSelect) {
            im7.b(element2, "imgElement");
            List listL = ek7.l("data-src", "data-original", "data-actualsrc", "data-lazy-src", "data-delayed-url", "data-li-src", "data-pagespeed-lazy-src");
            im7.f(element2, "element");
            im7.f("src", "attributeToSet");
            im7.f(listL, "lazyLoadingAttributes");
            Iterator it = listL.iterator();
            while (true) {
                if (it.hasNext()) {
                    String strAttr = element2.attr((String) it.next());
                    im7.b(strAttr, "value");
                    if (!co7.n(strAttr)) {
                        element2.attr("src", strAttr);
                        break;
                    }
                }
            }
        }
        im7.f(element, "element");
        Elements elementsByTag = element.getElementsByTag("amp-img");
        im7.b(elementsByTag, "element.getElementsByTag(\"amp-img\")");
        for (Element element3 : elementsByTag) {
            if (element3.childNodeSize() == 0) {
                Attributes attributes = new Attributes();
                attributes.put("decoding", "async");
                attributes.put("alt", element3.attr("alt"));
                String strAttr2 = element3.attr("srcset");
                im7.b(strAttr2, "amp_img.attr(\"srcset\")");
                attributes.put("srcset", co7.F(strAttr2).toString());
                element3.appendChild(new Element(Tag.valueOf("img"), "", attributes));
            }
        }
        super.c(document, element, str, collection);
    }
}
