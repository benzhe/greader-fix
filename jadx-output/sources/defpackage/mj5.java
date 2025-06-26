package defpackage;

import android.util.Log;
import defpackage.tk5;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class mj5 {
    public final yi5 a;
    public final nl5 b;
    public final fm5 c;
    public final uj5 d;
    public final oj5 e;

    public mj5(yi5 yi5Var, nl5 nl5Var, fm5 fm5Var, uj5 uj5Var, oj5 oj5Var) {
        this.a = yi5Var;
        this.b = nl5Var;
        this.c = fm5Var;
        this.d = uj5Var;
        this.e = oj5Var;
    }

    public e45<Void> a(Executor executor, cj5 cj5Var) {
        tk5.e eVar = tk5.e.NATIVE;
        if (cj5Var == cj5.NONE) {
            ah5.a.b("Send via DataTransport disabled. Removing DataTransport reports.");
            this.b.b();
            return c50.X(null);
        }
        nl5 nl5Var = this.b;
        List<File> listE = nl5Var.e();
        ArrayList arrayList = new ArrayList();
        arrayList.ensureCapacity(((ArrayList) listE).size());
        Iterator it = ((ArrayList) nl5Var.e()).iterator();
        while (it.hasNext()) {
            File file = (File) it.next();
            try {
                arrayList.add(new rh5(nl5.i.f(nl5.j(file)), file.getName()));
            } catch (IOException e) {
                ah5.a.c("Could not load report file " + file + "; deleting", e);
                file.delete();
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final zi5 zi5Var = (zi5) it2.next();
            tk5 tk5VarA = zi5Var.a();
            if ((tk5VarA.h() != null ? tk5.e.JAVA : tk5VarA.e() != null ? eVar : tk5.e.INCOMPLETE) != eVar || cj5Var == cj5.ALL) {
                fm5 fm5Var = this.c;
                Objects.requireNonNull(fm5Var);
                tk5 tk5VarA2 = zi5Var.a();
                final f45 f45Var = new f45();
                ((gs) fm5Var.a).a(new tq(null, tk5VarA2, wq.HIGHEST), new ar(f45Var, zi5Var) { // from class: dm5
                    public final f45 a;
                    public final zi5 b;

                    {
                        this.a = f45Var;
                        this.b = zi5Var;
                    }

                    @Override // defpackage.ar
                    public void a(Exception exc) {
                        f45 f45Var2 = this.a;
                        zi5 zi5Var2 = this.b;
                        cl5 cl5Var = fm5.b;
                        if (exc != null) {
                            f45Var2.a(exc);
                        } else {
                            f45Var2.a.u(zi5Var2);
                        }
                    }
                });
                arrayList2.add(f45Var.a.i(executor, new w35(this) { // from class: kj5
                    public final mj5 a;

                    {
                        this.a = this;
                    }

                    @Override // defpackage.w35
                    public Object a(e45 e45Var) {
                        boolean z;
                        mj5 mj5Var = this.a;
                        Objects.requireNonNull(mj5Var);
                        if (e45Var.o()) {
                            zi5 zi5Var2 = (zi5) e45Var.l();
                            ah5 ah5Var = ah5.a;
                            StringBuilder sbZ = jo.z("Crashlytics report successfully enqueued to DataTransport: ");
                            sbZ.append(zi5Var2.b());
                            ah5Var.b(sbZ.toString());
                            mj5Var.b.c(zi5Var2.b());
                            z = true;
                        } else {
                            ah5 ah5Var2 = ah5.a;
                            Exception excK = e45Var.k();
                            if (ah5Var2.a(3)) {
                                Log.d("FirebaseCrashlytics", "Crashlytics report could not be enqueued to DataTransport", excK);
                            }
                            z = false;
                        }
                        return Boolean.valueOf(z);
                    }
                }));
            } else {
                ah5.a.b("Send native reports via DataTransport disabled. Removing DataTransport reports.");
                this.b.c(zi5Var.b());
            }
        }
        return c50.M0(arrayList2);
    }
}
