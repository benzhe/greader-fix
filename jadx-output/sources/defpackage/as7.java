package defpackage;

import defpackage.zr7;
import java.util.Objects;
import org.jsoup.nodes.Element;

/* loaded from: classes2.dex */
public final class as7 extends jm7 implements pl7<Element, Boolean> {
    public final /* synthetic */ zr7.b e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public as7(zr7.b bVar) {
        super(1);
        this.e = bVar;
    }

    @Override // defpackage.pl7
    public Boolean invoke(Element element) {
        Element element2 = element;
        im7.f(element2, "element");
        zr7 zr7Var = zr7.this;
        Objects.requireNonNull(zr7Var);
        im7.f(element2, "table");
        Boolean bool = zr7Var.g.get(element2);
        return Boolean.valueOf(bool != null ? bool.booleanValue() : false);
    }
}
