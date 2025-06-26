package defpackage;

import defpackage.a67;
import defpackage.c87;
import defpackage.e37;
import defpackage.j47;
import defpackage.k97;
import defpackage.la7;
import defpackage.n77;
import defpackage.o97;
import defpackage.pa7;
import defpackage.q97;
import defpackage.v27;
import defpackage.v37;
import defpackage.z57;
import java.io.EOFException;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.URI;
import java.util.Collections;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Queue;
import java.util.Random;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.SocketFactory;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import okhttp3.internal.http2.Settings;
import org.apache.commons.io.IOUtils;
import org.apache.commons.text.lookup.InetAddressKeys;

/* loaded from: classes2.dex */
public class p97 implements d67, k97.a {
    public static final Map<ka7, x47> Q;
    public static final Logger R;
    public static final o97[] S;
    public HostnameVerifier A;
    public int B;
    public final LinkedList<o97> C;
    public final z97 D;
    public ScheduledExecutorService E;
    public n77 F;
    public boolean G;
    public long H;
    public long I;
    public boolean J;
    public final Runnable K;
    public final int L;
    public final boolean M;
    public final g97 N;
    public final b77<o97> O;
    public final u37 P;
    public final InetSocketAddress a;
    public final String b;
    public final String c;
    public final Random d = new Random();
    public final qd5<pd5> e;
    public final int f;
    public c87.a g;
    public k97 h;
    public w97 i;
    public final Object j;
    public final y37 k;
    public int l;
    public final Map<Integer, o97> m;
    public final Executor n;
    public final u87 o;
    public final int p;
    public int q;
    public e r;
    public v27 s;
    public x47 t;
    public boolean u;
    public a77 v;
    public boolean w;
    public boolean x;
    public final SocketFactory y;
    public SSLSocketFactory z;

    public class a extends b77<o97> {
        public a() {
        }

        @Override // defpackage.b77
        public void a() {
            p97.this.g.d(true);
        }

        @Override // defpackage.b77
        public void b() {
            p97.this.g.d(false);
        }
    }

    public class b implements Runnable {
        public b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Objects.requireNonNull(p97.this);
            p97 p97Var = p97.this;
            Objects.requireNonNull(p97Var);
            Objects.requireNonNull(p97.this);
            p97Var.r = p97Var.new e(null, null);
            p97 p97Var2 = p97.this;
            p97Var2.n.execute(p97Var2.r);
            synchronized (p97.this.j) {
                p97 p97Var3 = p97.this;
                p97Var3.B = Integer.MAX_VALUE;
                p97Var3.w();
            }
            Objects.requireNonNull(p97.this);
            throw null;
        }
    }

    public class c implements Runnable {
        public final /* synthetic */ CountDownLatch e;
        public final /* synthetic */ j97 f;
        public final /* synthetic */ sa7 g;

        public class a implements vt7 {
            public a(c cVar) {
            }

            @Override // defpackage.vt7, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            @Override // defpackage.vt7
            public long read(xs7 xs7Var, long j) {
                return -1L;
            }

            @Override // defpackage.vt7
            public wt7 timeout() {
                return wt7.NONE;
            }
        }

        public c(CountDownLatch countDownLatch, j97 j97Var, sa7 sa7Var) {
            this.e = countDownLatch;
            this.f = j97Var;
            this.g = sa7Var;
        }

        @Override // java.lang.Runnable
        public void run() throws InterruptedException {
            p97 p97Var;
            e eVar;
            Socket socketH;
            try {
                this.e.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
            at7 at7VarP = n56.p(new a(this));
            SSLSession session = null;
            try {
                try {
                    try {
                        p97 p97Var2 = p97.this;
                        u37 u37Var = p97Var2.P;
                        if (u37Var == null) {
                            socketH = p97Var2.y.createSocket(p97Var2.a.getAddress(), p97.this.a.getPort());
                        } else {
                            SocketAddress socketAddress = u37Var.e;
                            if (!(socketAddress instanceof InetSocketAddress)) {
                                throw new y47(x47.m.h("Unsupported SocketAddress implementation " + p97.this.P.e.getClass()));
                            }
                            socketH = p97.h(p97Var2, u37Var.f, (InetSocketAddress) socketAddress, u37Var.g, u37Var.h);
                        }
                        Socket socket = socketH;
                        p97 p97Var3 = p97.this;
                        SSLSocketFactory sSLSocketFactory = p97Var3.z;
                        Socket socket2 = socket;
                        if (sSLSocketFactory != null) {
                            SSLSocket sSLSocketA = t97.a(sSLSocketFactory, p97Var3.A, socket, p97Var3.m(), p97.this.n(), p97.this.D);
                            session = sSLSocketA.getSession();
                            socket2 = sSLSocketA;
                        }
                        socket2.setTcpNoDelay(true);
                        at7 at7VarP2 = n56.p(n56.f2(socket2));
                        this.f.a(n56.b2(socket2), socket2);
                        p97 p97Var4 = p97.this;
                        v27.b bVarB = p97Var4.s.b();
                        bVarB.b(t37.a, socket2.getRemoteSocketAddress());
                        bVarB.b(t37.b, socket2.getLocalSocketAddress());
                        bVarB.b(t37.c, session);
                        bVarB.b(t67.d, session == null ? u47.NONE : u47.PRIVACY_AND_INTEGRITY);
                        p97Var4.s = bVarB.a();
                        p97 p97Var5 = p97.this;
                        p97Var5.r = new e(p97Var5, ((pa7) this.g).e(at7VarP2, true));
                        synchronized (p97.this.j) {
                            p97 p97Var6 = p97.this;
                            c50.A(socket2, "socket");
                            Objects.requireNonNull(p97Var6);
                            if (session != null) {
                                p97 p97Var7 = p97.this;
                                new v37.b(session);
                                Objects.requireNonNull(p97Var7);
                            }
                        }
                    } catch (y47 e) {
                        p97.this.v(0, ka7.INTERNAL_ERROR, e.e);
                        p97Var = p97.this;
                        eVar = new e(p97Var, ((pa7) this.g).e(at7VarP, true));
                        p97Var.r = eVar;
                    }
                } catch (Exception e2) {
                    p97.this.a(e2);
                    p97Var = p97.this;
                    eVar = new e(p97Var, ((pa7) this.g).e(at7VarP, true));
                    p97Var.r = eVar;
                }
            } catch (Throwable th) {
                p97 p97Var8 = p97.this;
                p97Var8.r = new e(p97Var8, ((pa7) this.g).e(at7VarP, true));
                throw th;
            }
        }
    }

    public class d implements Runnable {
        public d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            p97 p97Var = p97.this;
            p97Var.n.execute(p97Var.r);
            synchronized (p97.this.j) {
                p97 p97Var2 = p97.this;
                p97Var2.B = Integer.MAX_VALUE;
                p97Var2.w();
            }
        }
    }

    static {
        EnumMap enumMap = new EnumMap(ka7.class);
        ka7 ka7Var = ka7.NO_ERROR;
        x47 x47Var = x47.m;
        enumMap.put((EnumMap) ka7Var, (ka7) x47Var.h("No error: A GRPC status of OK should have been sent"));
        enumMap.put((EnumMap) ka7.PROTOCOL_ERROR, (ka7) x47Var.h("Protocol error"));
        enumMap.put((EnumMap) ka7.INTERNAL_ERROR, (ka7) x47Var.h("Internal error"));
        enumMap.put((EnumMap) ka7.FLOW_CONTROL_ERROR, (ka7) x47Var.h("Flow control error"));
        enumMap.put((EnumMap) ka7.STREAM_CLOSED, (ka7) x47Var.h("Stream closed"));
        enumMap.put((EnumMap) ka7.FRAME_TOO_LARGE, (ka7) x47Var.h("Frame too large"));
        enumMap.put((EnumMap) ka7.REFUSED_STREAM, (ka7) x47.n.h("Refused stream"));
        enumMap.put((EnumMap) ka7.CANCEL, (ka7) x47.g.h("Cancelled"));
        enumMap.put((EnumMap) ka7.COMPRESSION_ERROR, (ka7) x47Var.h("Compression error"));
        enumMap.put((EnumMap) ka7.CONNECT_ERROR, (ka7) x47Var.h("Connect error"));
        enumMap.put((EnumMap) ka7.ENHANCE_YOUR_CALM, (ka7) x47.l.h("Enhance your calm"));
        enumMap.put((EnumMap) ka7.INADEQUATE_SECURITY, (ka7) x47.j.h("Inadequate security"));
        Q = Collections.unmodifiableMap(enumMap);
        R = Logger.getLogger(p97.class.getName());
        S = new o97[0];
    }

    public p97(InetSocketAddress inetSocketAddress, String str, String str2, v27 v27Var, Executor executor, SocketFactory socketFactory, SSLSocketFactory sSLSocketFactory, HostnameVerifier hostnameVerifier, z97 z97Var, int i, int i2, u37 u37Var, Runnable runnable, int i3, g97 g97Var, boolean z) {
        Object obj = new Object();
        this.j = obj;
        this.m = new HashMap();
        this.B = 0;
        this.C = new LinkedList<>();
        this.O = new a();
        c50.A(inetSocketAddress, InetAddressKeys.KEY_ADDRESS);
        this.a = inetSocketAddress;
        this.b = str;
        this.p = i;
        this.f = i2;
        c50.A(executor, "executor");
        this.n = executor;
        this.o = new u87(executor);
        this.l = 3;
        this.y = socketFactory == null ? SocketFactory.getDefault() : socketFactory;
        this.z = sSLSocketFactory;
        this.A = hostnameVerifier;
        c50.A(z97Var, "connectionSpec");
        this.D = z97Var;
        this.e = u67.o;
        StringBuilder sb = new StringBuilder();
        if (str2 != null) {
            sb.append(str2);
            sb.append(' ');
        }
        sb.append("grpc-java-");
        sb.append("okhttp");
        sb.append('/');
        sb.append("1.28.0");
        this.c = sb.toString();
        this.P = u37Var;
        c50.A(runnable, "tooManyPingsRunnable");
        this.K = runnable;
        this.L = i3;
        this.N = g97Var;
        this.k = y37.a(p97.class, inetSocketAddress.toString());
        v27.b bVarA = v27.a();
        bVarA.b(t67.e, v27Var);
        this.s = bVarA.a();
        this.M = z;
        synchronized (obj) {
        }
    }

    public static Socket h(p97 p97Var, InetSocketAddress inetSocketAddress, InetSocketAddress inetSocketAddress2, String str, String str2) throws NumberFormatException, IOException, y47 {
        String str3;
        Objects.requireNonNull(p97Var);
        try {
            Socket socketCreateSocket = inetSocketAddress2.getAddress() != null ? p97Var.y.createSocket(inetSocketAddress2.getAddress(), inetSocketAddress2.getPort()) : p97Var.y.createSocket(inetSocketAddress2.getHostName(), inetSocketAddress2.getPort());
            socketCreateSocket.setTcpNoDelay(true);
            vt7 vt7VarF2 = n56.f2(socketCreateSocket);
            zs7 zs7VarO = n56.o(n56.b2(socketCreateSocket));
            j17 j17VarJ = p97Var.j(inetSocketAddress, str, str2);
            h17 h17Var = j17VarJ.a;
            ot7 ot7Var = (ot7) zs7VarO;
            ot7Var.T(String.format("CONNECT %s:%d HTTP/1.1", h17Var.a, Integer.valueOf(h17Var.b)));
            ot7Var.T(IOUtils.LINE_SEPARATOR_WINDOWS);
            int length = j17VarJ.b.a.length / 2;
            for (int i = 0; i < length; i++) {
                g17 g17Var = j17VarJ.b;
                Objects.requireNonNull(g17Var);
                int i2 = i * 2;
                if (i2 >= 0) {
                    String[] strArr = g17Var.a;
                    str3 = i2 >= strArr.length ? null : strArr[i2];
                }
                ot7Var.T(str3);
                ot7Var.T(": ");
                ot7Var.T(j17VarJ.b.a(i));
                ot7Var.T(IOUtils.LINE_SEPARATOR_WINDOWS);
            }
            ot7Var.T(IOUtils.LINE_SEPARATOR_WINDOWS);
            ot7Var.flush();
            k17 k17VarA = k17.a(s(vt7VarF2));
            while (!s(vt7VarF2).equals("")) {
            }
            int i3 = k17VarA.b;
            if (i3 >= 200 && i3 < 300) {
                return socketCreateSocket;
            }
            xs7 xs7Var = new xs7();
            try {
                socketCreateSocket.shutdownOutput();
                vt7VarF2.read(xs7Var, 1024L);
            } catch (IOException e2) {
                xs7Var.k0("Unable to read body: " + e2.toString());
            }
            try {
                socketCreateSocket.close();
            } catch (IOException unused) {
            }
            throw new y47(x47.n.h(String.format("Response returned from proxy was not successful (expected 2xx, got %d %s). Response body:\n%s", Integer.valueOf(k17VarA.b), k17VarA.c, xs7Var.t())));
        } catch (IOException e3) {
            throw new y47(x47.n.h("Failed trying to connect with proxy").g(e3));
        }
    }

    public static void i(p97 p97Var, ka7 ka7Var, String str) {
        Objects.requireNonNull(p97Var);
        p97Var.v(0, ka7Var, z(ka7Var).b(str));
    }

    public static String s(vt7 vt7Var) throws IOException {
        xs7 xs7Var = new xs7();
        while (vt7Var.read(xs7Var, 1L) != -1) {
            if (xs7Var.f(xs7Var.f - 1) == 10) {
                return xs7Var.i0();
            }
        }
        StringBuilder sbZ = jo.z("\\n not found: ");
        sbZ.append(xs7Var.e0().w());
        throw new EOFException(sbZ.toString());
    }

    public static x47 z(ka7 ka7Var) {
        x47 x47Var = Q.get(ka7Var);
        if (x47Var != null) {
            return x47Var;
        }
        x47 x47Var2 = x47.h;
        StringBuilder sbZ = jo.z("Unknown http2 error code: ");
        sbZ.append(ka7Var.e);
        return x47Var2.h(sbZ.toString());
    }

    @Override // k97.a
    public void a(Throwable th) {
        c50.A(th, "failureCause");
        v(0, ka7.INTERNAL_ERROR, x47.n.g(th));
    }

    @Override // defpackage.c87
    public void b(x47 x47Var) {
        synchronized (this.j) {
            if (this.t != null) {
                return;
            }
            this.t = x47Var;
            this.g.a(x47Var);
            y();
        }
    }

    @Override // defpackage.c87
    public void c(x47 x47Var) {
        z57.a aVar = z57.a.PROCESSED;
        b(x47Var);
        synchronized (this.j) {
            Iterator<Map.Entry<Integer, o97>> it = this.m.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, o97> next = it.next();
                it.remove();
                next.getValue().m.i(x47Var, aVar, false, new i47());
                r(next.getValue());
            }
            Iterator<o97> it2 = this.C.iterator();
            while (it2.hasNext()) {
                o97 next2 = it2.next();
                next2.m.i(x47Var, aVar, true, new i47());
                r(next2);
            }
            this.C.clear();
            y();
        }
    }

    @Override // defpackage.c87
    public Runnable d(c87.a aVar) {
        c50.A(aVar, "listener");
        this.g = aVar;
        if (this.G) {
            this.E = (ScheduledExecutorService) x87.a(u67.n);
            n77 n77Var = new n77(new n77.c(this), this.E, this.H, this.I, this.J);
            this.F = n77Var;
            synchronized (n77Var) {
                if (n77Var.d) {
                    n77Var.b();
                }
            }
        }
        if (this.a == null) {
            synchronized (this.j) {
                k97 k97Var = new k97(this, null, null);
                this.h = k97Var;
                this.i = new w97(this, k97Var);
            }
            u87 u87Var = this.o;
            b bVar = new b();
            Queue<Runnable> queue = u87Var.f;
            c50.A(bVar, "'r' must not be null.");
            queue.add(bVar);
            u87Var.c(bVar);
            return null;
        }
        j97 j97Var = new j97(this.o, this);
        pa7 pa7Var = new pa7();
        pa7.d dVar = new pa7.d(n56.o(j97Var), true);
        synchronized (this.j) {
            k97 k97Var2 = new k97(this, dVar, new q97(Level.FINE, p97.class));
            this.h = k97Var2;
            this.i = new w97(this, k97Var2);
        }
        CountDownLatch countDownLatch = new CountDownLatch(1);
        u87 u87Var2 = this.o;
        c cVar = new c(countDownLatch, j97Var, pa7Var);
        Queue<Runnable> queue2 = u87Var2.f;
        c50.A(cVar, "'r' must not be null.");
        queue2.add(cVar);
        u87Var2.c(cVar);
        try {
            t();
            countDownLatch.countDown();
            u87 u87Var3 = this.o;
            d dVar2 = new d();
            Queue<Runnable> queue3 = u87Var3.f;
            c50.A(dVar2, "'r' must not be null.");
            queue3.add(dVar2);
            u87Var3.c(dVar2);
            return null;
        } catch (Throwable th) {
            countDownLatch.countDown();
            throw th;
        }
    }

    @Override // defpackage.x37
    public y37 e() {
        return this.k;
    }

    @Override // defpackage.a67
    public void f(a67.a aVar, Executor executor) {
        long jNextLong;
        synchronized (this.j) {
            boolean z = true;
            if (!(this.h != null)) {
                throw new IllegalStateException();
            }
            if (this.w) {
                a77.a(executor, new z67(aVar, o()));
                return;
            }
            a77 a77Var = this.v;
            if (a77Var != null) {
                jNextLong = 0;
                z = false;
            } else {
                jNextLong = this.d.nextLong();
                pd5 pd5Var = this.e.get();
                pd5Var.c();
                a77 a77Var2 = new a77(jNextLong, pd5Var);
                this.v = a77Var2;
                this.N.e++;
                a77Var = a77Var2;
            }
            if (z) {
                this.h.ping(false, (int) (jNextLong >>> 32), (int) jNextLong);
            }
            synchronized (a77Var) {
                if (!a77Var.d) {
                    a77Var.c.put(aVar, executor);
                } else {
                    Throwable th = a77Var.e;
                    a77.a(executor, th != null ? new z67(aVar, th) : new y67(aVar, a77Var.f));
                }
            }
        }
    }

    @Override // defpackage.a67
    public y57 g(j47 j47Var, i47 i47Var, x27 x27Var) throws Throwable {
        a97 a97Var;
        Object obj;
        c50.A(j47Var, "method");
        c50.A(i47Var, "headers");
        v27 v27Var = this.s;
        a97 a97Var2 = a97.c;
        List<e37.a> list = x27Var.g;
        if (list.isEmpty()) {
            a97Var = a97.c;
        } else {
            v27 v27Var2 = v27.b;
            x27 x27Var2 = x27.k;
            c50.A(v27Var, "transportAttrs cannot be null");
            c50.A(x27Var, "callOptions cannot be null");
            e37.b bVar = new e37.b(v27Var, x27Var);
            int size = list.size();
            a57[] a57VarArr = new a57[size];
            for (int i = 0; i < size; i++) {
                a57VarArr[i] = list.get(i).a(bVar, i47Var);
            }
            a97Var = new a97(a57VarArr);
        }
        a97 a97Var3 = a97Var;
        Object obj2 = this.j;
        synchronized (obj2) {
            try {
                obj = obj2;
                try {
                    o97 o97Var = new o97(j47Var, i47Var, this.h, this, this.i, this.j, this.p, this.f, this.b, this.c, a97Var3, this.N, x27Var, this.M);
                    return o97Var;
                } catch (Throwable th) {
                    th = th;
                    while (true) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            th = th2;
                        }
                    }
                }
            } catch (Throwable th3) {
                th = th3;
                obj = obj2;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:121:0x01bb, code lost:
    
        throw new java.lang.AssertionError();
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0093, code lost:
    
        r17 = r3;
        r16 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x012f, code lost:
    
        if (r11 == 16) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0132, code lost:
    
        if (r13 != (-1)) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x0137, code lost:
    
        r3 = r11 - r13;
        java.lang.System.arraycopy(r10, r13, r10, 16 - r3, r3);
        java.util.Arrays.fill(r10, r13, (16 - r11) + r13, (byte) 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0145, code lost:
    
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0146, code lost:
    
        r5 = java.net.InetAddress.getByAddress(r10);
     */
    /* JADX WARN: Removed duplicated region for block: B:69:0x00f8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final defpackage.j17 j(java.net.InetSocketAddress r19, java.lang.String r20, java.lang.String r21) throws java.net.UnknownHostException {
        /*
            Method dump skipped, instructions count: 716
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.p97.j(java.net.InetSocketAddress, java.lang.String, java.lang.String):j17");
    }

    public void k(int i, x47 x47Var, z57.a aVar, boolean z, ka7 ka7Var, i47 i47Var) {
        synchronized (this.j) {
            o97 o97VarRemove = this.m.remove(Integer.valueOf(i));
            if (o97VarRemove != null) {
                if (x47Var != null) {
                    o97VarRemove.m.i(x47Var, aVar, z, new i47());
                }
                if (!w()) {
                    y();
                    r(o97VarRemove);
                }
            }
        }
    }

    public o97[] l() {
        o97[] o97VarArr;
        synchronized (this.j) {
            o97VarArr = (o97[]) this.m.values().toArray(S);
        }
        return o97VarArr;
    }

    public String m() {
        URI uriA = u67.a(this.b);
        return uriA.getHost() != null ? uriA.getHost() : this.b;
    }

    public int n() {
        URI uriA = u67.a(this.b);
        return uriA.getPort() != -1 ? uriA.getPort() : this.a.getPort();
    }

    public final Throwable o() {
        synchronized (this.j) {
            x47 x47Var = this.t;
            if (x47Var == null) {
                return new y47(x47.n.h("Connection closed"));
            }
            Objects.requireNonNull(x47Var);
            return new y47(x47Var);
        }
    }

    public o97 p(int i) {
        o97 o97Var;
        synchronized (this.j) {
            o97Var = this.m.get(Integer.valueOf(i));
        }
        return o97Var;
    }

    public boolean q(int i) {
        boolean z;
        synchronized (this.j) {
            z = true;
            if (i >= this.l || (i & 1) != 1) {
                z = false;
            }
        }
        return z;
    }

    public final void r(o97 o97Var) {
        if (this.x && this.C.isEmpty() && this.m.isEmpty()) {
            this.x = false;
            n77 n77Var = this.F;
            if (n77Var != null) {
                synchronized (n77Var) {
                    if (!n77Var.d) {
                        n77.e eVar = n77Var.e;
                        if (eVar == n77.e.PING_SCHEDULED || eVar == n77.e.PING_DELAYED) {
                            n77Var.e = n77.e.IDLE;
                        }
                        if (n77Var.e == n77.e.PING_SENT) {
                            n77Var.e = n77.e.IDLE_AND_PING_SENT;
                        }
                    }
                }
            }
        }
        if (o97Var.c) {
            this.O.c(o97Var, false);
        }
    }

    public void t() {
        synchronized (this.j) {
            k97 k97Var = this.h;
            Objects.requireNonNull(k97Var);
            try {
                k97Var.f.connectionPreface();
            } catch (IOException e2) {
                k97Var.e.a(e2);
            }
            ra7 ra7Var = new ra7();
            ra7Var.b(7, 0, this.f);
            k97 k97Var2 = this.h;
            k97Var2.g.f(q97.a.OUTBOUND, ra7Var);
            try {
                k97Var2.f.f0(ra7Var);
            } catch (IOException e3) {
                k97Var2.e.a(e3);
            }
            if (this.f > 65535) {
                this.h.windowUpdate(0, r1 - Settings.DEFAULT_INITIAL_WINDOW_SIZE);
            }
        }
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.b("logId", this.k.c);
        nd5VarK0.d(InetAddressKeys.KEY_ADDRESS, this.a);
        return nd5VarK0.toString();
    }

    public final void u(o97 o97Var) {
        if (!this.x) {
            this.x = true;
            n77 n77Var = this.F;
            if (n77Var != null) {
                n77Var.b();
            }
        }
        if (o97Var.c) {
            this.O.c(o97Var, true);
        }
    }

    public final void v(int i, ka7 ka7Var, x47 x47Var) {
        z57.a aVar = z57.a.REFUSED;
        synchronized (this.j) {
            if (this.t == null) {
                this.t = x47Var;
                this.g.a(x47Var);
            }
            if (ka7Var != null && !this.u) {
                this.u = true;
                this.h.H0(0, ka7Var, new byte[0]);
            }
            Iterator<Map.Entry<Integer, o97>> it = this.m.entrySet().iterator();
            while (it.hasNext()) {
                Map.Entry<Integer, o97> next = it.next();
                if (next.getKey().intValue() > i) {
                    it.remove();
                    next.getValue().m.i(x47Var, aVar, false, new i47());
                    r(next.getValue());
                }
            }
            Iterator<o97> it2 = this.C.iterator();
            while (it2.hasNext()) {
                o97 next2 = it2.next();
                next2.m.i(x47Var, aVar, true, new i47());
                r(next2);
            }
            this.C.clear();
            y();
        }
    }

    public final boolean w() {
        boolean z = false;
        while (!this.C.isEmpty() && this.m.size() < this.B) {
            x(this.C.poll());
            z = true;
        }
        return z;
    }

    public final void x(o97 o97Var) {
        c50.G(o97Var.l == -1, "StreamId already assigned");
        this.m.put(Integer.valueOf(this.l), o97Var);
        u(o97Var);
        o97.b bVar = o97Var.m;
        int i = this.l;
        if (!(o97.this.l == -1)) {
            throw new IllegalStateException(c50.q0("the stream has been started with id %s", Integer.valueOf(i)));
        }
        o97.this.l = i;
        o97.b bVar2 = o97.this.m;
        if (!(bVar2.m != null)) {
            throw new IllegalStateException();
        }
        synchronized (bVar2.f) {
            c50.G(!bVar2.i, "Already allocated");
            bVar2.i = true;
        }
        bVar2.c();
        g97 g97Var = bVar2.g;
        g97Var.b++;
        g97Var.a.a();
        if (bVar.M) {
            k97 k97Var = bVar.J;
            o97 o97Var2 = o97.this;
            k97Var.B0(o97Var2.p, false, o97Var2.l, 0, bVar.C);
            for (a57 a57Var : o97.this.i.a) {
                Objects.requireNonNull((e37) a57Var);
            }
            bVar.C = null;
            if (bVar.D.f > 0) {
                bVar.K.a(bVar.E, o97.this.l, bVar.D, bVar.F);
            }
            bVar.M = false;
        }
        j47.d dVar = o97Var.g.a;
        if ((dVar != j47.d.UNARY && dVar != j47.d.SERVER_STREAMING) || o97Var.p) {
            this.h.flush();
        }
        int i2 = this.l;
        if (i2 < 2147483645) {
            this.l = i2 + 2;
        } else {
            this.l = Integer.MAX_VALUE;
            v(Integer.MAX_VALUE, ka7.NO_ERROR, x47.n.h("Stream ids exhausted"));
        }
    }

    public final void y() {
        if (this.t == null || !this.m.isEmpty() || !this.C.isEmpty() || this.w) {
            return;
        }
        this.w = true;
        n77 n77Var = this.F;
        if (n77Var != null) {
            synchronized (n77Var) {
                n77.e eVar = n77Var.e;
                n77.e eVar2 = n77.e.DISCONNECTED;
                if (eVar != eVar2) {
                    n77Var.e = eVar2;
                    ScheduledFuture<?> scheduledFuture = n77Var.f;
                    if (scheduledFuture != null) {
                        scheduledFuture.cancel(false);
                    }
                    ScheduledFuture<?> scheduledFuture2 = n77Var.g;
                    if (scheduledFuture2 != null) {
                        scheduledFuture2.cancel(false);
                        n77Var.g = null;
                    }
                }
            }
            x87.b(u67.n, this.E);
            this.E = null;
        }
        a77 a77Var = this.v;
        if (a77Var != null) {
            Throwable thO = o();
            synchronized (a77Var) {
                if (!a77Var.d) {
                    a77Var.d = true;
                    a77Var.e = thO;
                    Map<a67.a, Executor> map = a77Var.c;
                    a77Var.c = null;
                    for (Map.Entry<a67.a, Executor> entry : map.entrySet()) {
                        a77.a(entry.getValue(), new z67(entry.getKey(), thO));
                    }
                }
            }
            this.v = null;
        }
        if (!this.u) {
            this.u = true;
            this.h.H0(0, ka7.NO_ERROR, new byte[0]);
        }
        this.h.close();
    }

    public class e implements la7.a, Runnable {
        public final q97 e;
        public la7 f;
        public boolean g;

        public e(p97 p97Var, la7 la7Var) {
            q97 q97Var = new q97(Level.FINE, p97.class);
            p97.this = p97Var;
            this.g = true;
            this.f = la7Var;
            this.e = q97Var;
        }

        @Override // java.lang.Runnable
        public void run() {
            String name = Thread.currentThread().getName();
            Thread.currentThread().setName("OkHttpClientTransport");
            while (((pa7.c) this.f).a(this)) {
                try {
                    n77 n77Var = p97.this.F;
                    if (n77Var != null) {
                        n77Var.a();
                    }
                } catch (Throwable th) {
                    try {
                        p97 p97Var = p97.this;
                        ka7 ka7Var = ka7.PROTOCOL_ERROR;
                        x47 x47VarG = x47.m.h("error in frame handler").g(th);
                        Map<ka7, x47> map = p97.Q;
                        p97Var.v(0, ka7Var, x47VarG);
                        try {
                            ((pa7.c) this.f).e.close();
                        } catch (IOException e) {
                            e = e;
                            p97.R.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                            p97.this.g.c();
                            Thread.currentThread().setName(name);
                        }
                    } catch (Throwable th2) {
                        try {
                            ((pa7.c) this.f).e.close();
                        } catch (IOException e2) {
                            p97.R.log(Level.INFO, "Exception closing frame reader", (Throwable) e2);
                        }
                        p97.this.g.c();
                        Thread.currentThread().setName(name);
                        throw th2;
                    }
                }
            }
            p97 p97Var2 = p97.this;
            ka7 ka7Var2 = ka7.INTERNAL_ERROR;
            x47 x47VarH = x47.n.h("End of stream or IOException");
            Map<ka7, x47> map2 = p97.Q;
            p97Var2.v(0, ka7Var2, x47VarH);
            try {
                ((pa7.c) this.f).e.close();
            } catch (IOException e3) {
                e = e3;
                p97.R.log(Level.INFO, "Exception closing frame reader", (Throwable) e);
                p97.this.g.c();
                Thread.currentThread().setName(name);
            }
            p97.this.g.c();
            Thread.currentThread().setName(name);
        }

        public e(la7 la7Var, q97 q97Var) {
            this.g = true;
            this.f = null;
            this.e = null;
        }
    }
}
