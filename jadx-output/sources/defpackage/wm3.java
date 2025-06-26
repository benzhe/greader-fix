package defpackage;

import com.google.android.gms.ads.internal.zzr;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

/* loaded from: classes.dex */
public final class wm3 {
    public int b;
    public final Object a = new Object();
    public List<tm3> c = new LinkedList();

    public final boolean a(tm3 tm3Var) {
        synchronized (this.a) {
            Iterator<tm3> it = this.c.iterator();
            while (it.hasNext()) {
                tm3 next = it.next();
                if (zzr.zzkz().f().zzzb()) {
                    if (!zzr.zzkz().f().zzzd() && tm3Var != next && next.q.equals(tm3Var.q)) {
                        it.remove();
                        return true;
                    }
                } else if (tm3Var != next && next.o.equals(tm3Var.o)) {
                    it.remove();
                    return true;
                }
            }
            return false;
        }
    }

    public final void b(tm3 tm3Var) {
        synchronized (this.a) {
            if (this.c.size() >= 10) {
                int size = this.c.size();
                StringBuilder sb = new StringBuilder(41);
                sb.append("Queue is full, current size = ");
                sb.append(size);
                is0.zzdz(sb.toString());
                this.c.remove(0);
            }
            int i = this.b;
            this.b = i + 1;
            tm3Var.l = i;
            synchronized (tm3Var.g) {
                int i2 = tm3Var.d ? tm3Var.b : (tm3Var.k * tm3Var.a) + (tm3Var.l * tm3Var.b);
                if (i2 > tm3Var.n) {
                    tm3Var.n = i2;
                }
            }
            this.c.add(tm3Var);
        }
    }
}
