package defpackage;

import java.io.Closeable;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class qd {
    public final HashMap<String, nd> a = new HashMap<>();

    public final void a() {
        for (nd ndVar : this.a.values()) {
            Map<String, Object> map = ndVar.a;
            if (map != null) {
                synchronized (map) {
                    for (Object obj : ndVar.a.values()) {
                        if (obj instanceof Closeable) {
                            try {
                                ((Closeable) obj).close();
                            } catch (IOException e) {
                                throw new RuntimeException(e);
                            }
                        }
                    }
                }
            }
            ndVar.a();
        }
        this.a.clear();
    }
}
