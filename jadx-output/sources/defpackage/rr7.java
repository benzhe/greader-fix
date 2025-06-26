package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;

/* loaded from: classes2.dex */
public class rr7 extends qr7 {
    public rr7(String str, String str2) {
        im7.f(str, "uri");
        im7.f(str2, AtomText.TYPE_HTML);
        yr7 yr7Var = new yr7(0, 0, 0, null, 15);
        ur7 ur7Var = new ur7(null, null, null, null, null, null, null, null, null, null, null, null, null, null, 16383);
        hs7 hs7Var = new hs7(ur7Var);
        es7 es7Var = new es7(ur7Var);
        sr7 sr7Var = new sr7(yr7Var, ur7Var);
        tr7 tr7Var = new tr7();
        im7.f(str, "uri");
        im7.f(str2, AtomText.TYPE_HTML);
        im7.f(yr7Var, "options");
        im7.f(ur7Var, "regExUtil");
        im7.f(hs7Var, "preprocessor");
        im7.f(es7Var, "metadataParser");
        im7.f(sr7Var, "articleGrabber");
        im7.f(tr7Var, "postprocessor");
        Document document = Jsoup.parse(str2, str);
        im7.b(document, "Jsoup.parse(html, uri)");
        im7.f(str, "uri");
        im7.f(document, "document");
        im7.f(yr7Var, "options");
        im7.f(ur7Var, "regExUtil");
        im7.f(hs7Var, "preprocessor");
        im7.f(es7Var, "metadataParser");
        im7.f(sr7Var, "articleGrabber");
        im7.f(tr7Var, "postprocessor");
        super(str, document, yr7Var, ur7Var, hs7Var, es7Var, sr7Var, tr7Var);
    }
}
