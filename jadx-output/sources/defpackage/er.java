package defpackage;

import android.content.Context;
import android.net.ConnectivityManager;
import android.util.Log;
import defpackage.kr;
import defpackage.pr;
import defpackage.rs;
import defpackage.tr;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class er implements xs {
    public final un5 a;
    public final ConnectivityManager b;
    public final Context c;
    public final URL d;
    public final dv e;
    public final dv f;
    public final int g;

    public static final class a {
        public final URL a;
        public final or b;
        public final String c;

        public a(URL url, or orVar, String str) {
            this.a = url;
            this.b = orVar;
            this.c = str;
        }
    }

    public static final class b {
        public final int a;
        public final URL b;
        public final long c;

        public b(int i, URL url, long j) {
            this.a = i;
            this.b = url;
            this.c = j;
        }
    }

    public er(Context context, dv dvVar, dv dvVar2) {
        io5 io5Var = new io5();
        ((gr) gr.a).a(io5Var);
        io5Var.d = true;
        this.a = new ho5(io5Var);
        this.c = context;
        this.b = (ConnectivityManager) context.getSystemService("connectivity");
        this.d = c(br.c);
        this.e = dvVar2;
        this.f = dvVar;
        this.g = 40000;
    }

    public static URL c(String str) {
        try {
            return new URL(str);
        } catch (MalformedURLException e) {
            throw new IllegalArgumentException(jo.n("Invalid url: ", str), e);
        }
    }

    @Override // defpackage.xs
    public rs a(qs qsVar) {
        rs.a aVar;
        Integer numValueOf;
        String str;
        rs.a aVar2;
        kr.b bVar;
        rs.a aVar3 = rs.a.TRANSIENT_ERROR;
        HashMap map = new HashMap();
        ls lsVar = (ls) qsVar;
        for (as asVar : lsVar.a) {
            String strG = asVar.g();
            if (map.containsKey(strG)) {
                ((List) map.get(strG)).add(asVar);
            } else {
                ArrayList arrayList = new ArrayList();
                arrayList.add(asVar);
                map.put(strG, arrayList);
            }
        }
        ArrayList arrayList2 = new ArrayList();
        Iterator it = map.entrySet().iterator();
        while (true) {
            if (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                as asVar2 = (as) ((List) entry.getValue()).get(0);
                ur urVar = ur.DEFAULT;
                Long lValueOf = Long.valueOf(this.f.a());
                Long lValueOf2 = Long.valueOf(this.e.a());
                jr jrVar = new jr(pr.a.ANDROID_FIREBASE, new hr(Integer.valueOf(asVar2.f("sdk-version")), asVar2.a("model"), asVar2.a("hardware"), asVar2.a("device"), asVar2.a("product"), asVar2.a("os-uild"), asVar2.a("manufacturer"), asVar2.a("fingerprint"), asVar2.a("locale"), asVar2.a("country"), asVar2.a("mcc_mnc"), asVar2.a("application_build"), null), null);
                try {
                    str = null;
                    numValueOf = Integer.valueOf(Integer.parseInt((String) entry.getKey()));
                } catch (NumberFormatException unused) {
                    numValueOf = null;
                    str = (String) entry.getKey();
                }
                ArrayList arrayList3 = new ArrayList();
                Iterator it2 = ((List) entry.getValue()).iterator();
                while (it2.hasNext()) {
                    as asVar3 = (as) it2.next();
                    zr zrVarD = asVar3.d();
                    Iterator it3 = it;
                    uq uqVar = zrVarD.a;
                    Iterator it4 = it2;
                    if (uqVar.equals(new uq("proto"))) {
                        byte[] bArr = zrVarD.b;
                        bVar = new kr.b();
                        bVar.d = bArr;
                    } else if (uqVar.equals(new uq("json"))) {
                        String str2 = new String(zrVarD.b, Charset.forName("UTF-8"));
                        bVar = new kr.b();
                        bVar.e = str2;
                    } else {
                        aVar2 = aVar3;
                        Log.w(bi.E("CctTransportBackend"), String.format("Received event of unsupported encoding %s. Skipping...", uqVar));
                        it2 = it4;
                        it = it3;
                        aVar3 = aVar2;
                    }
                    bVar.a = Long.valueOf(asVar3.e());
                    bVar.c = Long.valueOf(asVar3.h());
                    String str3 = asVar3.b().get("tz-offset");
                    bVar.f = Long.valueOf(str3 == null ? 0L : Long.valueOf(str3).longValue());
                    aVar2 = aVar3;
                    bVar.g = new nr(tr.b.y.get(asVar3.f("net-type")), tr.a.A.get(asVar3.f("mobile-subtype")), null);
                    if (asVar3.c() != null) {
                        bVar.b = asVar3.c();
                    }
                    String strN = bVar.a == null ? " eventTimeMs" : "";
                    if (bVar.c == null) {
                        strN = jo.n(strN, " eventUptimeMs");
                    }
                    if (bVar.f == null) {
                        strN = jo.n(strN, " timezoneOffsetSeconds");
                    }
                    if (!strN.isEmpty()) {
                        throw new IllegalStateException(jo.n("Missing required properties:", strN));
                    }
                    arrayList3.add(new kr(bVar.a.longValue(), bVar.b, bVar.c.longValue(), bVar.d, bVar.e, bVar.f.longValue(), bVar.g, null));
                    it2 = it4;
                    it = it3;
                    aVar3 = aVar2;
                }
                Iterator it5 = it;
                rs.a aVar4 = aVar3;
                String strN2 = lValueOf == null ? " requestTimeMs" : "";
                if (lValueOf2 == null) {
                    strN2 = jo.n(strN2, " requestUptimeMs");
                }
                if (!strN2.isEmpty()) {
                    throw new IllegalStateException(jo.n("Missing required properties:", strN2));
                }
                arrayList2.add(new lr(lValueOf.longValue(), lValueOf2.longValue(), jrVar, numValueOf, str, arrayList3, urVar, null));
                it = it5;
                aVar3 = aVar4;
            } else {
                rs.a aVar5 = aVar3;
                ir irVar = new ir(arrayList2);
                URL urlC = this.d;
                if (lsVar.b != null) {
                    try {
                        br brVarA = br.a(((ls) qsVar).b);
                        String str4 = brVarA.b;
                        str = str4 != null ? str4 : null;
                        String str5 = brVarA.a;
                        if (str5 != null) {
                            urlC = c(str5);
                        }
                    } catch (IllegalArgumentException unused2) {
                        return rs.a();
                    }
                }
                try {
                    b bVar2 = (b) bi.X(5, new a(urlC, irVar, str), new cr(this), new at() { // from class: dr
                    });
                    int i = bVar2.a;
                    if (i == 200) {
                        return new ms(rs.a.OK, bVar2.c);
                    }
                    if (i < 500 && i != 404) {
                        return rs.a();
                    }
                    aVar = aVar5;
                    try {
                        return new ms(aVar, -1L);
                    } catch (IOException e) {
                        e = e;
                        bi.z("CctTransportBackend", "Could not make request to the backend", e);
                        return new ms(aVar, -1L);
                    }
                } catch (IOException e2) {
                    e = e2;
                    aVar = aVar5;
                }
            }
        }
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:0|2|(1:4)(1:5)|6|(1:8)(7:9|(1:11)(2:12|(0))|16|23|17|21|22)|15|16|23|17|21|22) */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0115, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0116, code lost:
    
        defpackage.bi.z("CctTransportBackend", "Unable to find version code for package", r0);
     */
    @Override // defpackage.xs
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public defpackage.as b(defpackage.as r6) {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.er.b(as):as");
    }
}
