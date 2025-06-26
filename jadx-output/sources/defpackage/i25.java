package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class i25 {
    public h54 a;
    public List<Long> b;
    public List<z44> c;
    public long d;
    public final /* synthetic */ j25 e;

    public /* synthetic */ i25(j25 j25Var) {
        this.e = j25Var;
    }

    public final boolean a(long j, z44 z44Var) {
        if (this.c == null) {
            this.c = new ArrayList();
        }
        if (this.b == null) {
            this.b = new ArrayList();
        }
        if (this.c.size() > 0 && ((this.c.get(0).x() / 1000) / 60) / 60 != ((z44Var.x() / 1000) / 60) / 60) {
            return false;
        }
        long jE = this.d + z44Var.e();
        cs4 cs4Var = this.e.j.g;
        if (jE >= Math.max(0, ew4.i.a(null).intValue())) {
            return false;
        }
        this.d = jE;
        this.c.add(z44Var);
        this.b.add(Long.valueOf(j));
        int size = this.c.size();
        cs4 cs4Var2 = this.e.j.g;
        return size < Math.max(1, ew4.j.a(null).intValue());
    }
}
