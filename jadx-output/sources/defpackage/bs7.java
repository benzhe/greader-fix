package defpackage;

import org.jsoup.nodes.Element;

/* loaded from: classes2.dex */
public final class bs7 extends jm7 implements pl7<Element, Boolean> {
    public final /* synthetic */ zr7 e;
    public final /* synthetic */ vr7 f;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public bs7(zr7 zr7Var, Element element, vr7 vr7Var) {
        super(1);
        this.e = zr7Var;
        this.f = vr7Var;
    }

    @Override // defpackage.pl7
    public Boolean invoke(Element element) {
        Element element2 = element;
        im7.f(element2, "header");
        return Boolean.valueOf(this.e.i(element2, this.f) < 0);
    }
}
