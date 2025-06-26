package defpackage;

import java.io.IOException;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicLongArray;

/* loaded from: classes.dex */
public class nd6 extends de6<AtomicLongArray> {
    public final /* synthetic */ de6 a;

    public nd6(de6 de6Var) {
        this.a = de6Var;
    }

    @Override // defpackage.de6
    public AtomicLongArray a(eg6 eg6Var) throws IOException {
        ArrayList arrayList = new ArrayList();
        eg6Var.a();
        while (eg6Var.m()) {
            arrayList.add(Long.valueOf(((Number) this.a.a(eg6Var)).longValue()));
        }
        eg6Var.f();
        int size = arrayList.size();
        AtomicLongArray atomicLongArray = new AtomicLongArray(size);
        for (int i = 0; i < size; i++) {
            atomicLongArray.set(i, ((Long) arrayList.get(i)).longValue());
        }
        return atomicLongArray;
    }

    @Override // defpackage.de6
    public void b(gg6 gg6Var, AtomicLongArray atomicLongArray) throws IOException {
        AtomicLongArray atomicLongArray2 = atomicLongArray;
        gg6Var.b();
        int length = atomicLongArray2.length();
        for (int i = 0; i < length; i++) {
            this.a.b(gg6Var, Long.valueOf(atomicLongArray2.get(i)));
        }
        gg6Var.f();
    }
}
