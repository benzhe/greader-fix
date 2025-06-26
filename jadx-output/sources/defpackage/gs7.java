package defpackage;

import org.jsoup.nodes.Element;

/* loaded from: classes2.dex */
public final class gs7 extends jm7 implements pl7<Element, Boolean> {
    public static final gs7 e = new gs7();

    public gs7() {
        super(1);
    }

    @Override // defpackage.pl7
    public Boolean invoke(Element element) {
        Element element2 = element;
        im7.f(element2, "scriptNode");
        element2.val(null);
        element2.removeAttr("src");
        return Boolean.TRUE;
    }
}
