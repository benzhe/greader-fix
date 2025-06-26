package defpackage;

import defpackage.ii5;
import java.io.File;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class ri5 implements Callable<e45<Void>> {
    public final /* synthetic */ Boolean e;
    public final /* synthetic */ ii5.e f;

    public ri5(ii5.e eVar, Boolean bool) {
        this.f = eVar;
        this.e = bool;
    }

    @Override // java.util.concurrent.Callable
    public e45<Void> call() throws Exception {
        tl5 tl5Var = ii5.this.m;
        Objects.requireNonNull(tl5Var);
        ah5.a.b("Checking for crash reports...");
        File[] fileArrQ = ii5.this.q();
        File[] fileArrListFiles = ii5.this.m().listFiles();
        if (fileArrListFiles == null) {
            fileArrListFiles = new File[0];
        }
        LinkedList linkedList = new LinkedList();
        if (fileArrQ != null) {
            for (File file : fileArrQ) {
                ah5 ah5Var = ah5.a;
                StringBuilder sbZ = jo.z("Found crash report ");
                sbZ.append(file.getPath());
                ah5Var.b(sbZ.toString());
                linkedList.add(new yl5(file, Collections.emptyMap()));
            }
        }
        for (File file2 : fileArrListFiles) {
            linkedList.add(new wl5(file2));
        }
        if (linkedList.isEmpty()) {
            ah5.a.b("No reports found.");
        }
        if (this.e.booleanValue()) {
            ah5.a.b("Reports are being sent.");
            boolean zBooleanValue = this.e.booleanValue();
            bj5 bj5Var = ii5.this.b;
            Objects.requireNonNull(bj5Var);
            if (!zBooleanValue) {
                throw new IllegalStateException("An invalid data collection token was used.");
            }
            bj5Var.h.b(null);
            ii5.e eVar = this.f;
            Executor executor = ii5.this.e.a;
            return eVar.a.q(executor, new qi5(this, linkedList, zBooleanValue, executor));
        }
        ah5.a.b("Reports are being deleted.");
        for (File file3 : ii5.r(ii5.this.l(), ai5.e)) {
            file3.delete();
        }
        Objects.requireNonNull(ii5.this.m);
        Iterator it = linkedList.iterator();
        while (it.hasNext()) {
            ((xl5) it.next()).remove();
        }
        ii5.this.s.b.b();
        ii5.this.w.b(null);
        return c50.X(null);
    }
}
