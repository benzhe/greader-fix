package defpackage;

import androidx.work.WorkerParameters;

/* loaded from: classes.dex */
public class rm implements Runnable {
    public nk e;
    public String f;
    public WorkerParameters.a g;

    public rm(nk nkVar, String str, WorkerParameters.a aVar) {
        this.e = nkVar;
        this.f = str;
        this.g = aVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.e.f.b(this.f, this.g);
    }
}
