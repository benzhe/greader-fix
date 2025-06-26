package defpackage;

import android.content.Context;
import defpackage.cv;
import defpackage.rs;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class tt {
    public final Context a;
    public final ps b;
    public final cu c;
    public final zt d;
    public final Executor e;
    public final cv f;
    public final dv g;

    public tt(Context context, ps psVar, cu cuVar, zt ztVar, Executor executor, cv cvVar, dv dvVar) {
        this.a = context;
        this.b = psVar;
        this.c = cuVar;
        this.d = ztVar;
        this.e = executor;
        this.f = cvVar;
        this.g = dvVar;
    }

    public void a(final ds dsVar, final int i) {
        rs rsVarA;
        xs xsVarA = this.b.a(dsVar.b());
        final Iterable iterable = (Iterable) this.f.a(new cv.a(this, dsVar) { // from class: pt
            public final tt a;
            public final ds b;

            {
                this.a = this;
                this.b = dsVar;
            }

            @Override // cv.a
            public Object execute() {
                tt ttVar = this.a;
                return ttVar.c.B(this.b);
            }
        });
        if (iterable.iterator().hasNext()) {
            if (xsVarA == null) {
                bi.x("Uploader", "Unknown backend for %s, deleting event batch for it...", dsVar);
                rsVarA = rs.a();
            } else {
                ArrayList arrayList = new ArrayList();
                Iterator it = iterable.iterator();
                while (it.hasNext()) {
                    arrayList.add(((hu) it.next()).a());
                }
                byte[] bArrC = dsVar.c();
                if (1 == 0) {
                    throw new IllegalStateException(jo.n("Missing required properties:", ""));
                }
                rsVarA = xsVarA.a(new ls(arrayList, bArrC, null));
            }
            final rs rsVar = rsVarA;
            this.f.a(new cv.a(this, rsVar, iterable, dsVar, i) { // from class: qt
                public final tt a;
                public final rs b;
                public final Iterable c;
                public final ds d;
                public final int e;

                {
                    this.a = this;
                    this.b = rsVar;
                    this.c = iterable;
                    this.d = dsVar;
                    this.e = i;
                }

                @Override // cv.a
                public Object execute() {
                    tt ttVar = this.a;
                    rs rsVar2 = this.b;
                    Iterable<hu> iterable2 = this.c;
                    ds dsVar2 = this.d;
                    int i2 = this.e;
                    if (rsVar2.c() == rs.a.TRANSIENT_ERROR) {
                        ttVar.c.A0(iterable2);
                        ttVar.d.a(dsVar2, i2 + 1);
                        return null;
                    }
                    ttVar.c.p(iterable2);
                    if (rsVar2.c() == rs.a.OK) {
                        ttVar.c.H(dsVar2, rsVar2.b() + ttVar.g.a());
                    }
                    if (!ttVar.c.y0(dsVar2)) {
                        return null;
                    }
                    ttVar.d.a(dsVar2, 1);
                    return null;
                }
            });
        }
    }
}
