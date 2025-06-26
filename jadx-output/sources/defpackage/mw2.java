package defpackage;

import java.util.concurrent.TimeoutException;

/* loaded from: classes.dex */
public final class mw2 extends TimeoutException {
    public mw2(String str, kw2 kw2Var) {
        super(str);
    }

    @Override // java.lang.Throwable
    public final synchronized Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }
}
