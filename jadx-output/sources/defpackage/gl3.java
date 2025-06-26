package defpackage;

import java.util.concurrent.ThreadFactory;

/* loaded from: classes.dex */
public final class gl3 implements ThreadFactory {
    public final /* synthetic */ String e;

    public gl3(String str) {
        this.e = str;
    }

    @Override // java.util.concurrent.ThreadFactory
    public final Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.e);
    }
}
