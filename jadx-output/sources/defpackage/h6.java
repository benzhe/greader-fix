package defpackage;

import java.util.Arrays;
import java.util.HashMap;

/* loaded from: classes.dex */
public class h6 extends c6 implements g6 {
    public c6[] C0 = new c6[4];
    public int D0 = 0;

    @Override // defpackage.g6
    public void a(c6 c6Var) {
        if (c6Var == this || c6Var == null) {
            return;
        }
        int i = this.D0 + 1;
        c6[] c6VarArr = this.C0;
        if (i > c6VarArr.length) {
            this.C0 = (c6[]) Arrays.copyOf(c6VarArr, c6VarArr.length * 2);
        }
        c6[] c6VarArr2 = this.C0;
        int i2 = this.D0;
        c6VarArr2[i2] = c6Var;
        this.D0 = i2 + 1;
    }

    @Override // defpackage.g6
    public void b() {
        this.D0 = 0;
        Arrays.fill(this.C0, (Object) null);
    }

    @Override // defpackage.g6
    public void c(d6 d6Var) {
    }

    @Override // defpackage.c6
    public void i(c6 c6Var, HashMap<c6, c6> map) {
        super.i(c6Var, map);
        h6 h6Var = (h6) c6Var;
        this.D0 = 0;
        int i = h6Var.D0;
        for (int i2 = 0; i2 < i; i2++) {
            a(map.get(h6Var.C0[i2]));
        }
    }
}
