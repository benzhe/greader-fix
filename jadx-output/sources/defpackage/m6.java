package defpackage;

import androidx.constraintlayout.widget.ConstraintLayout;
import defpackage.c6;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class m6 {
    public final ArrayList<c6> a = new ArrayList<>();
    public a b = new a();
    public d6 c;

    public static class a {
        public c6.a a;
        public c6.a b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public boolean h;
        public boolean i;
        public boolean j;
    }

    public interface b {
    }

    public m6(d6 d6Var) {
        this.c = d6Var;
    }

    public final boolean a(b bVar, c6 c6Var, boolean z) {
        c6.a aVar = c6.a.FIXED;
        this.b.a = c6Var.o();
        this.b.b = c6Var.s();
        this.b.c = c6Var.t();
        this.b.d = c6Var.n();
        a aVar2 = this.b;
        aVar2.i = false;
        aVar2.j = z;
        c6.a aVar3 = aVar2.a;
        c6.a aVar4 = c6.a.MATCH_CONSTRAINT;
        boolean z2 = aVar3 == aVar4;
        boolean z3 = aVar2.b == aVar4;
        boolean z4 = z2 && c6Var.P > 0.0f;
        boolean z5 = z3 && c6Var.P > 0.0f;
        if (z4 && c6Var.l[0] == 4) {
            aVar2.a = aVar;
        }
        if (z5 && c6Var.l[1] == 4) {
            aVar2.b = aVar;
        }
        ((ConstraintLayout.b) bVar).a(c6Var, aVar2);
        c6Var.I(this.b.e);
        c6Var.D(this.b.f);
        a aVar5 = this.b;
        c6Var.y = aVar5.h;
        c6Var.C(aVar5.g);
        a aVar6 = this.b;
        aVar6.j = false;
        return aVar6.i;
    }

    public final void b(d6 d6Var, int i, int i2) {
        int i3 = d6Var.Y;
        int i4 = d6Var.Z;
        d6Var.G(0);
        d6Var.F(0);
        d6Var.N = i;
        int i5 = d6Var.Y;
        if (i < i5) {
            d6Var.N = i5;
        }
        d6Var.O = i2;
        int i6 = d6Var.Z;
        if (i2 < i6) {
            d6Var.O = i6;
        }
        d6Var.G(i3);
        d6Var.F(i4);
        this.c.L();
    }
}
