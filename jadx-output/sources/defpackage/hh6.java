package defpackage;

import android.content.Context;
import android.util.Log;
import com.google.mlkit.common.internal.MlKitComponentDiscoveryService;
import defpackage.vf5;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public class hh6 {
    public static final AtomicReference<hh6> b = new AtomicReference<>();
    public final eg5 a;

    public hh6(Context context) throws ClassNotFoundException {
        vf5.b bVar = new vf5.b(MlKitComponentDiscoveryService.class, null);
        ArrayList arrayList = new ArrayList();
        Iterator it = bVar.a(context).iterator();
        while (it.hasNext()) {
            try {
                xf5 xf5VarA = vf5.a((String) it.next());
                if (xf5VarA != null) {
                    arrayList.add(xf5VarA);
                }
            } catch (ng5 e) {
                Log.w("ComponentDiscovery", "Invalid component registrar.", e);
            }
        }
        Executor executor = g45.a;
        sf5[] sf5VarArr = {sf5.c(context, Context.class, new Class[0]), sf5.c(this, hh6.class, new Class[0])};
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = arrayList.iterator();
        while (it2.hasNext()) {
            final xf5 xf5Var = (xf5) it2.next();
            arrayList2.add(new s96(xf5Var) { // from class: zf5
                public final xf5 a;

                {
                    this.a = xf5Var;
                }

                @Override // defpackage.s96
                public Object get() {
                    xf5 xf5Var2 = this.a;
                    int i = eg5.g;
                    return xf5Var2;
                }
            });
        }
        eg5 eg5Var = new eg5(executor, arrayList2, Arrays.asList(sf5VarArr));
        this.a = eg5Var;
        eg5Var.f(true);
    }
}
