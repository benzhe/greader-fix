package defpackage;

import org.apache.commons.text.StringSubstitutor;

/* loaded from: classes.dex */
public final class wu5 {
    public static final wu5 c = new wu5(null, null);
    public final ju5 a;
    public final Boolean b;

    public wu5(ju5 ju5Var, Boolean bool) {
        bx5.c(ju5Var == null || bool == null, "Precondition can specify \"exists\" or \"updateTime\" but not both", new Object[0]);
        this.a = ju5Var;
        this.b = bool;
    }

    public static wu5 a(boolean z) {
        return new wu5(null, Boolean.valueOf(z));
    }

    public boolean b() {
        return this.a == null && this.b == null;
    }

    public boolean c(fu5 fu5Var) {
        ju5 ju5Var = this.a;
        if (ju5Var != null) {
            return (fu5Var instanceof yt5) && fu5Var.b.equals(ju5Var);
        }
        Boolean bool = this.b;
        if (bool != null) {
            return bool.booleanValue() == (fu5Var instanceof yt5);
        }
        bx5.c(b(), "Precondition should be empty", new Object[0]);
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || wu5.class != obj.getClass()) {
            return false;
        }
        wu5 wu5Var = (wu5) obj;
        ju5 ju5Var = this.a;
        if (ju5Var == null ? wu5Var.a != null : !ju5Var.equals(wu5Var.a)) {
            return false;
        }
        Boolean bool = this.b;
        Boolean bool2 = wu5Var.b;
        return bool != null ? bool.equals(bool2) : bool2 == null;
    }

    public int hashCode() {
        ju5 ju5Var = this.a;
        int iHashCode = (ju5Var != null ? ju5Var.hashCode() : 0) * 31;
        Boolean bool = this.b;
        return iHashCode + (bool != null ? bool.hashCode() : 0);
    }

    public String toString() {
        if (b()) {
            return "Precondition{<none>}";
        }
        if (this.a != null) {
            StringBuilder sbZ = jo.z("Precondition{updateTime=");
            sbZ.append(this.a);
            sbZ.append(StringSubstitutor.DEFAULT_VAR_END);
            return sbZ.toString();
        }
        if (this.b == null) {
            bx5.a("Invalid Precondition", new Object[0]);
            throw null;
        }
        StringBuilder sbZ2 = jo.z("Precondition{exists=");
        sbZ2.append(this.b);
        sbZ2.append(StringSubstitutor.DEFAULT_VAR_END);
        return sbZ2.toString();
    }
}
