package defpackage;

import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import defpackage.v37;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class w37 {
    public final String a;
    public final a b;
    public final long c;
    public final x37 d;
    public final x37 e;

    public enum a {
        CT_UNKNOWN,
        CT_INFO,
        CT_WARNING,
        CT_ERROR
    }

    public w37(String str, a aVar, long j, x37 x37Var, x37 x37Var2, v37.a aVar2) {
        this.a = str;
        c50.A(aVar, "severity");
        this.b = aVar;
        this.c = j;
        this.d = null;
        this.e = x37Var2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof w37)) {
            return false;
        }
        w37 w37Var = (w37) obj;
        return c50.T(this.a, w37Var.a) && c50.T(this.b, w37Var.b) && this.c == w37Var.c && c50.T(this.d, w37Var.d) && c50.T(this.e, w37Var.e);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.a, this.b, Long.valueOf(this.c), this.d, this.e});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d(NSRSS20.DESCR, this.a);
        nd5VarK0.d("severity", this.b);
        nd5VarK0.b("timestampNanos", this.c);
        nd5VarK0.d("channelRef", this.d);
        nd5VarK0.d("subchannelRef", this.e);
        return nd5VarK0.toString();
    }
}
