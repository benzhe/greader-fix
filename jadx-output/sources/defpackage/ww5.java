package defpackage;

import defpackage.bq5;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public final class ww5 {
    public int a = 0;
    public final Map<bu5, bq5.a> b = new HashMap();
    public boolean c = true;
    public qi6 d = qi6.f;
    public boolean e = false;

    public boolean a() {
        return this.a != 0;
    }

    public vw5 b() {
        ln5<bu5> ln5Var = bu5.f;
        ln5<bu5> ln5VarD = ln5Var;
        ln5<bu5> ln5VarD2 = ln5VarD;
        ln5<bu5> ln5VarD3 = ln5VarD2;
        for (Map.Entry<bu5, bq5.a> entry : this.b.entrySet()) {
            bu5 key = entry.getKey();
            bq5.a value = entry.getValue();
            int iOrdinal = value.ordinal();
            if (iOrdinal == 0) {
                ln5VarD3 = ln5VarD3.d(key);
            } else if (iOrdinal == 1) {
                ln5VarD = ln5VarD.d(key);
            } else {
                if (iOrdinal != 2) {
                    bx5.a("Encountered invalid change type: %s", value);
                    throw null;
                }
                ln5VarD2 = ln5VarD2.d(key);
            }
        }
        return new vw5(this.d, this.e, ln5VarD, ln5VarD2, ln5VarD3);
    }

    public void c(qi6 qi6Var) {
        if (qi6Var.isEmpty()) {
            return;
        }
        this.c = true;
        this.d = qi6Var;
    }
}
