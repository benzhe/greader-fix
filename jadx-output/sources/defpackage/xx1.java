package defpackage;

import android.database.sqlite.SQLiteDatabase;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class xx1 {
    public final vx1 a;
    public final zv2 b;

    public xx1(vx1 vx1Var, zv2 zv2Var) {
        this.a = vx1Var;
        this.b = zv2Var;
    }

    public final void a(jo2<SQLiteDatabase, Void> jo2Var) {
        zv2 zv2Var = this.b;
        final vx1 vx1Var = this.a;
        vx1Var.getClass();
        aw2 aw2VarY = zv2Var.y(new Callable(vx1Var) { // from class: wx1
            public final vx1 e;

            {
                this.e = vx1Var;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.e.getWritableDatabase();
            }
        });
        zx1 zx1Var = new zx1(jo2Var);
        aw2VarY.i(new sv2(aw2VarY, zx1Var), this.b);
    }
}
