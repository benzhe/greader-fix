package defpackage;

import java.io.Closeable;
import java.net.SocketAddress;
import java.util.Arrays;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes2.dex */
public interface b67 extends Closeable {

    public static final class a {
        public String a = "unknown-authority";
        public v27 b = v27.b;
        public String c;
        public u37 d;

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return this.a.equals(aVar.a) && this.b.equals(aVar.b) && c50.T(this.c, aVar.c) && c50.T(this.d, aVar.d);
        }

        public int hashCode() {
            return Arrays.hashCode(new Object[]{this.a, this.b, this.c, this.d});
        }
    }

    d67 Y(SocketAddress socketAddress, a aVar, z27 z27Var);

    @Override // java.io.Closeable, java.lang.AutoCloseable
    void close();

    ScheduledExecutorService x0();
}
