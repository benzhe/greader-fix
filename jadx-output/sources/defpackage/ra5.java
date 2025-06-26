package defpackage;

import android.graphics.Canvas;
import android.graphics.Matrix;
import defpackage.sa5;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes.dex */
public class ra5 extends sa5.f {
    public final /* synthetic */ List b;
    public final /* synthetic */ Matrix c;

    public ra5(sa5 sa5Var, List list, Matrix matrix) {
        this.b = list;
        this.c = matrix;
    }

    @Override // sa5.f
    public void a(Matrix matrix, ca5 ca5Var, int i, Canvas canvas) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            ((sa5.f) it.next()).a(this.c, ca5Var, i, canvas);
        }
    }
}
