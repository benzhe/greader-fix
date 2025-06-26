package defpackage;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.util.Arrays;

/* loaded from: classes2.dex */
public final class u37 extends s47 {
    public static final /* synthetic */ int i = 0;
    public final SocketAddress e;
    public final InetSocketAddress f;
    public final String g;
    public final String h;

    public u37(SocketAddress socketAddress, InetSocketAddress inetSocketAddress, String str, String str2, a aVar) {
        c50.A(socketAddress, "proxyAddress");
        c50.A(inetSocketAddress, "targetAddress");
        if (socketAddress instanceof InetSocketAddress) {
            c50.F(!((InetSocketAddress) socketAddress).isUnresolved(), "The proxy address %s is not resolved", socketAddress);
        }
        this.e = socketAddress;
        this.f = inetSocketAddress;
        this.g = str;
        this.h = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof u37)) {
            return false;
        }
        u37 u37Var = (u37) obj;
        return c50.T(this.e, u37Var.e) && c50.T(this.f, u37Var.f) && c50.T(this.g, u37Var.g) && c50.T(this.h, u37Var.h);
    }

    public int hashCode() {
        return Arrays.hashCode(new Object[]{this.e, this.f, this.g, this.h});
    }

    public String toString() {
        nd5 nd5VarK0 = c50.K0(this);
        nd5VarK0.d("proxyAddr", this.e);
        nd5VarK0.d("targetAddr", this.f);
        nd5VarK0.d("username", this.g);
        nd5VarK0.c("hasPassword", this.h != null);
        return nd5VarK0.toString();
    }
}
