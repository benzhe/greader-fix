package defpackage;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import org.jsoup.nodes.Element;
import org.jsoup.select.Elements;

/* loaded from: classes2.dex */
public class zr7 extends is7 {
    public static final List<String> j = Arrays.asList("section", "h2", "h3", "h4", "h5", "h6", "p", "td", "pre");
    public static final List<String> k = Arrays.asList("a", "blockquote", "dl", "div", "img", "ol", "p", "pre", "table", "ul", "select");
    public static final List<String> l = Arrays.asList("div", "article", "section", "p");
    public static final List<String> m = Arrays.asList("align", "background", "bgcolor", "border", "cellpadding", "cellspacing", "frame", "hspace", "rules", "style", "valign", "vspace");
    public static final List<String> n = Arrays.asList("table", "th", "td", "hr", "pre");
    public static final List<String> o = Arrays.asList("object", "embed", "iframe");
    public static final List<String> p = Arrays.asList("col", "colgroup", "tfoot", "thead", "th");
    public static final a48 q = b48.e(zr7.class);
    public String b;
    public String c;
    public final int d;
    public final int e;
    public final HashMap<Element, xr7> f;
    public final HashMap<Element, Boolean> g;
    public final yr7 h;
    public final js7 i;

    public static final class a extends jm7 implements pl7<Element, Boolean> {
        public final /* synthetic */ boolean f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(boolean z) {
            super(1);
            this.f = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:14:0x0064  */
        @Override // defpackage.pl7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean invoke(org.jsoup.nodes.Element r11) throws java.io.IOException {
            /*
                r10 = this;
                org.jsoup.nodes.Element r11 = (org.jsoup.nodes.Element) r11
                java.lang.String r0 = "element"
                defpackage.im7.f(r11, r0)
                boolean r0 = r10.f
                if (r0 == 0) goto L64
                org.jsoup.nodes.Attributes r0 = r11.attributes()
                java.lang.String r1 = "element.attributes()"
                defpackage.im7.b(r0, r1)
                java.util.ArrayList r2 = new java.util.ArrayList
                r1 = 10
                int r1 = defpackage.n56.x(r0, r1)
                r2.<init>(r1)
                java.util.Iterator r0 = r0.iterator()
            L23:
                boolean r1 = r0.hasNext()
                if (r1 == 0) goto L37
                java.lang.Object r1 = r0.next()
                org.jsoup.nodes.Attribute r1 = (org.jsoup.nodes.Attribute) r1
                java.lang.String r1 = r1.getValue()
                r2.add(r1)
                goto L23
            L37:
                r4 = 0
                r5 = 0
                r6 = 0
                r7 = 0
                r8 = 0
                r9 = 62
                java.lang.String r3 = "|"
                java.lang.String r0 = defpackage.ek7.k(r2, r3, r4, r5, r6, r7, r8, r9)
                zr7 r1 = defpackage.zr7.this
                js7 r1 = r1.i
                boolean r0 = r1.c(r0)
                r1 = 0
                if (r0 == 0) goto L50
                goto L65
            L50:
                zr7 r0 = defpackage.zr7.this
                js7 r0 = r0.i
                java.lang.String r11 = r11.html()
                java.lang.String r2 = "element.html()"
                defpackage.im7.b(r11, r2)
                boolean r11 = r0.c(r11)
                if (r11 == 0) goto L64
                goto L65
            L64:
                r1 = 1
            L65:
                java.lang.Boolean r11 = java.lang.Boolean.valueOf(r1)
                return r11
            */
            throw new UnsupportedOperationException("Method not decompiled: zr7.a.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public static final class b extends jm7 implements pl7<Element, Boolean> {
        public final /* synthetic */ vr7 f;
        public final /* synthetic */ boolean g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(vr7 vr7Var, boolean z) {
            super(1);
            this.f = vr7Var;
            this.g = z;
        }

        /* JADX WARN: Removed duplicated region for block: B:23:0x00f3  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x0143  */
        @Override // defpackage.pl7
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public java.lang.Boolean invoke(org.jsoup.nodes.Element r23) {
            /*
                Method dump skipped, instructions count: 331
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: zr7.b.invoke(java.lang.Object):java.lang.Object");
        }
    }

    public zr7(yr7 yr7Var, js7 js7Var) {
        im7.f(yr7Var, "options");
        im7.f(js7Var, "regEx");
        this.h = yr7Var;
        this.i = js7Var;
        this.d = yr7Var.b;
        this.e = yr7Var.c;
        this.f = new HashMap<>();
        this.g = new HashMap<>();
    }

    public static /* synthetic */ Element l(zr7 zr7Var, Element element, boolean z, int i, Object obj) {
        if ((i & 2) != 0) {
            z = false;
        }
        return zr7Var.k(element, z);
    }

    public static /* synthetic */ List n(zr7 zr7Var, Element element, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return zr7Var.m(element, i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:174:0x04a6, code lost:
    
        r0.add(r5, r3);
        r3 = r0.size();
        r4 = r52.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x04af, code lost:
    
        if (r3 <= r4) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x04b1, code lost:
    
        r0.remove(r4);
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02f9  */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0301  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x00b9  */
    /* JADX WARN: Removed duplicated region for block: B:306:0x07bb  */
    /* JADX WARN: Removed duplicated region for block: B:311:0x07e9  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x00fd  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0105  */
    /* JADX WARN: Removed duplicated region for block: B:354:0x0967  */
    /* JADX WARN: Removed duplicated region for block: B:453:0x0cfc A[LOOP:0: B:10:0x0040->B:453:0x0cfc, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:45:0x0152  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x0c92 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:95:0x027a  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0289  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static org.jsoup.nodes.Element p(defpackage.zr7 r52, org.jsoup.nodes.Document r53, defpackage.wr7 r54, defpackage.vr7 r55, org.jsoup.nodes.Element r56, int r57, java.lang.Object r58) {
        /*
            Method dump skipped, instructions count: 3336
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zr7.p(zr7, org.jsoup.nodes.Document, wr7, vr7, org.jsoup.nodes.Element, int, java.lang.Object):org.jsoup.nodes.Element");
    }

    public static /* synthetic */ boolean r(zr7 zr7Var, Element element, String str, int i, pl7 pl7Var, int i2, Object obj) {
        if ((i2 & 4) != 0) {
            i = 3;
        }
        int i3 = i2 & 8;
        return zr7Var.q(element, str, i, null);
    }

    public void f(Element element, String str) {
        im7.f(element, "e");
        im7.f(str, "tag");
        e(element, str, new a(o.contains(str)));
    }

    public void g(Element element, String str, vr7 vr7Var) {
        im7.f(element, "e");
        im7.f(str, "tag");
        im7.f(vr7Var, "options");
        if (vr7Var.c) {
            e(element, str, new b(vr7Var, im7.a(str, "ul") || im7.a(str, "ol")));
        }
    }

    public void h(Element element) {
        im7.f(element, "e");
        if (im7.a(element.tagName(), "svg")) {
            return;
        }
        if (element.className() != "readability-styled") {
            List<String> list = m;
            im7.b(list, "PRESENTATIONAL_ATTRIBUTES");
            Iterator<T> it = list.iterator();
            while (it.hasNext()) {
                element.removeAttr((String) it.next());
            }
            if (n.contains(element.tagName())) {
                element.removeAttr("width");
                element.removeAttr("height");
            }
        }
        Elements elementsChildren = element.children();
        im7.b(elementsChildren, "e.children()");
        for (Element element2 : elementsChildren) {
            im7.b(element2, "child");
            h(element2);
        }
    }

    public int i(Element element, vr7 vr7Var) {
        im7.f(element, "e");
        im7.f(vr7Var, "options");
        if (!vr7Var.b) {
            return 0;
        }
        im7.b(element.className(), "e.className()");
        if (!co7.n(r5)) {
            js7 js7Var = this.i;
            String strClassName = element.className();
            im7.b(strClassName, "e.className()");
            i = js7Var.a(strClassName) ? -25 : 0;
            js7 js7Var2 = this.i;
            String strClassName2 = element.className();
            im7.b(strClassName2, "e.className()");
            if (js7Var2.b(strClassName2)) {
                i += 25;
            }
        }
        im7.b(element.id(), "e.id()");
        if (!(!co7.n(r5))) {
            return i;
        }
        js7 js7Var3 = this.i;
        String strId = element.id();
        im7.b(strId, "e.id()");
        if (js7Var3.a(strId)) {
            i -= 25;
        }
        js7 js7Var4 = this.i;
        String strId2 = element.id();
        im7.b(strId2, "e.id()");
        return js7Var4.b(strId2) ? i + 25 : i;
    }

    public double j(Element element) {
        im7.f(element, "element");
        int length = is7.b(this, element, this.i, false, 4, null).length();
        if (length == 0) {
            return 0.0d;
        }
        int length2 = 0;
        Elements elementsByTag = element.getElementsByTag("a");
        im7.b(elementsByTag, "element.getElementsByTag(\"a\")");
        for (Element element2 : elementsByTag) {
            im7.b(element2, "linkNode");
            length2 += is7.b(this, element2, this.i, false, 4, null).length();
        }
        return length2 / length;
    }

    public Element k(Element element, boolean z) {
        im7.f(element, "node");
        if (!z && element.children().size() > 0) {
            return element.child(0);
        }
        Element elementNextElementSibling = element.nextElementSibling();
        if (elementNextElementSibling != null) {
            return elementNextElementSibling;
        }
        Element elementParent = element.parent();
        while (elementParent != null && elementParent.nextElementSibling() == null) {
            elementParent = elementParent.parent();
        }
        if (elementParent != null) {
            return elementParent.nextElementSibling();
        }
        return null;
    }

    public List<Element> m(Element element, int i) {
        im7.f(element, "node");
        ArrayList arrayList = new ArrayList();
        int i2 = 0;
        while (element.parent() != null) {
            arrayList.add(element.parent());
            i2++;
            if (i2 == i) {
                break;
            }
            element = element.parent();
            im7.b(element, "next.parent()");
        }
        return arrayList;
    }

    public xr7 o(Element element) {
        im7.f(element, "element");
        return this.f.get(element);
    }

    public boolean q(Element element, String str, int i, pl7<? super Element, Boolean> pl7Var) {
        im7.f(element, "node");
        im7.f(str, "tagName");
        String lowerCase = str.toLowerCase();
        im7.b(lowerCase, "(this as java.lang.String).toLowerCase()");
        int i2 = 0;
        while (element.parent() != null) {
            if (i > 0 && i2 > i) {
                return false;
            }
            if (im7.a(element.parent().tagName(), lowerCase)) {
                if (pl7Var == null) {
                    return true;
                }
                Element elementParent = element.parent();
                im7.b(elementParent, "parent.parent()");
                if (pl7Var.invoke(elementParent).booleanValue()) {
                    return true;
                }
            }
            element = element.parent();
            im7.b(element, "parent.parent()");
            i2++;
        }
        return false;
    }

    public boolean s(Element element) {
        im7.f(element, "element");
        Elements elementsChildren = element.children();
        im7.b(elementsChildren, "element.children()");
        for (Element element2 : elementsChildren) {
            if (k.contains(element2.tagName())) {
                return true;
            }
            im7.b(element2, "node");
            if (s(element2)) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Failed to restore switch over string. Please report as a decompilation issue
    java.lang.NullPointerException: Cannot invoke "java.util.List.iterator()" because the return value of "jadx.core.dex.visitors.regions.SwitchOverStringVisitor$SwitchData.getNewCases()" is null
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.restoreSwitchOverString(SwitchOverStringVisitor.java:109)
    	at jadx.core.dex.visitors.regions.SwitchOverStringVisitor.visitRegion(SwitchOverStringVisitor.java:66)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:77)
    	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseIterativeStepInternal(DepthRegionTraversal.java:82)
     */
    /* JADX WARN: Removed duplicated region for block: B:44:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ae  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00ea  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.xr7 t(org.jsoup.nodes.Element r6, defpackage.vr7 r7) {
        /*
            Method dump skipped, instructions count: 322
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.zr7.t(org.jsoup.nodes.Element, vr7):xr7");
    }

    public Element u(Element element, String str) {
        im7.f(element, "node");
        im7.f(str, "reason");
        Element elementK = k(element, true);
        d(element, str);
        return elementK;
    }

    public void v(Element element, boolean z) {
        im7.f(element, "table");
        this.g.put(element, Boolean.valueOf(z));
    }

    public boolean w(Element element) {
        im7.f(element, "sibling");
        return im7.a(element.tagName(), "p");
    }
}
