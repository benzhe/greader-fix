package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import java.io.InputStream;
import java.util.concurrent.atomic.AtomicReferenceArray;

/* loaded from: classes2.dex */
public final class j47<ReqT, RespT> {
    public final d a;
    public final String b;
    public final String c;
    public final c<ReqT> d;
    public final c<RespT> e;
    public final Object f;
    public final boolean g;
    public final boolean h;
    public final boolean i;

    public static final class b<ReqT, RespT> {
        public c<ReqT> a;
        public c<RespT> b;
        public d c;
        public String d;
        public boolean e;

        public b(a aVar) {
        }

        public j47<ReqT, RespT> a() {
            return new j47<>(this.c, this.d, this.a, this.b, null, false, false, this.e, null);
        }
    }

    public interface c<T> {
        T a(InputStream inputStream);

        InputStream b(T t);
    }

    public enum d {
        UNARY,
        CLIENT_STREAMING,
        SERVER_STREAMING,
        BIDI_STREAMING,
        UNKNOWN
    }

    public j47(d dVar, String str, c cVar, c cVar2, Object obj, boolean z, boolean z2, boolean z3, a aVar) {
        new AtomicReferenceArray(2);
        c50.A(dVar, NSRSS20.ENC_TYPE);
        this.a = dVar;
        c50.A(str, "fullMethodName");
        this.b = str;
        c50.A(str, "fullMethodName");
        int iLastIndexOf = str.lastIndexOf(47);
        this.c = iLastIndexOf == -1 ? null : str.substring(0, iLastIndexOf);
        c50.A(cVar, "requestMarshaller");
        this.d = cVar;
        c50.A(cVar2, "responseMarshaller");
        this.e = cVar2;
        this.f = null;
        this.g = z;
        this.h = z2;
        this.i = z3;
    }

    public static String a(String str, String str2) {
        StringBuilder sb = new StringBuilder();
        c50.A(str, "fullServiceName");
        sb.append(str);
        sb.append("/");
        c50.A(str2, "methodName");
        sb.append(str2);
        return sb.toString();
    }

    public static <ReqT, RespT> b<ReqT, RespT> b() {
        b<ReqT, RespT> bVar = new b<>(null);
        bVar.a = null;
        bVar.b = null;
        return bVar;
    }

    public InputStream c(ReqT reqt) {
        return this.d.b(reqt);
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("fullMethodName", this.b);
        nd5VarK0.d(NSRSS20.ENC_TYPE, this.a);
        nd5VarK0.c("idempotent", this.g);
        nd5VarK0.c("safe", this.h);
        nd5VarK0.c("sampledToLocalTracing", this.i);
        nd5VarK0.d("requestMarshaller", this.d);
        nd5VarK0.d("responseMarshaller", this.e);
        nd5VarK0.d("schemaDescriptor", this.f);
        nd5VarK0.d = true;
        return nd5VarK0.toString();
    }
}
