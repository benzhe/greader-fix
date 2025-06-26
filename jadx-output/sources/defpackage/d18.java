package defpackage;

import java.util.ArrayList;
import java.util.Objects;

/* loaded from: classes2.dex */
public abstract class d18<T> {
    public final k08 a;
    public final p08<T> b;

    public d18(k08 k08Var, p08<T> p08Var) {
        im7.e(k08Var, "_koin");
        im7.e(p08Var, "beanDefinition");
        this.a = k08Var;
        this.b = p08Var;
    }

    public T a(c18 c18Var) throws w08 {
        im7.e(c18Var, "context");
        if (this.a.b.c(g18.DEBUG)) {
            h18 h18Var = this.a.b;
            StringBuilder sbZ = jo.z("| create instance for ");
            sbZ.append(this.b);
            h18Var.a(sbZ.toString());
        }
        try {
            j18 j18Var = c18Var.a;
            o18 o18Var = c18Var.b;
            Objects.requireNonNull(o18Var);
            im7.e(j18Var, "parameters");
            o18Var.d = j18Var;
            T tB = this.b.d.b(c18Var.b, j18Var);
            c18Var.b.d = null;
            return tB;
        } catch (Exception e) {
            StringBuilder sb = new StringBuilder();
            sb.append(e.toString());
            sb.append("\n\t");
            StackTraceElement[] stackTrace = e.getStackTrace();
            im7.d(stackTrace, "e.stackTrace");
            ArrayList arrayList = new ArrayList();
            for (StackTraceElement stackTraceElement : stackTrace) {
                im7.d(stackTraceElement, "it");
                im7.d(stackTraceElement.getClassName(), "it.className");
                if (!(!co7.b(r7, "sun.reflect", false, 2))) {
                    break;
                }
                arrayList.add(stackTraceElement);
            }
            sb.append(ek7.k(arrayList, "\n\t", null, null, 0, null, null, 62));
            String string = sb.toString();
            h18 h18Var2 = this.a.b;
            StringBuilder sbZ2 = jo.z("Instance creation error : could not create instance for ");
            sbZ2.append(this.b);
            sbZ2.append(": ");
            sbZ2.append(string);
            String string2 = sbZ2.toString();
            Objects.requireNonNull(h18Var2);
            im7.e(string2, "msg");
            h18Var2.b(g18.ERROR, string2);
            StringBuilder sbZ3 = jo.z("Could not create instance for ");
            sbZ3.append(this.b);
            throw new w08(sbZ3.toString(), e);
        }
    }

    public abstract T b(c18 c18Var);
}
