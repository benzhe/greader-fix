package defpackage;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

/* loaded from: classes.dex */
public final class bs implements Object<Executor> {

    public static final class a {
        public static final bs a = new bs();
    }

    public Object get() {
        return new cs(Executors.newSingleThreadExecutor());
    }
}
