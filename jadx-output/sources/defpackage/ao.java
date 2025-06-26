package defpackage;

/* loaded from: classes.dex */
public final class ao implements Runnable {
    public final /* synthetic */ Exception e;
    public final /* synthetic */ co f;

    public ao(co coVar, Exception exc) {
        this.f = coVar;
        this.e = exc;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String strValueOf = String.valueOf(this.e);
        StringBuilder sb = new StringBuilder(strValueOf.length() + 32);
        sb.append("Error acknowledge purchase; ex: ");
        sb.append(strValueOf);
        pr4.b("BillingClient", sb.toString());
        this.f.f.a(un.l);
    }
}
