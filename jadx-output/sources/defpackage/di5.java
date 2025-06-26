package defpackage;

import defpackage.ii5;
import java.io.File;
import java.util.HashSet;
import java.util.Objects;

/* loaded from: classes.dex */
public class di5 implements Runnable {
    public final /* synthetic */ ii5 e;

    public di5(ii5 ii5Var) {
        this.e = ii5Var;
    }

    @Override // java.lang.Runnable
    public void run() {
        ii5 ii5Var = this.e;
        File[] fileArrR = ii5.r(ii5Var.l(), new ii5.i());
        Objects.requireNonNull(ii5Var);
        HashSet hashSet = new HashSet();
        for (File file : fileArrR) {
            ah5.a.b("Found invalid session part file: " + file);
            hashSet.add(ii5.o(file));
        }
        if (hashSet.isEmpty()) {
            return;
        }
        for (File file2 : ii5.r(ii5Var.l(), new ei5(ii5Var, hashSet))) {
            ah5.a.b("Deleting invalid session file: " + file2);
            file2.delete();
        }
    }
}
