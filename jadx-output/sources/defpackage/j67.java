package defpackage;

import defpackage.l47;
import defpackage.x87;
import java.io.IOException;
import java.io.StringReader;
import java.net.InetAddress;
import java.net.URI;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Random;
import java.util.Set;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.apache.commons.text.lookup.InetAddressKeys;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public final class j67 extends l47 {
    public static boolean A;
    public static final f B;
    public static String C;
    public static final Logger t;
    public static final Set<String> u;
    public static final String v;
    public static final String w;
    public static final String x;
    public static boolean y;
    public static boolean z;
    public final t47 a;
    public final Random b = new Random();
    public volatile a c = b.INSTANCE;
    public final AtomicReference<e> d = new AtomicReference<>();
    public final String e;
    public final String f;
    public final int g;
    public final x87.c<Executor> h;
    public final long i;
    public final b57 j;
    public final pd5 k;
    public c l;
    public boolean m;
    public Executor n;
    public final boolean o;
    public final boolean p;
    public final l47.g q;
    public boolean r;
    public l47.e s;

    public interface a {
    }

    public enum b implements a {
        INSTANCE
    }

    public static final class c {
        public final List<? extends InetAddress> a;
        public final List<String> b;
        public final List<q37> c;

        public c(List<? extends InetAddress> list, List<String> list2, List<q37> list3) {
            c50.A(list, "addresses");
            this.a = Collections.unmodifiableList(list);
            c50.A(list2, "txtRecords");
            this.b = Collections.unmodifiableList(list2);
            c50.A(list3, "balancerAddresses");
            this.c = Collections.unmodifiableList(list3);
        }

        public String toString() {
            nd5 nd5VarK0 = c50.K0(this);
            nd5VarK0.d("addresses", this.a);
            nd5VarK0.d("txtRecords", this.b);
            nd5VarK0.d("balancerAddresses", this.c);
            return nd5VarK0.toString();
        }
    }

    public final class d implements Runnable {
        public final l47.e e;

        public class a implements Runnable {
            public a() {
            }

            @Override // java.lang.Runnable
            public void run() {
                j67.this.r = false;
            }
        }

        public class b implements Runnable {
            public final /* synthetic */ c e;

            public b(c cVar) {
                this.e = cVar;
            }

            @Override // java.lang.Runnable
            public void run() {
                j67 j67Var = j67.this;
                j67Var.l = this.e;
                if (j67Var.i > 0) {
                    pd5 pd5Var = j67Var.k;
                    pd5Var.b();
                    pd5Var.c();
                }
            }
        }

        public d(l47.e eVar) {
            c50.A(eVar, "savedListener");
            this.e = eVar;
        }

        /* JADX WARN: Removed duplicated region for block: B:35:0x0094 A[Catch: Exception -> 0x01f4, TryCatch #5 {Exception -> 0x01f4, blocks: (B:11:0x0052, B:35:0x0094, B:37:0x00a0, B:39:0x00a4, B:41:0x00aa, B:43:0x00da, B:14:0x005f, B:17:0x0068, B:21:0x0074, B:23:0x007a, B:31:0x008d, B:32:0x008e, B:33:0x0091), top: B:99:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:40:0x00a9  */
        /* JADX WARN: Removed duplicated region for block: B:43:0x00da A[Catch: Exception -> 0x01f4, TRY_LEAVE, TryCatch #5 {Exception -> 0x01f4, blocks: (B:11:0x0052, B:35:0x0094, B:37:0x00a0, B:39:0x00a4, B:41:0x00aa, B:43:0x00da, B:14:0x005f, B:17:0x0068, B:21:0x0074, B:23:0x007a, B:31:0x008d, B:32:0x008e, B:33:0x0091), top: B:99:0x0052 }] */
        /* JADX WARN: Removed duplicated region for block: B:47:0x010b A[LOOP:0: B:45:0x0105->B:47:0x010b, LOOP_END] */
        /* JADX WARN: Removed duplicated region for block: B:50:0x013a  */
        /* JADX WARN: Removed duplicated region for block: B:53:0x0149  */
        /* JADX WARN: Removed duplicated region for block: B:84:0x01d4  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public void a() {
            /*
                Method dump skipped, instructions count: 564
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: j67.d.a():void");
        }

        @Override // java.lang.Runnable
        public void run() {
            Logger logger = j67.t;
            if (logger.isLoggable(Level.FINER)) {
                StringBuilder sbZ = jo.z("Attempting DNS resolution of ");
                sbZ.append(j67.this.f);
                logger.finer(sbZ.toString());
            }
            try {
                a();
            } finally {
                b57 b57Var = j67.this.j;
                a aVar = new a();
                Queue<Runnable> queue = b57Var.f;
                c50.A(aVar, "runnable is null");
                queue.add(aVar);
                b57Var.a();
            }
        }
    }

    public interface e {
        List<String> a(String str) throws Exception;

        List<q37> b(a aVar, String str) throws Exception;
    }

    public interface f {
        e a();

        Throwable b();
    }

    static {
        Logger logger = Logger.getLogger(j67.class.getName());
        t = logger;
        u = Collections.unmodifiableSet(new HashSet(Arrays.asList("clientLanguage", "percentage", "clientHostname", "serviceConfig")));
        String property = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi", "true");
        v = property;
        String property2 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_jndi_localhost", "false");
        w = property2;
        String property3 = System.getProperty("io.grpc.internal.DnsNameResolverProvider.enable_service_config", "false");
        x = property3;
        y = Boolean.parseBoolean(property);
        z = Boolean.parseBoolean(property2);
        A = Boolean.parseBoolean(property3);
        f fVar = null;
        try {
            try {
                try {
                    f fVar2 = (f) Class.forName("k77", true, j67.class.getClassLoader()).asSubclass(f.class).getConstructor(new Class[0]).newInstance(new Object[0]);
                    if (fVar2.b() != null) {
                        logger.log(Level.FINE, "JndiResourceResolverFactory not available, skipping.", fVar2.b());
                    } else {
                        fVar = fVar2;
                    }
                } catch (Exception e2) {
                    t.log(Level.FINE, "Can't construct JndiResourceResolverFactory, skipping.", (Throwable) e2);
                }
            } catch (Exception e3) {
                t.log(Level.FINE, "Can't find JndiResourceResolverFactory ctor, skipping.", (Throwable) e3);
            }
        } catch (ClassCastException e4) {
            t.log(Level.FINE, "Unable to cast JndiResourceResolverFactory, skipping.", (Throwable) e4);
        } catch (ClassNotFoundException e5) {
            t.log(Level.FINE, "Unable to find JndiResourceResolverFactory, skipping.", (Throwable) e5);
        }
        B = fVar;
    }

    public j67(String str, l47.a aVar, x87.c cVar, pd5 pd5Var, boolean z2, boolean z3) throws NumberFormatException {
        c50.A(aVar, "args");
        this.h = cVar;
        StringBuilder sb = new StringBuilder();
        sb.append("//");
        c50.A(str, InetAddressKeys.KEY_NAME);
        sb.append(str);
        URI uriCreate = URI.create(sb.toString());
        c50.o(uriCreate.getHost() != null, "Invalid DNS name: %s", str);
        String authority = uriCreate.getAuthority();
        c50.z(authority, "nameUri (%s) doesn't have an authority", uriCreate);
        this.e = authority;
        this.f = uriCreate.getHost();
        if (uriCreate.getPort() == -1) {
            this.g = aVar.a;
        } else {
            this.g = uriCreate.getPort();
        }
        t47 t47Var = aVar.b;
        c50.A(t47Var, "proxyDetector");
        this.a = t47Var;
        long nanos = 0;
        if (!z2) {
            String property = System.getProperty("networkaddress.cache.ttl");
            long j = 30;
            if (property != null) {
                try {
                    j = Long.parseLong(property);
                } catch (NumberFormatException unused) {
                    t.log(Level.WARNING, "Property({0}) valid is not valid number format({1}), fall back to default({2})", new Object[]{"networkaddress.cache.ttl", property, 30L});
                }
            }
            nanos = j > 0 ? TimeUnit.SECONDS.toNanos(j) : j;
        }
        this.i = nanos;
        c50.A(pd5Var, "stopwatch");
        this.k = pd5Var;
        b57 b57Var = aVar.c;
        c50.A(b57Var, "syncContext");
        this.j = b57Var;
        Executor executor = aVar.g;
        this.n = executor;
        this.o = executor == null;
        this.p = z3;
        l47.g gVar = aVar.d;
        c50.A(gVar, "serviceConfigParser");
        this.q = gVar;
    }

    public static Map<String, ?> e(Map<String, ?> map, Random random, String str) {
        boolean z2;
        boolean z3;
        for (Map.Entry<String, ?> entry : map.entrySet()) {
            sd5.a(u.contains(entry.getKey()), "Bad key: %s", entry);
        }
        List<String> listC = m77.c(map, "clientLanguage");
        if (listC != null && !listC.isEmpty()) {
            Iterator<String> it = listC.iterator();
            while (true) {
                if (!it.hasNext()) {
                    z3 = false;
                    break;
                }
                if (StringLookupFactory.KEY_JAVA.equalsIgnoreCase(it.next())) {
                    z3 = true;
                    break;
                }
            }
            if (!z3) {
                return null;
            }
        }
        Double d2 = m77.d(map, "percentage");
        if (d2 != null) {
            int iIntValue = d2.intValue();
            sd5.a(iIntValue >= 0 && iIntValue <= 100, "Bad percentage: %s", d2);
            if (random.nextInt(100) >= iIntValue) {
                return null;
            }
        }
        List<String> listC2 = m77.c(map, "clientHostname");
        if (listC2 != null && !listC2.isEmpty()) {
            Iterator<String> it2 = listC2.iterator();
            while (true) {
                if (!it2.hasNext()) {
                    z2 = false;
                    break;
                }
                if (it2.next().equals(str)) {
                    z2 = true;
                    break;
                }
            }
            if (!z2) {
                return null;
            }
        }
        Map<String, ?> mapF = m77.f(map, "serviceConfig");
        if (mapF != null) {
            return mapF;
        }
        throw new td5(String.format("key '%s' missing in '%s'", map, "serviceConfig"));
    }

    public static List<Map<String, ?>> f(List<String> list) throws IOException {
        ArrayList arrayList = new ArrayList();
        for (String str : list) {
            if (str.startsWith("grpc_config=")) {
                String strSubstring = str.substring(12);
                Logger logger = l77.a;
                eg6 eg6Var = new eg6(new StringReader(strSubstring));
                try {
                    Object objA = l77.a(eg6Var);
                    if (!(objA instanceof List)) {
                        throw new ClassCastException("wrong type " + objA);
                    }
                    List list2 = (List) objA;
                    m77.a(list2);
                    arrayList.addAll(list2);
                } finally {
                    try {
                        eg6Var.close();
                    } catch (IOException e2) {
                        l77.a.log(Level.WARNING, "Failed to close", (Throwable) e2);
                    }
                }
            } else {
                t.log(Level.FINE, "Ignoring non service config {0}", new Object[]{str});
            }
        }
        return arrayList;
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0041  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static j67.c h(j67.a r8, j67.e r9, boolean r10, boolean r11, java.lang.String r12) throws java.lang.Exception {
        /*
            java.util.List r0 = java.util.Collections.emptyList()
            java.util.List r1 = java.util.Collections.emptyList()
            java.util.List r2 = java.util.Collections.emptyList()
            r3 = 0
            r4 = r8
            j67$b r4 = (j67.b) r4     // Catch: java.lang.Exception -> L21
            java.util.Objects.requireNonNull(r4)     // Catch: java.lang.Exception -> L21
            java.net.InetAddress[] r4 = java.net.InetAddress.getAllByName(r12)     // Catch: java.lang.Exception -> L21
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: java.lang.Exception -> L21
            java.util.List r0 = java.util.Collections.unmodifiableList(r4)     // Catch: java.lang.Exception -> L21
            r4 = r3
            goto L22
        L21:
            r4 = move-exception
        L22:
            if (r9 == 0) goto L70
            if (r10 == 0) goto L3e
            java.lang.StringBuilder r5 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L3c
            r5.<init>()     // Catch: java.lang.Exception -> L3c
            java.lang.String r6 = "_grpclb._tcp."
            r5.append(r6)     // Catch: java.lang.Exception -> L3c
            r5.append(r12)     // Catch: java.lang.Exception -> L3c
            java.lang.String r5 = r5.toString()     // Catch: java.lang.Exception -> L3c
            java.util.List r1 = r9.b(r8, r5)     // Catch: java.lang.Exception -> L3c
            goto L3e
        L3c:
            r8 = move-exception
            goto L3f
        L3e:
            r8 = r3
        L3f:
            if (r11 == 0) goto L6c
            r11 = 1
            r5 = 0
            if (r10 == 0) goto L4a
            if (r8 == 0) goto L48
            goto L4a
        L48:
            r10 = 0
            goto L4b
        L4a:
            r10 = 1
        L4b:
            if (r4 == 0) goto L50
            if (r10 == 0) goto L50
            goto L51
        L50:
            r11 = 0
        L51:
            if (r11 != 0) goto L6c
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Exception -> L6a
            r10.<init>()     // Catch: java.lang.Exception -> L6a
            java.lang.String r11 = "_grpc_config."
            r10.append(r11)     // Catch: java.lang.Exception -> L6a
            r10.append(r12)     // Catch: java.lang.Exception -> L6a
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Exception -> L6a
            java.util.List r9 = r9.a(r10)     // Catch: java.lang.Exception -> L6a
            r2 = r9
            goto L6c
        L6a:
            r9 = move-exception
            r3 = r9
        L6c:
            r7 = r3
            r3 = r8
            r8 = r7
            goto L71
        L70:
            r8 = r3
        L71:
            java.lang.String r9 = "ServiceConfig resolution failure"
            java.lang.String r10 = "Balancer resolution failure"
            java.lang.String r11 = "Address resolution failure"
            if (r4 == 0) goto L9e
            if (r3 != 0) goto L82
            boolean r12 = r1.isEmpty()     // Catch: java.lang.Throwable -> L8b
            if (r12 != 0) goto L82
            goto L9e
        L82:
            defpackage.rd5.c(r4)     // Catch: java.lang.Throwable -> L8b
            java.lang.RuntimeException r12 = new java.lang.RuntimeException     // Catch: java.lang.Throwable -> L8b
            r12.<init>(r4)     // Catch: java.lang.Throwable -> L8b
            throw r12     // Catch: java.lang.Throwable -> L8b
        L8b:
            r12 = move-exception
            java.util.logging.Logger r0 = defpackage.j67.t
            java.util.logging.Level r1 = java.util.logging.Level.FINE
            r0.log(r1, r11, r4)
            if (r3 == 0) goto L98
            r0.log(r1, r10, r3)
        L98:
            if (r8 == 0) goto L9d
            r0.log(r1, r9, r8)
        L9d:
            throw r12
        L9e:
            if (r4 == 0) goto La7
            java.util.logging.Logger r12 = defpackage.j67.t
            java.util.logging.Level r5 = java.util.logging.Level.FINE
            r12.log(r5, r11, r4)
        La7:
            if (r3 == 0) goto Lb0
            java.util.logging.Logger r11 = defpackage.j67.t
            java.util.logging.Level r12 = java.util.logging.Level.FINE
            r11.log(r12, r10, r3)
        Lb0:
            if (r8 == 0) goto Lb9
            java.util.logging.Logger r10 = defpackage.j67.t
            java.util.logging.Level r11 = java.util.logging.Level.FINE
            r10.log(r11, r9, r8)
        Lb9:
            j67$c r8 = new j67$c
            r8.<init>(r0, r2, r1)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j67.h(j67$a, j67$e, boolean, boolean, java.lang.String):j67$c");
    }

    @Override // defpackage.l47
    public String a() {
        return this.e;
    }

    @Override // defpackage.l47
    public void b() {
        c50.G(this.s != null, "not started");
        g();
    }

    @Override // defpackage.l47
    public void c() {
        if (this.m) {
            return;
        }
        this.m = true;
        Executor executor = this.n;
        if (executor == null || !this.o) {
            return;
        }
        x87.b(this.h, executor);
        this.n = null;
    }

    @Override // defpackage.l47
    public void d(l47.e eVar) {
        c50.G(this.s == null, "already started");
        if (this.o) {
            this.n = (Executor) x87.a(this.h);
        }
        c50.A(eVar, "listener");
        this.s = eVar;
        g();
    }

    /* JADX WARN: Removed duplicated region for block: B:15:0x0028  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void g() {
        /*
            r6 = this;
            boolean r0 = r6.r
            if (r0 != 0) goto L3a
            boolean r0 = r6.m
            if (r0 != 0) goto L3a
            j67$c r0 = r6.l
            r1 = 1
            if (r0 == 0) goto L28
            long r2 = r6.i
            r4 = 0
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 == 0) goto L28
            if (r0 <= 0) goto L26
            pd5 r0 = r6.k
            java.util.concurrent.TimeUnit r2 = java.util.concurrent.TimeUnit.NANOSECONDS
            long r2 = r0.a(r2)
            long r4 = r6.i
            int r0 = (r2 > r4 ? 1 : (r2 == r4 ? 0 : -1))
            if (r0 <= 0) goto L26
            goto L28
        L26:
            r0 = 0
            goto L29
        L28:
            r0 = 1
        L29:
            if (r0 != 0) goto L2c
            goto L3a
        L2c:
            r6.r = r1
            java.util.concurrent.Executor r0 = r6.n
            j67$d r1 = new j67$d
            l47$e r2 = r6.s
            r1.<init>(r2)
            r0.execute(r1)
        L3a:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.j67.g():void");
    }
}
