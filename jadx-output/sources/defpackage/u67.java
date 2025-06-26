package defpackage;

import defpackage.c47;
import defpackage.e37;
import defpackage.i47;
import defpackage.jd5;
import defpackage.x27;
import defpackage.x87;
import defpackage.z37;
import defpackage.z57;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.InvocationTargetException;
import java.net.InetSocketAddress;
import java.net.URI;
import java.net.URISyntaxException;
import java.nio.charset.Charset;
import java.util.Locale;
import java.util.Objects;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public final class u67 {
    public static final Logger a = Logger.getLogger(u67.class.getName());
    public static final i47.f<Long> b;
    public static final i47.f<String> c;
    public static final i47.f<byte[]> d;
    public static final i47.f<String> e;
    public static final i47.f<byte[]> f;
    public static final i47.f<String> g;
    public static final i47.f<String> h;
    public static final i47.f<String> i;
    public static final long j;
    public static final t47 k;
    public static final x27.a<Boolean> l;
    public static final x87.c<Executor> m;
    public static final x87.c<ScheduledExecutorService> n;
    public static final qd5<pd5> o;

    public class a implements t47 {
    }

    public class b implements x87.c<Executor> {
        @Override // x87.c
        public Executor a() {
            return Executors.newCachedThreadPool(u67.d("grpc-default-executor-%d", true));
        }

        @Override // x87.c
        public void b(Executor executor) {
            ((ExecutorService) executor).shutdown();
        }

        public String toString() {
            return "grpc-default-executor";
        }
    }

    public class c implements x87.c<ScheduledExecutorService> {
        @Override // x87.c
        public ScheduledExecutorService a() throws IllegalAccessException, IllegalArgumentException, InvocationTargetException {
            ScheduledExecutorService scheduledExecutorServiceNewScheduledThreadPool = Executors.newScheduledThreadPool(1, u67.d("grpc-timer-%d", true));
            try {
                scheduledExecutorServiceNewScheduledThreadPool.getClass().getMethod("setRemoveOnCancelPolicy", Boolean.TYPE).invoke(scheduledExecutorServiceNewScheduledThreadPool, Boolean.TRUE);
            } catch (NoSuchMethodException unused) {
            } catch (RuntimeException e) {
                throw e;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
            return Executors.unconfigurableScheduledExecutorService(scheduledExecutorServiceNewScheduledThreadPool);
        }

        @Override // x87.c
        public void b(ScheduledExecutorService scheduledExecutorService) {
            scheduledExecutorService.shutdown();
        }
    }

    public class d implements qd5<pd5> {
        @Override // defpackage.qd5
        public pd5 get() {
            return new pd5();
        }
    }

    public class e implements a67 {
        public final /* synthetic */ a67 a;
        public final /* synthetic */ e37.a b;

        public e(a67 a67Var, e37.a aVar) {
            this.a = a67Var;
            this.b = aVar;
        }

        @Override // defpackage.x37
        public y37 e() {
            return this.a.e();
        }

        @Override // defpackage.a67
        public y57 g(j47<?, ?> j47Var, i47 i47Var, x27 x27Var) {
            return this.a.g(j47Var, i47Var, x27Var.f(this.b));
        }
    }

    public static final class f implements z37.a<byte[]> {
        public f(a aVar) {
        }

        @Override // i47.i
        public byte[] a(Object obj) {
            return (byte[]) obj;
        }

        @Override // i47.i
        public Object b(byte[] bArr) {
            return bArr;
        }
    }

    /* JADX WARN: Enum visitor error
    jadx.core.utils.exceptions.JadxRuntimeException: Init of enum field 'g' uses external variables
    	at jadx.core.dex.visitors.EnumVisitor.createEnumFieldByConstructor(EnumVisitor.java:451)
    	at jadx.core.dex.visitors.EnumVisitor.processEnumFieldByRegister(EnumVisitor.java:395)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromFilledArray(EnumVisitor.java:324)
    	at jadx.core.dex.visitors.EnumVisitor.extractEnumFieldsFromInsn(EnumVisitor.java:262)
    	at jadx.core.dex.visitors.EnumVisitor.convertToEnum(EnumVisitor.java:151)
    	at jadx.core.dex.visitors.EnumVisitor.visit(EnumVisitor.java:100)
     */
    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    public static final class g {
        public static final g g;
        public static final g h;
        public static final g i;
        public static final g j;
        public static final g k;
        public static final g l;
        public static final g m;
        public static final g n;
        public static final g o;
        public static final g p;
        public static final g q;
        public static final g r;
        public static final g s;
        public static final g t;
        public static final g[] u;
        public static final /* synthetic */ g[] v;
        public final int e;
        public final x47 f;

        /*  JADX ERROR: NullPointerException in pass: LoopRegionVisitor
            java.lang.NullPointerException: Cannot invoke "jadx.core.dex.instructions.args.SSAVar.use(jadx.core.dex.instructions.args.RegisterArg)" because "ssaVar" is null
            	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:493)
            	at jadx.core.dex.nodes.InsnNode.rebindArgs(InsnNode.java:496)
            	at jadx.core.dex.visitors.regions.LoopRegionVisitor.checkArrayForEach(LoopRegionVisitor.java:230)
            	at jadx.core.dex.visitors.regions.LoopRegionVisitor.checkForIndexedLoop(LoopRegionVisitor.java:144)
            	at jadx.core.dex.visitors.regions.LoopRegionVisitor.processLoopRegion(LoopRegionVisitor.java:81)
            	at jadx.core.dex.visitors.regions.LoopRegionVisitor.enterRegion(LoopRegionVisitor.java:65)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:67)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.lambda$traverseInternal$0(DepthRegionTraversal.java:68)
            	at java.base/java.util.ArrayList.forEach(ArrayList.java:1596)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverseInternal(DepthRegionTraversal.java:68)
            	at jadx.core.dex.visitors.regions.DepthRegionTraversal.traverse(DepthRegionTraversal.java:19)
            	at jadx.core.dex.visitors.regions.LoopRegionVisitor.visit(LoopRegionVisitor.java:55)
            */
        static {
            /*
                Method dump skipped, instructions count: 256
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: u67.g.<clinit>():void");
        }

        public g(String str, int i2, int i3, x47 x47Var) {
            this.e = i3;
            StringBuilder sbZ = jo.z("HTTP/2 error code: ");
            sbZ.append(name());
            this.f = x47Var.b(sbZ.toString());
        }

        public static g valueOf(String str) {
            return (g) Enum.valueOf(g.class, str);
        }

        public static g[] values() {
            return (g[]) v.clone();
        }
    }

    public static class h implements i47.d<Long> {
        @Override // i47.d
        public String a(Long l) {
            Long l2 = l;
            TimeUnit timeUnit = TimeUnit.NANOSECONDS;
            if (l2.longValue() < 0) {
                throw new IllegalArgumentException("Timeout too small");
            }
            if (l2.longValue() < 100000000) {
                return l2 + "n";
            }
            if (l2.longValue() < 100000000000L) {
                return timeUnit.toMicros(l2.longValue()) + "u";
            }
            if (l2.longValue() < 100000000000000L) {
                return timeUnit.toMillis(l2.longValue()) + "m";
            }
            if (l2.longValue() < 100000000000000000L) {
                return timeUnit.toSeconds(l2.longValue()) + "S";
            }
            if (l2.longValue() < 6000000000000000000L) {
                return timeUnit.toMinutes(l2.longValue()) + "M";
            }
            return timeUnit.toHours(l2.longValue()) + "H";
        }

        @Override // i47.d
        public Long b(String str) throws NumberFormatException {
            c50.t(str.length() > 0, "empty timeout");
            c50.t(str.length() <= 9, "bad timeout format");
            long j = Long.parseLong(str.substring(0, str.length() - 1));
            char cCharAt = str.charAt(str.length() - 1);
            if (cCharAt == 'H') {
                return Long.valueOf(TimeUnit.HOURS.toNanos(j));
            }
            if (cCharAt == 'M') {
                return Long.valueOf(TimeUnit.MINUTES.toNanos(j));
            }
            if (cCharAt == 'S') {
                return Long.valueOf(TimeUnit.SECONDS.toNanos(j));
            }
            if (cCharAt == 'u') {
                return Long.valueOf(TimeUnit.MICROSECONDS.toNanos(j));
            }
            if (cCharAt == 'm') {
                return Long.valueOf(TimeUnit.MILLISECONDS.toNanos(j));
            }
            if (cCharAt == 'n') {
                return Long.valueOf(j);
            }
            throw new IllegalArgumentException(String.format("Invalid timeout unit: %s", Character.valueOf(cCharAt)));
        }
    }

    static {
        Charset.forName("US-ASCII");
        b = i47.f.a("grpc-timeout", new h());
        i47.d<String> dVar = i47.c;
        c = i47.f.a("grpc-encoding", dVar);
        d = z37.a("grpc-accept-encoding", new f(null));
        e = i47.f.a("content-encoding", dVar);
        f = z37.a("accept-encoding", new f(null));
        g = i47.f.a("content-type", dVar);
        h = i47.f.a("te", dVar);
        i = i47.f.a("user-agent", dVar);
        jd5.c cVar = jd5.c.b;
        Objects.requireNonNull(jd5.d.b);
        TimeUnit timeUnit = TimeUnit.SECONDS;
        j = timeUnit.toNanos(20L);
        TimeUnit.HOURS.toNanos(2L);
        timeUnit.toNanos(20L);
        k = new m87();
        l = x27.a.a("io.grpc.internal.CALL_OPTIONS_RPC_OWNED_BY_BALANCER");
        m = new b();
        n = new c();
        o = new d();
    }

    public static URI a(String str) {
        c50.A(str, "authority");
        try {
            return new URI(null, str, null, null, null);
        } catch (URISyntaxException e2) {
            throw new IllegalArgumentException(jo.n("Invalid authority: ", str), e2);
        }
    }

    public static void b(InputStream inputStream) throws IOException {
        try {
            inputStream.close();
        } catch (IOException e2) {
            a.log(Level.WARNING, "exception caught in closeQuietly", (Throwable) e2);
        }
    }

    public static String c(InetSocketAddress inetSocketAddress) {
        try {
            return (String) InetSocketAddress.class.getMethod("getHostString", new Class[0]).invoke(inetSocketAddress, new Object[0]);
        } catch (IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return inetSocketAddress.getHostName();
        }
    }

    public static ThreadFactory d(String str, boolean z) {
        Boolean boolValueOf = Boolean.valueOf(z);
        String.format(Locale.ROOT, str, 0);
        return new je5(Executors.defaultThreadFactory(), str, new AtomicLong(0L), boolValueOf, null, null);
    }

    public static a67 e(c47.e eVar, boolean z) {
        c47.h hVar = eVar.a;
        a67 a67VarA = hVar != null ? ((f97) hVar.c()).a() : null;
        if (a67VarA != null) {
            e37.a aVar = eVar.b;
            return aVar == null ? a67VarA : new e(a67VarA, aVar);
        }
        if (!eVar.c.f()) {
            if (eVar.d) {
                return new n67(eVar.c, z57.a.DROPPED);
            }
            if (!z) {
                return new n67(eVar.c, z57.a.PROCESSED);
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0029  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static defpackage.x47 f(int r3) {
        /*
            r0 = 100
            if (r3 < r0) goto Lb
            r0 = 200(0xc8, float:2.8E-43)
            if (r3 >= r0) goto Lb
            x47$b r0 = x47.b.INTERNAL
            goto L37
        Lb:
            r0 = 400(0x190, float:5.6E-43)
            if (r3 == r0) goto L35
            r0 = 401(0x191, float:5.62E-43)
            if (r3 == r0) goto L32
            r0 = 403(0x193, float:5.65E-43)
            if (r3 == r0) goto L2f
            r0 = 404(0x194, float:5.66E-43)
            if (r3 == r0) goto L2c
            r0 = 429(0x1ad, float:6.01E-43)
            if (r3 == r0) goto L29
            r0 = 431(0x1af, float:6.04E-43)
            if (r3 == r0) goto L35
            switch(r3) {
                case 502: goto L29;
                case 503: goto L29;
                case 504: goto L29;
                default: goto L26;
            }
        L26:
            x47$b r0 = x47.b.UNKNOWN
            goto L37
        L29:
            x47$b r0 = x47.b.UNAVAILABLE
            goto L37
        L2c:
            x47$b r0 = x47.b.UNIMPLEMENTED
            goto L37
        L2f:
            x47$b r0 = x47.b.PERMISSION_DENIED
            goto L37
        L32:
            x47$b r0 = x47.b.UNAUTHENTICATED
            goto L37
        L35:
            x47$b r0 = x47.b.INTERNAL
        L37:
            x47 r0 = r0.i()
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "HTTP status code "
            r1.append(r2)
            r1.append(r3)
            java.lang.String r3 = r1.toString()
            x47 r3 = r0.h(r3)
            return r3
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.u67.f(int):x47");
    }
}
