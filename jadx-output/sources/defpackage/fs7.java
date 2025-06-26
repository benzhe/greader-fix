package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSSimpleChapters;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.regex.Pattern;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.jsoup.nodes.TextNode;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class fs7 {
    public static final Pattern a = Pattern.compile("^[a-zA-Z][a-zA-Z0-9\\+\\-\\.]*:");
    public static final List<String> b = Arrays.asList("readability-styled", "page");
    public static final a48 c = b48.e(fs7.class);

    public void a(Element element, Set<String> set) {
        im7.f(element, "node");
        im7.f(set, "classesToPreserve");
        Set<String> setClassNames = element.classNames();
        im7.b(setClassNames, "node.classNames()");
        ArrayList arrayList = new ArrayList();
        for (Object obj : setClassNames) {
            if (set.contains((String) obj)) {
                arrayList.add(obj);
            }
        }
        if (!arrayList.isEmpty()) {
            element.classNames(ek7.y(arrayList));
        } else {
            element.removeAttr("class");
        }
        Elements elementsChildren = element.children();
        im7.b(elementsChildren, "node.children()");
        for (Element element2 : elementsChildren) {
            im7.b(element2, "child");
            a(element2, set);
        }
    }

    public void b(Document document, Element element, String str, String str2, String str3) {
        im7.f(document, "originalDocument");
        im7.f(element, "element");
        im7.f(str, "scheme");
        im7.f(str2, "prePath");
        im7.f(str3, "pathBase");
        im7.f(element, "element");
        im7.f(str, "scheme");
        im7.f(str2, "prePath");
        im7.f(str3, "pathBase");
        Elements elementsByTag = element.getElementsByTag("a");
        im7.b(elementsByTag, "element.getElementsByTag(\"a\")");
        for (Element element2 : elementsByTag) {
            String strAttr = element2.attr(NSSimpleChapters.HREF);
            im7.b(strAttr, NSSimpleChapters.HREF);
            if (!co7.n(strAttr)) {
                if (co7.l(strAttr, "javascript:", 0, false, 6) == 0) {
                    element2.replaceWith(new TextNode(element2.wholeText()));
                } else {
                    element2.attr(NSSimpleChapters.HREF, d(strAttr, str, str2, str3));
                }
            }
        }
        im7.f(element, "element");
        im7.f(str, "scheme");
        im7.f(str2, "prePath");
        im7.f(str3, "pathBase");
        Elements elementsByTag2 = element.getElementsByTag("img");
        im7.b(elementsByTag2, "element.getElementsByTag(\"img\")");
        for (Element element3 : elementsByTag2) {
            im7.b(element3, "img");
            im7.f(element3, "img");
            im7.f(str, "scheme");
            im7.f(str2, "prePath");
            im7.f(str3, "pathBase");
            String strAttr2 = element3.attr("src");
            im7.b(strAttr2, "src");
            if (!co7.n(strAttr2)) {
                element3.attr("src", d(strAttr2, str, str2, str3));
            }
        }
    }

    public void c(Document document, Element element, String str, Collection<String> collection) {
        im7.f(document, "originalDocument");
        im7.f(element, "articleContent");
        im7.f(str, "articleUri");
        im7.f(collection, "additionalClassesToPreserve");
        im7.f(document, "originalDocument");
        im7.f(element, "element");
        im7.f(str, "articleUri");
        try {
            URI uriCreate = URI.create(str);
            im7.b(uriCreate, "uri");
            String scheme = uriCreate.getScheme();
            String str2 = uriCreate.getScheme() + "://" + uriCreate.getHost();
            StringBuilder sb = new StringBuilder();
            sb.append(uriCreate.getScheme());
            sb.append("://");
            sb.append(uriCreate.getHost());
            String path = uriCreate.getPath();
            im7.b(path, "uri.path");
            String path2 = uriCreate.getPath();
            im7.b(path2, "uri.path");
            String strSubstring = path.substring(0, co7.p(path2, "/", 0, false, 6) + 1);
            im7.b(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
            sb.append(strSubstring);
            String string = sb.toString();
            im7.b(scheme, "scheme");
            b(document, element, scheme, str2, string);
        } catch (Exception e) {
            c.b("Could not fix relative urls for " + element + " with base uri " + str, e);
        }
        List listAsList = Arrays.asList(b, collection);
        im7.b(listAsList, "Arrays.asList(CLASSES_TO…itionalClassesToPreserve)");
        im7.e(listAsList, "$this$flatten");
        ArrayList arrayList = new ArrayList();
        Iterator it = listAsList.iterator();
        while (it.hasNext()) {
            n56.f(arrayList, (Iterable) it.next());
        }
        a(element, ek7.z(arrayList));
    }

    public String d(String str, String str2, String str3, String str4) {
        im7.f(str, "uri");
        im7.f(str2, "scheme");
        im7.f(str3, "prePath");
        im7.f(str4, "pathBase");
        im7.f(str, "uri");
        if (a.matcher(str).find() || str.length() <= 2) {
            return str;
        }
        String strSubstring = str.substring(0, 2);
        im7.b(strSubstring, "(this as java.lang.Strin…ing(startIndex, endIndex)");
        if (im7.a(strSubstring, "//")) {
            StringBuilder sbB = jo.B(str2, "://");
            String strSubstring2 = str.substring(2);
            im7.b(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            sbB.append(strSubstring2);
            return sbB.toString();
        }
        if (str.charAt(0) == '/') {
            return jo.n(str3, str);
        }
        if (co7.l(str, "./", 0, false, 6) != 0) {
            return str.charAt(0) == '#' ? str : jo.n(str4, str);
        }
        StringBuilder sbZ = jo.z(str4);
        String strSubstring3 = str.substring(2);
        im7.b(strSubstring3, "(this as java.lang.String).substring(startIndex)");
        sbZ.append(strSubstring3);
        return sbZ.toString();
    }
}
