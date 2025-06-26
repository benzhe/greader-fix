package defpackage;

import android.content.Context;
import defpackage.gl1;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class fz2 extends lu2 {
    public fz2(Context context, String str, boolean z, int i) {
        super(context, str, z, i);
    }

    public static fz2 k(String str, Context context, boolean z, int i) {
        synchronized (lu2.class) {
            if (!lu2.H) {
                lu2.I = System.currentTimeMillis() / 1000;
                is2.x = lu2.h(context, z);
                lu2.H = true;
            }
        }
        synchronized (lu2.class) {
            if (lu2.C == null && lu2.j(i)) {
                Boolean bool = Boolean.TRUE;
                Objects.requireNonNull(str, "Null clientVersion");
                Boolean boolValueOf = Boolean.valueOf(z);
                String strConcat = boolValueOf == null ? String.valueOf("").concat(" shouldGetAdvertisingId") : "";
                if (bool == null) {
                    strConcat = String.valueOf(strConcat).concat(" isGooglePlayServicesAvailable");
                }
                if (!strConcat.isEmpty()) {
                    throw new IllegalStateException(strConcat.length() != 0 ? "Missing required properties:".concat(strConcat) : new String("Missing required properties:"));
                }
                uq2 uq2Var = new uq2(str, boolValueOf.booleanValue(), true, null);
                pq2 pq2VarA = pq2.a(context, Executors.newFixedThreadPool(1));
                lu2.E = pq2VarA;
                lu2.C = rn2.a(context, pq2VarA, uq2Var, Executors.newCachedThreadPool());
                ExecutorService executorServiceNewFixedThreadPool = Executors.newFixedThreadPool(1);
                lu2.D = executorServiceNewFixedThreadPool;
                executorServiceNewFixedThreadPool.execute(new mt2());
            }
        }
        return new fz2(context, str, z, i);
    }

    @Override // defpackage.lu2
    public final List<Callable<Void>> e(xb3 xb3Var, Context context, gl1.b bVar, fh1 fh1Var) {
        if (xb3Var.b == null || !this.y) {
            return super.e(xb3Var, context, bVar, null);
        }
        int iH = xb3Var.h();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.e(xb3Var, context, bVar, null));
        arrayList.add(new qc3(xb3Var, "+TO/Mpw5B9Ysegk2ohW075Jqflr1OZ9qfpBhm7dfWn/YVCIrMVqb+Yemq/MJcA7W", "NFKeWWLJ9pOo7U7UIrMCAjT+FIdaFD6BH0lqisOKm88=", bVar, iH));
        return arrayList;
    }
}
