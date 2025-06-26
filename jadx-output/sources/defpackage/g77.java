package defpackage;

import defpackage.d77;
import java.net.SocketAddress;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes2.dex */
public class g77 implements Runnable {
    public final /* synthetic */ List e;
    public final /* synthetic */ d77 f;

    public g77(d77 d77Var, List list) {
        this.f = d77Var;
        this.e = list;
    }

    @Override // java.lang.Runnable
    public void run() {
        i37 i37Var = i37.READY;
        List<q37> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(this.e));
        SocketAddress socketAddressA = this.f.l.a();
        d77.f fVar = this.f.l;
        fVar.a = listUnmodifiableList;
        fVar.b();
        this.f.m = listUnmodifiableList;
        c87 c87Var = null;
        if (this.f.u.a == i37Var || this.f.u.a == i37.CONNECTING) {
            d77.f fVar2 = this.f.l;
            boolean z = false;
            int i = 0;
            while (true) {
                if (i < fVar2.a.size()) {
                    int iIndexOf = fVar2.a.get(i).a.indexOf(socketAddressA);
                    if (iIndexOf != -1) {
                        fVar2.b = i;
                        fVar2.c = iIndexOf;
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    break;
                }
            }
            if (!z) {
                if (this.f.u.a == i37Var) {
                    c87 c87Var2 = this.f.t;
                    this.f.t = null;
                    this.f.l.b();
                    d77.h(this.f, i37.IDLE);
                    c87Var = c87Var2;
                } else {
                    d77 d77Var = this.f;
                    d67 d67Var = d77Var.s;
                    d77Var.s = null;
                    d77Var.l.b();
                    d77.i(this.f);
                    c87Var = d67Var;
                }
            }
        }
        if (c87Var != null) {
            c87Var.b(x47.n.h("InternalSubchannel closed transport due to address change"));
        }
    }
}
