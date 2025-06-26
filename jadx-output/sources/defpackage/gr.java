package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class gr implements co5 {
    public static final co5 a = new gr();

    public static final class a implements yn5<fr> {
        public static final a a = new a();
        public static final xn5 b = xn5.a("sdkVersion");
        public static final xn5 c = xn5.a("model");
        public static final xn5 d = xn5.a("hardware");
        public static final xn5 e = xn5.a("device");
        public static final xn5 f = xn5.a("product");
        public static final xn5 g = xn5.a("osBuild");
        public static final xn5 h = xn5.a("manufacturer");
        public static final xn5 i = xn5.a("fingerprint");
        public static final xn5 j = xn5.a("locale");
        public static final xn5 k = xn5.a("country");
        public static final xn5 l = xn5.a("mccMnc");
        public static final xn5 m = xn5.a("applicationBuild");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            fr frVar = (fr) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.h(b, frVar.l());
            zn5Var2.h(c, frVar.i());
            zn5Var2.h(d, frVar.e());
            zn5Var2.h(e, frVar.c());
            zn5Var2.h(f, frVar.k());
            zn5Var2.h(g, frVar.j());
            zn5Var2.h(h, frVar.g());
            zn5Var2.h(i, frVar.d());
            zn5Var2.h(j, frVar.f());
            zn5Var2.h(k, frVar.b());
            zn5Var2.h(l, frVar.h());
            zn5Var2.h(m, frVar.a());
        }
    }

    public static final class b implements yn5<or> {
        public static final b a = new b();
        public static final xn5 b = xn5.a("logRequest");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            zn5Var.h(b, ((or) obj).a());
        }
    }

    public static final class c implements yn5<pr> {
        public static final c a = new c();
        public static final xn5 b = xn5.a("clientType");
        public static final xn5 c = xn5.a("androidClientInfo");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            pr prVar = (pr) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.h(b, prVar.b());
            zn5Var2.h(c, prVar.a());
        }
    }

    public static final class d implements yn5<qr> {
        public static final d a = new d();
        public static final xn5 b = xn5.a("eventTimeMs");
        public static final xn5 c = xn5.a("eventCode");
        public static final xn5 d = xn5.a("eventUptimeMs");
        public static final xn5 e = xn5.a("sourceExtension");
        public static final xn5 f = xn5.a("sourceExtensionJsonProto3");
        public static final xn5 g = xn5.a("timezoneOffsetSeconds");
        public static final xn5 h = xn5.a("networkConnectionInfo");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            qr qrVar = (qr) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.a(b, qrVar.b());
            zn5Var2.h(c, qrVar.a());
            zn5Var2.a(d, qrVar.c());
            zn5Var2.h(e, qrVar.e());
            zn5Var2.h(f, qrVar.f());
            zn5Var2.a(g, qrVar.g());
            zn5Var2.h(h, qrVar.d());
        }
    }

    public static final class e implements yn5<rr> {
        public static final e a = new e();
        public static final xn5 b = xn5.a("requestTimeMs");
        public static final xn5 c = xn5.a("requestUptimeMs");
        public static final xn5 d = xn5.a("clientInfo");
        public static final xn5 e = xn5.a("logSource");
        public static final xn5 f = xn5.a("logSourceName");
        public static final xn5 g = xn5.a("logEvent");
        public static final xn5 h = xn5.a("qosTier");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            rr rrVar = (rr) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.a(b, rrVar.f());
            zn5Var2.a(c, rrVar.g());
            zn5Var2.h(d, rrVar.a());
            zn5Var2.h(e, rrVar.c());
            zn5Var2.h(f, rrVar.d());
            zn5Var2.h(g, rrVar.b());
            zn5Var2.h(h, rrVar.e());
        }
    }

    public static final class f implements yn5<tr> {
        public static final f a = new f();
        public static final xn5 b = xn5.a("networkType");
        public static final xn5 c = xn5.a("mobileSubtype");

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tr trVar = (tr) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.h(b, trVar.b());
            zn5Var2.h(c, trVar.a());
        }
    }

    public void a(do5<?> do5Var) {
        b bVar = b.a;
        io5 io5Var = (io5) do5Var;
        io5Var.a.put(or.class, bVar);
        io5Var.b.remove(or.class);
        io5Var.a.put(ir.class, bVar);
        io5Var.b.remove(ir.class);
        e eVar = e.a;
        io5Var.a.put(rr.class, eVar);
        io5Var.b.remove(rr.class);
        io5Var.a.put(lr.class, eVar);
        io5Var.b.remove(lr.class);
        c cVar = c.a;
        io5Var.a.put(pr.class, cVar);
        io5Var.b.remove(pr.class);
        io5Var.a.put(jr.class, cVar);
        io5Var.b.remove(jr.class);
        a aVar = a.a;
        io5Var.a.put(fr.class, aVar);
        io5Var.b.remove(fr.class);
        io5Var.a.put(hr.class, aVar);
        io5Var.b.remove(hr.class);
        d dVar = d.a;
        io5Var.a.put(qr.class, dVar);
        io5Var.b.remove(qr.class);
        io5Var.a.put(kr.class, dVar);
        io5Var.b.remove(kr.class);
        f fVar = f.a;
        io5Var.a.put(tr.class, fVar);
        io5Var.b.remove(tr.class);
        io5Var.a.put(nr.class, fVar);
        io5Var.b.remove(nr.class);
    }
}
