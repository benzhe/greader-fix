package defpackage;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import java.util.Iterator;
import java.util.Objects;

/* loaded from: classes.dex */
public final class fe3 extends Handler {
    public final /* synthetic */ de3 a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public fe3(de3 de3Var, Looper looper) {
        super(looper);
        this.a = de3Var;
    }

    @Override // android.os.Handler
    public final void handleMessage(Message message) {
        de3 de3Var = this.a;
        Objects.requireNonNull(de3Var);
        switch (message.what) {
            case 0:
                de3Var.m--;
                return;
            case 1:
                de3Var.k = message.arg1;
                Iterator<ae3> it = de3Var.f.iterator();
                while (it.hasNext()) {
                    it.next().c(de3Var.j, de3Var.k);
                }
                return;
            case 2:
                de3Var.n = message.arg1 != 0;
                Iterator<ae3> it2 = de3Var.f.iterator();
                while (it2.hasNext()) {
                    it2.next().i(de3Var.n);
                }
                return;
            case 3:
                if (de3Var.m == 0) {
                    bk3 bk3Var = (bk3) message.obj;
                    de3Var.i = true;
                    de3Var.q = bk3Var.a;
                    de3Var.r = bk3Var.b;
                    de3Var.b.b(bk3Var.c);
                    Iterator<ae3> it3 = de3Var.f.iterator();
                    while (it3.hasNext()) {
                        it3.next().d(de3Var.q, de3Var.r);
                    }
                    return;
                }
                return;
            case 4:
                int i = de3Var.l - 1;
                de3Var.l = i;
                if (i == 0) {
                    de3Var.t = (ge3) message.obj;
                    if (message.arg1 != 0) {
                        Iterator<ae3> it4 = de3Var.f.iterator();
                        while (it4.hasNext()) {
                            it4.next().j();
                        }
                        return;
                    }
                    return;
                }
                return;
            case 5:
                if (de3Var.l == 0) {
                    de3Var.t = (ge3) message.obj;
                    Iterator<ae3> it5 = de3Var.f.iterator();
                    while (it5.hasNext()) {
                        it5.next().j();
                    }
                    return;
                }
                return;
            case 6:
                ie3 ie3Var = (ie3) message.obj;
                de3Var.l -= ie3Var.d;
                if (de3Var.m == 0) {
                    de3Var.o = ie3Var.a;
                    de3Var.p = ie3Var.b;
                    de3Var.t = ie3Var.c;
                    Iterator<ae3> it6 = de3Var.f.iterator();
                    while (it6.hasNext()) {
                        it6.next().b(de3Var.o, de3Var.p);
                    }
                    return;
                }
                return;
            case 7:
                pe3 pe3Var = (pe3) message.obj;
                if (de3Var.s.equals(pe3Var)) {
                    return;
                }
                de3Var.s = pe3Var;
                Iterator<ae3> it7 = de3Var.f.iterator();
                while (it7.hasNext()) {
                    it7.next().a(pe3Var);
                }
                return;
            case 8:
                yd3 yd3Var = (yd3) message.obj;
                Iterator<ae3> it8 = de3Var.f.iterator();
                while (it8.hasNext()) {
                    it8.next().g(yd3Var);
                }
                return;
            default:
                throw new IllegalStateException();
        }
    }
}
