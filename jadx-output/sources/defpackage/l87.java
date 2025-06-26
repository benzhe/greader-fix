package defpackage;

import defpackage.c47;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class l87 extends c47.f {
    public final x27 a;
    public final i47 b;
    public final j47<?, ?> c;

    public l87(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
        c50.A(j47Var, "method");
        this.c = j47Var;
        c50.A(i47Var, "headers");
        this.b = i47Var;
        c50.A(x27Var, "callOptions");
        this.a = x27Var;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || l87.class != obj.getClass()) {
            return false;
        }
        l87 l87Var = (l87) obj;
        return c50.T(this.a, l87Var.a) && c50.T(this.b, l87Var.b) && c50.T(this.c, l87Var.c);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, this.c});
    }

    public final String toString() {
        StringBuilder sbZ = jo.z("[method=");
        sbZ.append(this.c);
        sbZ.append(" headers=");
        sbZ.append(this.b);
        sbZ.append(" callOptions=");
        sbZ.append(this.a);
        sbZ.append("]");
        return sbZ.toString();
    }
}
