package defpackage;

import android.content.pm.PackageInfo;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class je2 implements qd2<he2> {
    public final kr0 a;
    public final Executor b;
    public final String c;
    public final PackageInfo d;
    public final int e;

    public je2(kr0 kr0Var, Executor executor, String str, PackageInfo packageInfo, int i) {
        this.a = kr0Var;
        this.b = executor;
        this.c = str;
        this.d = packageInfo;
        this.e = i;
    }

    @Override // defpackage.qd2
    public final aw2<he2> a() {
        return vt2.n(vt2.l(this.a.a(this.c, this.d, this.e), ie2.a, this.b), Throwable.class, new cv2(this) { // from class: me2
            public final je2 a;

            {
                this.a = this;
            }

            @Override // defpackage.cv2
            public final aw2 a(Object obj) {
                return vt2.j(new he2(this.a.c));
            }
        }, this.b);
    }
}
