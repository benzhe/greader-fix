package defpackage;

import defpackage.v27;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public final class q37 {
    public static final v27.c<String> d = new v27.c<>("io.grpc.EquivalentAddressGroup.authorityOverride");
    public final List<SocketAddress> a;
    public final v27 b;
    public final int c;

    public q37(List<SocketAddress> list, v27 v27Var) {
        c50.t(!list.isEmpty(), "addrs is empty");
        List<SocketAddress> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        this.a = listUnmodifiableList;
        c50.A(v27Var, "attrs");
        this.b = v27Var;
        this.c = listUnmodifiableList.hashCode();
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof q37)) {
            return false;
        }
        q37 q37Var = (q37) obj;
        if (this.a.size() != q37Var.a.size()) {
            return false;
        }
        for (int i = 0; i < this.a.size(); i++) {
            if (!this.a.get(i).equals(q37Var.a.get(i))) {
                return false;
            }
        }
        return this.b.equals(q37Var.b);
    }

    public int hashCode() {
        return this.c;
    }

    public String toString() {
        StringBuilder sbZ = jo.z("[");
        sbZ.append(this.a);
        sbZ.append("/");
        sbZ.append(this.b);
        sbZ.append("]");
        return sbZ.toString();
    }
}
