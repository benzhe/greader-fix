package defpackage;

import org.jsoup.nodes.Element;

/* loaded from: classes2.dex */
public final class ds7 extends jm7 implements pl7<Element, Boolean> {
    public final /* synthetic */ zr7 e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ds7(zr7 zr7Var) {
        super(1);
        this.e = zr7Var;
    }

    @Override // defpackage.pl7
    public Boolean invoke(Element element) {
        Element element2 = element;
        im7.f(element2, "paragraph");
        return Boolean.valueOf(((element2.getElementsByTag("img").size() + element2.getElementsByTag("embed").size()) + element2.getElementsByTag("object").size()) + element2.getElementsByTag("iframe").size() == 0 && is7.b(this.e, element2, null, false, 2, null).length() == 0);
    }
}
