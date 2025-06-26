package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.util.Objects;
import org.apache.commons.lang3.StringUtils;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class sr7 extends zr7 {
    public final ur7 r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public sr7(yr7 yr7Var, ur7 ur7Var) {
        super(yr7Var, ur7Var);
        im7.f(yr7Var, "options");
        im7.f(ur7Var, "regExExtended");
        this.r = ur7Var;
    }

    @Override // defpackage.zr7
    public boolean w(Element element) {
        boolean z;
        im7.f(element, "sibling");
        im7.f(element, "sibling");
        if (im7.a(element.tagName(), "p")) {
            return true;
        }
        im7.f(element, "element");
        Elements elementsSelect = element.select("img");
        if (elementsSelect.size() <= 0 || !x(element)) {
            z = false;
            break;
        }
        im7.b(elementsSelect, "images");
        for (Element element2 : elementsSelect) {
            im7.b(element2, NSRSS20.IMAGE);
            if (!x(element2)) {
                z = false;
                break;
            }
        }
        z = true;
        return z;
    }

    public boolean x(Element element) {
        im7.f(element, "element");
        String str = element.id() + StringUtils.SPACE + element.className();
        ur7 ur7Var = this.r;
        Objects.requireNonNull(ur7Var);
        im7.f(str, "matchString");
        return (!ur7Var.a(str) || ur7Var.b(str)) && !ur7Var.j.matcher(str).find();
    }
}
