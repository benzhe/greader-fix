package org.apache.commons.lang3.concurrent;

/* loaded from: classes2.dex */
public class ConcurrentException extends Exception {
    private static final long serialVersionUID = 6622707671812226130L;

    public ConcurrentException() {
    }

    public ConcurrentException(Throwable th) {
        super(ConcurrentUtils.checkedException(th));
    }

    public ConcurrentException(String str, Throwable th) {
        super(str, ConcurrentUtils.checkedException(th));
    }
}
