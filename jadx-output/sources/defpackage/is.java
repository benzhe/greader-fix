package defpackage;

import android.content.Context;
import defpackage.cv;
import defpackage.ds;
import defpackage.wr;
import java.util.Collections;
import java.util.Iterator;
import java.util.Objects;
import java.util.Set;

/* loaded from: classes.dex */
public class is implements hs {
    public static volatile js e;
    public final dv a;
    public final dv b;
    public final ft c;
    public final tt d;

    public is(dv dvVar, dv dvVar2, ft ftVar, tt ttVar, final xt xtVar) {
        this.a = dvVar;
        this.b = dvVar2;
        this.c = ftVar;
        this.d = ttVar;
        xtVar.a.execute(new Runnable(xtVar) { // from class: vt
            public final xt e;

            {
                this.e = xtVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                final xt xtVar2 = this.e;
                xtVar2.d.a(new cv.a(xtVar2) { // from class: wt
                    public final xt a;

                    {
                        this.a = xtVar2;
                    }

                    @Override // cv.a
                    public Object execute() {
                        xt xtVar3 = this.a;
                        Iterator<ds> it = xtVar3.b.M().iterator();
                        while (it.hasNext()) {
                            xtVar3.c.a(it.next(), 1);
                        }
                        return null;
                    }
                });
            }
        });
    }

    public static is a() {
        js jsVar = e;
        if (jsVar != null) {
            return ((xr) jsVar).p.get();
        }
        throw new IllegalStateException("Not initialized!");
    }

    public static void b(Context context) {
        if (e == null) {
            synchronized (is.class) {
                if (e == null) {
                    Objects.requireNonNull(context);
                    e = new xr(context, null);
                }
            }
        }
    }

    public zq c(yr yrVar) {
        Set setSingleton;
        if (yrVar instanceof yr) {
            Objects.requireNonNull((br) yrVar);
            setSingleton = Collections.unmodifiableSet(br.f);
        } else {
            setSingleton = Collections.singleton(new uq("proto"));
        }
        ds.a aVarA = ds.a();
        Objects.requireNonNull(yrVar);
        aVarA.b("cct");
        wr.b bVar = (wr.b) aVarA;
        bVar.b = ((br) yrVar).b();
        return new es(setSingleton, bVar.a(), this);
    }
}
