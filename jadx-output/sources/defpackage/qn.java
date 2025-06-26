package defpackage;

/* loaded from: classes.dex */
public final class qn implements Runnable {
    public final /* synthetic */ in e;
    public final /* synthetic */ tn f;

    public qn(tn tnVar, in inVar) {
        this.f = tnVar;
        this.e = inVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        synchronized (this.f.a) {
            gn gnVar = this.f.c;
            if (gnVar != null) {
                gnVar.a(this.e);
            }
        }
    }
}
