package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSContent;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.tk5;
import java.io.IOException;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes.dex */
public final class yj5 implements co5 {
    public static final co5 a = new yj5();

    public static final class a implements yn5<tk5.b> {
        public static final a a = new a();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.b bVar = (tk5.b) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("key", bVar.a());
            zn5Var2.g("value", bVar.b());
        }
    }

    public static final class b implements yn5<tk5> {
        public static final b a = new b();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5 tk5Var = (tk5) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("sdkVersion", tk5Var.g());
            zn5Var2.g("gmpAppId", tk5Var.c());
            zn5Var2.d("platform", tk5Var.f());
            zn5Var2.g("installationUuid", tk5Var.d());
            zn5Var2.g("buildVersion", tk5Var.a());
            zn5Var2.g("displayVersion", tk5Var.b());
            zn5Var2.g("session", tk5Var.h());
            zn5Var2.g("ndkPayload", tk5Var.e());
        }
    }

    public static final class c implements yn5<tk5.c> {
        public static final c a = new c();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.c cVar = (tk5.c) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("files", cVar.a());
            zn5Var2.g("orgId", cVar.b());
        }
    }

    public static final class d implements yn5<tk5.c.a> {
        public static final d a = new d();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.c.a aVar = (tk5.c.a) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("filename", aVar.b());
            zn5Var2.g("contents", aVar.a());
        }
    }

    public static final class e implements yn5<tk5.d.a> {
        public static final e a = new e();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.a aVar = (tk5.d.a) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("identifier", aVar.d());
            zn5Var2.g("version", aVar.g());
            zn5Var2.g("displayVersion", aVar.c());
            zn5Var2.g("organization", aVar.f());
            zn5Var2.g("installationUuid", aVar.e());
            zn5Var2.g("developmentPlatform", aVar.a());
            zn5Var2.g("developmentPlatformVersion", aVar.b());
        }
    }

    public static final class f implements yn5<tk5.d.a.AbstractC0041a> {
        public static final f a = new f();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            zn5Var.g("clsId", ((tk5.d.a.AbstractC0041a) obj).a());
        }
    }

    public static final class g implements yn5<tk5.d.c> {
        public static final g a = new g();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.c cVar = (tk5.d.c) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.d("arch", cVar.a());
            zn5Var2.g("model", cVar.e());
            zn5Var2.d("cores", cVar.b());
            zn5Var2.c("ram", cVar.g());
            zn5Var2.c("diskSpace", cVar.c());
            zn5Var2.b("simulator", cVar.i());
            zn5Var2.d("state", cVar.h());
            zn5Var2.g("manufacturer", cVar.d());
            zn5Var2.g("modelClass", cVar.f());
        }
    }

    public static final class h implements yn5<tk5.d> {
        public static final h a = new h();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d dVar = (tk5.d) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("generator", dVar.e());
            zn5Var2.g("identifier", dVar.g().getBytes(tk5.a));
            zn5Var2.c("startedAt", dVar.i());
            zn5Var2.g("endedAt", dVar.c());
            zn5Var2.b("crashed", dVar.k());
            zn5Var2.g("app", dVar.a());
            zn5Var2.g("user", dVar.j());
            zn5Var2.g("os", dVar.h());
            zn5Var2.g("device", dVar.b());
            zn5Var2.g("events", dVar.d());
            zn5Var2.d("generatorType", dVar.f());
        }
    }

    public static final class i implements yn5<tk5.d.AbstractC0042d.a> {
        public static final i a = new i();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a aVar = (tk5.d.AbstractC0042d.a) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("execution", aVar.c());
            zn5Var2.g("customAttributes", aVar.b());
            zn5Var2.g("background", aVar.a());
            zn5Var2.d("uiOrientation", aVar.d());
        }
    }

    public static final class j implements yn5<tk5.d.AbstractC0042d.a.b.AbstractC0044a> {
        public static final j a = new j();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b.AbstractC0044a abstractC0044a = (tk5.d.AbstractC0042d.a.b.AbstractC0044a) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.c("baseAddress", abstractC0044a.a());
            zn5Var2.c("size", abstractC0044a.c());
            zn5Var2.g(InetAddressKeys.KEY_NAME, abstractC0044a.b());
            String strD = abstractC0044a.d();
            zn5Var2.g("uuid", strD != null ? strD.getBytes(tk5.a) : null);
        }
    }

    public static final class k implements yn5<tk5.d.AbstractC0042d.a.b> {
        public static final k a = new k();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b bVar = (tk5.d.AbstractC0042d.a.b) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("threads", bVar.d());
            zn5Var2.g("exception", bVar.b());
            zn5Var2.g("signal", bVar.c());
            zn5Var2.g("binaries", bVar.a());
        }
    }

    public static final class l implements yn5<tk5.d.AbstractC0042d.a.b.AbstractC0045b> {
        public static final l a = new l();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b.AbstractC0045b abstractC0045b = (tk5.d.AbstractC0042d.a.b.AbstractC0045b) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g(NSRSS20.ENC_TYPE, abstractC0045b.e());
            zn5Var2.g("reason", abstractC0045b.d());
            zn5Var2.g("frames", abstractC0045b.b());
            zn5Var2.g("causedBy", abstractC0045b.a());
            zn5Var2.d("overflowCount", abstractC0045b.c());
        }
    }

    public static final class m implements yn5<tk5.d.AbstractC0042d.a.b.c> {
        public static final m a = new m();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b.c cVar = (tk5.d.AbstractC0042d.a.b.c) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g(InetAddressKeys.KEY_NAME, cVar.c());
            zn5Var2.g("code", cVar.b());
            zn5Var2.c(InetAddressKeys.KEY_ADDRESS, cVar.a());
        }
    }

    public static final class n implements yn5<tk5.d.AbstractC0042d.a.b.AbstractC0046d> {
        public static final n a = new n();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b.AbstractC0046d abstractC0046d = (tk5.d.AbstractC0042d.a.b.AbstractC0046d) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g(InetAddressKeys.KEY_NAME, abstractC0046d.c());
            zn5Var2.d("importance", abstractC0046d.b());
            zn5Var2.g("frames", abstractC0046d.a());
        }
    }

    public static final class o implements yn5<tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a> {
        public static final o a = new o();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a abstractC0047a = (tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.c("pc", abstractC0047a.d());
            zn5Var2.g("symbol", abstractC0047a.e());
            zn5Var2.g(StringLookupFactory.KEY_FILE, abstractC0047a.a());
            zn5Var2.c("offset", abstractC0047a.c());
            zn5Var2.d("importance", abstractC0047a.b());
        }
    }

    public static final class p implements yn5<tk5.d.AbstractC0042d.b> {
        public static final p a = new p();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d.b bVar = (tk5.d.AbstractC0042d.b) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.g("batteryLevel", bVar.a());
            zn5Var2.d("batteryVelocity", bVar.b());
            zn5Var2.b("proximityOn", bVar.f());
            zn5Var2.d("orientation", bVar.d());
            zn5Var2.c("ramUsed", bVar.e());
            zn5Var2.c("diskUsed", bVar.c());
        }
    }

    public static final class q implements yn5<tk5.d.AbstractC0042d> {
        public static final q a = new q();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.AbstractC0042d abstractC0042d = (tk5.d.AbstractC0042d) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.c("timestamp", abstractC0042d.d());
            zn5Var2.g(NSRSS20.ENC_TYPE, abstractC0042d.e());
            zn5Var2.g("app", abstractC0042d.a());
            zn5Var2.g("device", abstractC0042d.b());
            zn5Var2.g("log", abstractC0042d.c());
        }
    }

    public static final class r implements yn5<tk5.d.AbstractC0042d.c> {
        public static final r a = new r();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            zn5Var.g(NSContent.NSTAG, ((tk5.d.AbstractC0042d.c) obj).a());
        }
    }

    public static final class s implements yn5<tk5.d.e> {
        public static final s a = new s();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            tk5.d.e eVar = (tk5.d.e) obj;
            zn5 zn5Var2 = zn5Var;
            zn5Var2.d("platform", eVar.b());
            zn5Var2.g("version", eVar.c());
            zn5Var2.g("buildVersion", eVar.a());
            zn5Var2.b("jailbroken", eVar.d());
        }
    }

    public static final class t implements yn5<tk5.d.f> {
        public static final t a = new t();

        @Override // defpackage.vn5
        public void a(Object obj, zn5 zn5Var) throws IOException {
            zn5Var.g("identifier", ((tk5.d.f) obj).a());
        }
    }

    public void a(do5<?> do5Var) {
        b bVar = b.a;
        io5 io5Var = (io5) do5Var;
        io5Var.a.put(tk5.class, bVar);
        io5Var.b.remove(tk5.class);
        io5Var.a.put(zj5.class, bVar);
        io5Var.b.remove(zj5.class);
        h hVar = h.a;
        io5Var.a.put(tk5.d.class, hVar);
        io5Var.b.remove(tk5.d.class);
        io5Var.a.put(dk5.class, hVar);
        io5Var.b.remove(dk5.class);
        e eVar = e.a;
        io5Var.a.put(tk5.d.a.class, eVar);
        io5Var.b.remove(tk5.d.a.class);
        io5Var.a.put(ek5.class, eVar);
        io5Var.b.remove(ek5.class);
        f fVar = f.a;
        io5Var.a.put(tk5.d.a.AbstractC0041a.class, fVar);
        io5Var.b.remove(tk5.d.a.AbstractC0041a.class);
        io5Var.a.put(fk5.class, fVar);
        io5Var.b.remove(fk5.class);
        t tVar = t.a;
        io5Var.a.put(tk5.d.f.class, tVar);
        io5Var.b.remove(tk5.d.f.class);
        io5Var.a.put(sk5.class, tVar);
        io5Var.b.remove(sk5.class);
        s sVar = s.a;
        io5Var.a.put(tk5.d.e.class, sVar);
        io5Var.b.remove(tk5.d.e.class);
        io5Var.a.put(rk5.class, sVar);
        io5Var.b.remove(rk5.class);
        g gVar = g.a;
        io5Var.a.put(tk5.d.c.class, gVar);
        io5Var.b.remove(tk5.d.c.class);
        io5Var.a.put(gk5.class, gVar);
        io5Var.b.remove(gk5.class);
        q qVar = q.a;
        io5Var.a.put(tk5.d.AbstractC0042d.class, qVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.class);
        io5Var.a.put(hk5.class, qVar);
        io5Var.b.remove(hk5.class);
        i iVar = i.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.class, iVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.class);
        io5Var.a.put(ik5.class, iVar);
        io5Var.b.remove(ik5.class);
        k kVar = k.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.class, kVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.class);
        io5Var.a.put(jk5.class, kVar);
        io5Var.b.remove(jk5.class);
        n nVar = n.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.AbstractC0046d.class, nVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.AbstractC0046d.class);
        io5Var.a.put(nk5.class, nVar);
        io5Var.b.remove(nk5.class);
        o oVar = o.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a.class, oVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.AbstractC0046d.AbstractC0047a.class);
        io5Var.a.put(ok5.class, oVar);
        io5Var.b.remove(ok5.class);
        l lVar = l.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.AbstractC0045b.class, lVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.AbstractC0045b.class);
        io5Var.a.put(lk5.class, lVar);
        io5Var.b.remove(lk5.class);
        m mVar = m.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.c.class, mVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.c.class);
        io5Var.a.put(mk5.class, mVar);
        io5Var.b.remove(mk5.class);
        j jVar = j.a;
        io5Var.a.put(tk5.d.AbstractC0042d.a.b.AbstractC0044a.class, jVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.a.b.AbstractC0044a.class);
        io5Var.a.put(kk5.class, jVar);
        io5Var.b.remove(kk5.class);
        a aVar = a.a;
        io5Var.a.put(tk5.b.class, aVar);
        io5Var.b.remove(tk5.b.class);
        io5Var.a.put(ak5.class, aVar);
        io5Var.b.remove(ak5.class);
        p pVar = p.a;
        io5Var.a.put(tk5.d.AbstractC0042d.b.class, pVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.b.class);
        io5Var.a.put(pk5.class, pVar);
        io5Var.b.remove(pk5.class);
        r rVar = r.a;
        io5Var.a.put(tk5.d.AbstractC0042d.c.class, rVar);
        io5Var.b.remove(tk5.d.AbstractC0042d.c.class);
        io5Var.a.put(qk5.class, rVar);
        io5Var.b.remove(qk5.class);
        c cVar = c.a;
        io5Var.a.put(tk5.c.class, cVar);
        io5Var.b.remove(tk5.c.class);
        io5Var.a.put(bk5.class, cVar);
        io5Var.b.remove(bk5.class);
        d dVar = d.a;
        io5Var.a.put(tk5.c.a.class, dVar);
        io5Var.b.remove(tk5.c.a.class);
        io5Var.a.put(ck5.class, dVar);
        io5Var.b.remove(ck5.class);
    }
}
