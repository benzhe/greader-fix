package defpackage;

import defpackage.q6;

/* loaded from: classes.dex */
public class r6 extends q6 {
    public int m;

    public r6(x6 x6Var) {
        super(x6Var);
        if (x6Var instanceof u6) {
            this.e = q6.a.HORIZONTAL_DIMENSION;
        } else {
            this.e = q6.a.VERTICAL_DIMENSION;
        }
    }

    @Override // defpackage.q6
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
}
