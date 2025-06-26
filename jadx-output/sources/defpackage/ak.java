package defpackage;

/* loaded from: classes.dex */
public enum ak {
    ENQUEUED,
    RUNNING,
    SUCCEEDED,
    FAILED,
    BLOCKED,
    CANCELLED;

    public boolean i() {
        return this == SUCCEEDED || this == FAILED || this == CANCELLED;
    }
}
