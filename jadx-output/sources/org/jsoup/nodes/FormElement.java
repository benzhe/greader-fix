package org.jsoup.nodes;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.jsoup.Connection;
import org.jsoup.Jsoup;
import org.jsoup.helper.HttpConnection;
import org.jsoup.helper.Validate;
import org.jsoup.parser.Tag;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class FormElement extends Element {
    private final Elements elements;

    public FormElement(Tag tag, String str, Attributes attributes) {
        super(tag, str, attributes);
        this.elements = new Elements();
    }

    public FormElement addElement(Element element) {
        this.elements.add(element);
        return this;
    }

    public Elements elements() {
        return this.elements;
    }

    public List<Connection.KeyVal> formData() {
        Element elementFirst;
        ArrayList arrayList = new ArrayList();
        Iterator<Element> it = this.elements.iterator();
        while (it.hasNext()) {
            Element next = it.next();
            if (next.tag().isFormSubmittable() && !next.hasAttr("disabled")) {
                String strAttr = next.attr(InetAddressKeys.KEY_NAME);
                if (strAttr.length() != 0) {
                    String strAttr2 = next.attr(NSRSS20.ENC_TYPE);
                    if (!strAttr2.equalsIgnoreCase("button")) {
                        if ("select".equals(next.normalName())) {
                            boolean z = false;
                            Iterator<Element> it2 = next.select("option[selected]").iterator();
                            while (it2.hasNext()) {
                                arrayList.add(HttpConnection.KeyVal.create(strAttr, it2.next().val()));
                                z = true;
                            }
                            if (!z && (elementFirst = next.select("option").first()) != null) {
                                arrayList.add(HttpConnection.KeyVal.create(strAttr, elementFirst.val()));
                            }
                        } else if (!"checkbox".equalsIgnoreCase(strAttr2) && !"radio".equalsIgnoreCase(strAttr2)) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, next.val()));
                        } else if (next.hasAttr("checked")) {
                            arrayList.add(HttpConnection.KeyVal.create(strAttr, next.val().length() > 0 ? next.val() : "on"));
                        }
                    }
                }
            }
        }
        return arrayList;
    }

    @Override // org.jsoup.nodes.Node
    public void removeChild(Node node) {
        super.removeChild(node);
        this.elements.remove(node);
    }

    public Connection submit() {
        String strAbsUrl = hasAttr("action") ? absUrl("action") : baseUri();
        Validate.notEmpty(strAbsUrl, "Could not determine a form action URL for submit. Ensure you set a base URI when parsing.");
        return Jsoup.connect(strAbsUrl).data(formData()).method(attr("method").toUpperCase().equals("POST") ? Connection.Method.POST : Connection.Method.GET);
    }

    @Override // org.jsoup.nodes.Element, org.jsoup.nodes.Node
    /* renamed from: clone */
    public FormElement mo141clone() {
        return (FormElement) super.mo141clone();
    }
}
