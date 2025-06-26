package defpackage;

import java.io.IOException;
import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zo0 {
    public long a;
    public final String b;
    public final String c;
    public final long d;
    public final long e;
    public final long f;
    public final long g;
    public final List<br3> h;

    public zo0(String str, String str2, long j, long j2, long j3, long j4, List<br3> list) {
        this.b = str;
        this.c = "".equals(str2) ? null : str2;
        this.d = j;
        this.e = j2;
        this.f = j3;
        this.g = j4;
        this.h = list;
    }

    public static zo0 b(ur0 ur0Var) throws IOException {
        if (dn0.k(ur0Var) != 538247942) {
            throw new IOException();
        }
        String strD = dn0.d(ur0Var);
        String strD2 = dn0.d(ur0Var);
        long jM = dn0.m(ur0Var);
        long jM2 = dn0.m(ur0Var);
        long jM3 = dn0.m(ur0Var);
        long jM4 = dn0.m(ur0Var);
        int iK = dn0.k(ur0Var);
        if (iK < 0) {
            throw new IOException(jo.M(31, "readHeaderList size=", iK));
        }
        List listEmptyList = iK == 0 ? Collections.emptyList() : new ArrayList();
        for (int i = 0; i < iK; i++) {
            listEmptyList.add(new br3(dn0.d(ur0Var).intern(), dn0.d(ur0Var).intern()));
        }
        return new zo0(strD, strD2, jM, jM2, jM3, jM4, listEmptyList);
    }

    public final boolean a(OutputStream outputStream) throws IOException {
        try {
            dn0.e(outputStream, 538247942);
            dn0.g(outputStream, this.b);
            String str = this.c;
            if (str == null) {
                str = "";
            }
            dn0.g(outputStream, str);
            dn0.f(outputStream, this.d);
            dn0.f(outputStream, this.e);
            dn0.f(outputStream, this.f);
            dn0.f(outputStream, this.g);
            List<br3> list = this.h;
            if (list != null) {
                dn0.e(outputStream, list.size());
                for (br3 br3Var : list) {
                    dn0.g(outputStream, br3Var.a);
                    dn0.g(outputStream, br3Var.b);
                }
            } else {
                dn0.e(outputStream, 0);
            }
            outputStream.flush();
            return true;
        } catch (IOException e) {
            tg0.a("%s", e.toString());
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.List<br3>] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.ArrayList] */
    /* JADX WARN: Type inference failed for: r0v2 */
    public zo0(String str, ui3 ui3Var) {
        String str2 = ui3Var.b;
        long j = ui3Var.c;
        long j2 = ui3Var.d;
        long j3 = ui3Var.e;
        long j4 = ui3Var.f;
        List arrayList = ui3Var.h;
        if (arrayList == 0) {
            Map<String, String> map = ui3Var.g;
            arrayList = new ArrayList(map.size());
            for (Map.Entry<String, String> entry : map.entrySet()) {
                arrayList.add(new br3(entry.getKey(), entry.getValue()));
            }
        }
        this(str, str2, j, j2, j3, j4, arrayList);
    }
}
