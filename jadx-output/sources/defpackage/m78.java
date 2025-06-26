package defpackage;

import java.util.Iterator;
import java.util.ServiceConfigurationError;
import java.util.ServiceLoader;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes2.dex */
public abstract class m78 {
    public static final AtomicBoolean a = new AtomicBoolean(false);
    public static final AtomicReference<m78> b = new AtomicReference<>();

    public static class a extends m78 {
        @Override // defpackage.m78
        public void a() {
            Iterator it = ServiceLoader.load(n78.class, n78.class.getClassLoader()).iterator();
            while (it.hasNext()) {
                try {
                    n78.d((n78) it.next());
                } catch (ServiceConfigurationError e) {
                    if (!(e.getCause() instanceof SecurityException)) {
                        throw e;
                    }
                }
            }
        }
    }

    public abstract void a();
}
