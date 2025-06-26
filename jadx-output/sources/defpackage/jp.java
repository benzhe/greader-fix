package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public abstract class jp extends IOException {
    public yo e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jp(ap apVar, String str) {
        super(str);
        yo yoVarA = apVar == null ? null : apVar.a();
        this.e = yoVarA;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (message == null) {
            message = "N/A";
        }
        yo yoVar = this.e;
        if (yoVar == null) {
            return message;
        }
        StringBuilder sb = new StringBuilder(100);
        sb.append(message);
        sb.append('\n');
        sb.append(" at ");
        sb.append(yoVar.toString());
        return sb.toString();
    }

    @Override // java.lang.Throwable
    public String toString() {
        return getClass().getName() + ": " + getMessage();
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public jp(ap apVar, String str, Throwable th) {
        super(str);
        yo yoVarA = apVar == null ? null : apVar.a();
        if (th != null) {
            initCause(th);
        }
        this.e = yoVarA;
    }
}
