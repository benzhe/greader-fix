package defpackage;

import org.jsoup.nodes.Document;

/* loaded from: classes2.dex */
public class qr7 {
    public static final a48 h = b48.e(qr7.class);
    public final String a;
    public final Document b;
    public final yr7 c;
    public final hs7 d;
    public final es7 e;
    public final zr7 f;
    public final fs7 g;

    public qr7(String str, Document document, yr7 yr7Var, js7 js7Var, hs7 hs7Var, es7 es7Var, zr7 zr7Var, fs7 fs7Var) {
        im7.f(str, "uri");
        im7.f(document, "document");
        im7.f(yr7Var, "options");
        im7.f(js7Var, "regExUtil");
        im7.f(hs7Var, "preprocessor");
        im7.f(es7Var, "metadataParser");
        im7.f(zr7Var, "articleGrabber");
        im7.f(fs7Var, "postprocessor");
        this.a = str;
        this.b = document;
        this.c = yr7Var;
        this.d = hs7Var;
        this.e = es7Var;
        this.f = zr7Var;
        this.g = fs7Var;
    }
}
