package defpackage;

import android.content.Context;
import defpackage.js5;
import defpackage.zp5;
import java.util.Objects;
import js5.d;

/* loaded from: classes.dex */
public class br5 extends uq5 {
    @Override // defpackage.uq5
    public rr5 a(zp5.a aVar) {
        js5 js5Var = ((gt5) this.a).g.d;
        ex5 ex5Var = aVar.b;
        fs5 fs5Var = this.b;
        Objects.requireNonNull(js5Var);
        return js5Var.new d(ex5Var, fs5Var);
    }

    @Override // defpackage.uq5
    public ts5 b(zp5.a aVar) {
        ur5 ur5Var = new ur5(new ow5(aVar.c.a));
        js5.a aVar2 = new js5.a(aVar.f.d, 10, 1000);
        Context context = aVar.a;
        aq5 aq5Var = aVar.c;
        return new gt5(context, aq5Var.b, aq5Var.a, ur5Var, aVar2);
    }
}
