package defpackage;

import defpackage.yj;

/* loaded from: classes.dex */
public class gk implements yj {
    public final id<yj.b> c = new id<>();
    public final wm<yj.b.c> d = new wm<>();

    public gk() {
        a(yj.b);
    }

    public void a(yj.b bVar) {
        this.c.i(bVar);
        if (bVar instanceof yj.b.c) {
            this.d.j((yj.b.c) bVar);
        } else if (bVar instanceof yj.b.a) {
            this.d.k(((yj.b.a) bVar).a);
        }
    }
}
