package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class q6 implements o6 {
    public x6 d;
    public int f;
    public int g;
    public o6 a = null;
    public boolean b = false;
    public boolean c = false;
    public a e = a.UNKNOWN;
    public int h = 1;
    public r6 i = null;
    public boolean j = false;
    public List<o6> k = new ArrayList();
    public List<q6> l = new ArrayList();

    public enum a {
        UNKNOWN,
        HORIZONTAL_DIMENSION,
        VERTICAL_DIMENSION,
        LEFT,
        RIGHT,
        TOP,
        BOTTOM,
        BASELINE
    }

    public q6(x6 x6Var) {
        this.d = x6Var;
    }

    @Override // defpackage.o6
    public void a(o6 o6Var) {
        Iterator<q6> it = this.l.iterator();
        while (it.hasNext()) {
            if (!it.next().j) {
                return;
            }
        }
        this.c = true;
        o6 o6Var2 = this.a;
        if (o6Var2 != null) {
            o6Var2.a(this);
        }
        if (this.b) {
            this.d.a(this);
            return;
        }
        q6 q6Var = null;
        int i = 0;
        for (q6 q6Var2 : this.l) {
            if (!(q6Var2 instanceof r6)) {
                i++;
                q6Var = q6Var2;
            }
        }
        if (q6Var != null && i == 1 && q6Var.j) {
            r6 r6Var = this.i;
            if (r6Var != null) {
                if (!r6Var.j) {
                    return;
                } else {
                    this.f = this.h * r6Var.g;
                }
            }
            c(q6Var.g + this.f);
        }
        o6 o6Var3 = this.a;
        if (o6Var3 != null) {
            o6Var3.a(this);
        }
    }

    public void b() {
        this.l.clear();
        this.k.clear();
        this.j = false;
        this.g = 0;
        this.c = false;
        this.b = false;
    }

    public void c(int i) {
        if (this.j) {
            return;
        }
        this.j = true;
        this.g = i;
        for (o6 o6Var : this.k) {
            o6Var.a(o6Var);
        }
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.d.b.f0);
        sb.append(":");
        sb.append(this.e);
        sb.append("(");
        sb.append(this.j ? Integer.valueOf(this.g) : "unresolved");
        sb.append(") <t=");
        sb.append(this.l.size());
        sb.append(":d=");
        sb.append(this.k.size());
        sb.append(">");
        return sb.toString();
    }
}
