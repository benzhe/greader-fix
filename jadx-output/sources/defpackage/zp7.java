package defpackage;

import java.util.concurrent.CancellationException;

/* loaded from: classes2.dex */
public final class zp7 extends CancellationException implements zo7<zp7> {
    public final yp7 e;

    public zp7(String str, Throwable th, yp7 yp7Var) {
        super(str);
        this.e = yp7Var;
        if (th != null) {
            initCause(th);
        }
    }

    @Override // defpackage.zo7
    public Throwable a() {
        if (!fp7.a) {
            return null;
        }
        String message = getMessage();
        im7.c(message);
        return new zp7(message, this, this.e);
    }

    public boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof zp7) {
                zp7 zp7Var = (zp7) obj;
                if (!im7.a(zp7Var.getMessage(), getMessage()) || !im7.a(zp7Var.e, this.e) || !im7.a(zp7Var.getCause(), getCause())) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        if (fp7.a) {
            return super.fillInStackTrace();
        }
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    public int hashCode() {
        String message = getMessage();
        im7.c(message);
        int iHashCode = (this.e.hashCode() + (message.hashCode() * 31)) * 31;
        Throwable cause = getCause();
        return iHashCode + (cause != null ? cause.hashCode() : 0);
    }

    @Override // java.lang.Throwable
    public String toString() {
        return super.toString() + "; job=" + this.e;
    }
}
