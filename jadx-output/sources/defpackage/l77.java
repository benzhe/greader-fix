package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class l77 {
    public static final Logger a = Logger.getLogger(l77.class.getName());

    public static Object a(eg6 eg6Var) throws IOException {
        boolean z;
        c50.G(eg6Var.m(), "unexpected end of JSON");
        int iOrdinal = eg6Var.Q().ordinal();
        if (iOrdinal == 0) {
            eg6Var.a();
            ArrayList arrayList = new ArrayList();
            while (eg6Var.m()) {
                arrayList.add(a(eg6Var));
            }
            z = eg6Var.Q() == fg6.END_ARRAY;
            StringBuilder sbZ = jo.z("Bad token: ");
            sbZ.append(eg6Var.k());
            c50.G(z, sbZ.toString());
            eg6Var.f();
            return Collections.unmodifiableList(arrayList);
        }
        if (iOrdinal == 2) {
            eg6Var.b();
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            while (eg6Var.m()) {
                linkedHashMap.put(eg6Var.C(), a(eg6Var));
            }
            z = eg6Var.Q() == fg6.END_OBJECT;
            StringBuilder sbZ2 = jo.z("Bad token: ");
            sbZ2.append(eg6Var.k());
            c50.G(z, sbZ2.toString());
            eg6Var.g();
            return Collections.unmodifiableMap(linkedHashMap);
        }
        if (iOrdinal == 5) {
            return eg6Var.I();
        }
        if (iOrdinal == 6) {
            return Double.valueOf(eg6Var.w());
        }
        if (iOrdinal == 7) {
            return Boolean.valueOf(eg6Var.t());
        }
        if (iOrdinal == 8) {
            eg6Var.E();
            return null;
        }
        StringBuilder sbZ3 = jo.z("Bad token: ");
        sbZ3.append(eg6Var.k());
        throw new IllegalStateException(sbZ3.toString());
    }
}
