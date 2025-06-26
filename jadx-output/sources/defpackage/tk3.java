package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class tk3 extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    public tk3(Throwable th) {
        String simpleName = th.getClass().getSimpleName();
        String message = th.getMessage();
        super(jo.d(jo.x(message, simpleName.length() + 13), "Unexpected ", simpleName, ": ", message), th);
    }
}
