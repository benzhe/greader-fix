package defpackage;

/* loaded from: classes.dex */
public class hr5 {
    public final gr5 a;
    public final eu5 b;
    public final boolean c;

    public hr5(gr5 gr5Var, eu5 eu5Var, boolean z) {
        this.a = gr5Var;
        this.b = eu5Var;
        this.c = z;
    }

    public void a(eu5 eu5Var) {
        this.a.b.add(eu5Var);
    }

    public void b(eu5 eu5Var, av5 av5Var) {
        this.a.c.add(new pu5(eu5Var, av5Var));
    }

    public RuntimeException c(String str) {
        String string;
        eu5 eu5Var = this.b;
        if (eu5Var == null || eu5Var.C()) {
            string = "";
        } else {
            StringBuilder sbZ = jo.z(" (found in field ");
            sbZ.append(this.b.l());
            sbZ.append(")");
            string = sbZ.toString();
        }
        return new IllegalArgumentException(jo.o("Invalid data. ", str, string));
    }

    public boolean d() {
        int iOrdinal = this.a.a.ordinal();
        if (iOrdinal == 0 || iOrdinal == 1 || iOrdinal == 2) {
            return true;
        }
        if (iOrdinal == 3 || iOrdinal == 4) {
            return false;
        }
        bx5.a("Unexpected case for UserDataSource: %s", this.a.a.name());
        throw null;
    }

    public final void e(String str) {
        if (str.isEmpty()) {
            throw c("Document fields must not be empty");
        }
        if (d() && str.startsWith("__") && str.endsWith("__")) {
            throw c("Document fields cannot begin and end with \"__\"");
        }
    }

    public hr5(gr5 gr5Var, eu5 eu5Var, boolean z, fr5 fr5Var) {
        this.a = gr5Var;
        this.b = eu5Var;
        this.c = z;
    }
}
