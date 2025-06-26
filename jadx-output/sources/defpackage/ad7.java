package defpackage;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Objects;

/* loaded from: classes2.dex */
public final class ad7 implements ic7, xc7 {
    public List<ic7> e;
    public volatile boolean f;

    @Override // defpackage.xc7
    public boolean a(ic7 ic7Var) {
        if (!c(ic7Var)) {
            return false;
        }
        ((bi7) ic7Var).k();
        return true;
    }

    @Override // defpackage.xc7
    public boolean b(ic7 ic7Var) {
        if (!this.f) {
            synchronized (this) {
                if (!this.f) {
                    List linkedList = this.e;
                    if (linkedList == null) {
                        linkedList = new LinkedList();
                        this.e = linkedList;
                    }
                    linkedList.add(ic7Var);
                    return true;
                }
            }
        }
        ic7Var.k();
        return false;
    }

    @Override // defpackage.xc7
    public boolean c(ic7 ic7Var) {
        Objects.requireNonNull(ic7Var, "Disposable item is null");
        if (this.f) {
            return false;
        }
        synchronized (this) {
            if (this.f) {
                return false;
            }
            List<ic7> list = this.e;
            if (list != null && list.remove(ic7Var)) {
                return true;
            }
            return false;
        }
    }

    @Override // defpackage.ic7
    public void k() {
        if (this.f) {
            return;
        }
        synchronized (this) {
            if (this.f) {
                return;
            }
            this.f = true;
            List<ic7> list = this.e;
            ArrayList arrayList = null;
            this.e = null;
            if (list == null) {
                return;
            }
            Iterator<ic7> it = list.iterator();
            while (it.hasNext()) {
                try {
                    it.next().k();
                } catch (Throwable th) {
                    n56.r2(th);
                    if (arrayList == null) {
                        arrayList = new ArrayList();
                    }
                    arrayList.add(th);
                }
            }
            if (arrayList != null) {
                if (arrayList.size() != 1) {
                    throw new kc7(arrayList);
                }
                throw vi7.d((Throwable) arrayList.get(0));
            }
        }
    }
}
