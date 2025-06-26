package defpackage;

import defpackage.cv;
import java.util.concurrent.Executor;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class dt implements ft {
    public static final Logger f = Logger.getLogger(is.class.getName());
    public final zt a;
    public final Executor b;
    public final ps c;
    public final cu d;
    public final cv e;

    public dt(Executor executor, ps psVar, zt ztVar, cu cuVar, cv cvVar) {
        this.b = executor;
        this.c = psVar;
        this.a = ztVar;
        this.d = cuVar;
        this.e = cvVar;
    }

    @Override // defpackage.ft
    public void a(final ds dsVar, final as asVar, final ar arVar) {
        this.b.execute(new Runnable(this, dsVar, arVar, asVar) { // from class: bt
            public final dt e;
            public final ds f;
            public final ar g;
            public final as h;

            {
                this.e = this;
                this.f = dsVar;
                this.g = arVar;
                this.h = asVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                final dt dtVar = this.e;
                final ds dsVar2 = this.f;
                ar arVar2 = this.g;
                as asVar2 = this.h;
                Logger logger = dt.f;
                try {
                    xs xsVarA = dtVar.c.a(dsVar2.b());
                    if (xsVarA == null) {
                        String str = String.format("Transport backend '%s' is not registered", dsVar2.b());
                        dt.f.warning(str);
                        arVar2.a(new IllegalArgumentException(str));
                    } else {
                        final as asVarB = xsVarA.b(asVar2);
                        dtVar.e.a(new cv.a(dtVar, dsVar2, asVarB) { // from class: ct
                            public final dt a;
                            public final ds b;
                            public final as c;

                            {
                                this.a = dtVar;
                                this.b = dsVar2;
                                this.c = asVarB;
                            }

                            @Override // cv.a
                            public Object execute() {
                                dt dtVar2 = this.a;
                                ds dsVar3 = this.b;
                                dtVar2.d.n0(dsVar3, this.c);
                                dtVar2.a.a(dsVar3, 1);
                                return null;
                            }
                        });
                        arVar2.a(null);
                    }
                } catch (Exception e) {
                    Logger logger2 = dt.f;
                    StringBuilder sbZ = jo.z("Error scheduling event ");
                    sbZ.append(e.getMessage());
                    logger2.warning(sbZ.toString());
                    arVar2.a(e);
                }
            }
        });
    }
}
