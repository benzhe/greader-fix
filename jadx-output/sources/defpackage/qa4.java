package defpackage;

import java.util.Collections;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class qa4 extends xa4 {
    public qa4(int i) {
        super(i);
    }

    @Override // defpackage.xa4
    public final void a() {
        if (!this.h) {
            for (int i = 0; i < b(); i++) {
                Map.Entry entryC = c(i);
                if (((t84) entryC.getKey()).c()) {
                    entryC.setValue(Collections.unmodifiableList((List) entryC.getValue()));
                }
            }
            for (Map.Entry entry : this.g.isEmpty() ? ta4.b : this.g.entrySet()) {
                if (((t84) entry.getKey()).c()) {
                    entry.setValue(Collections.unmodifiableList((List) entry.getValue()));
                }
            }
        }
        super.a();
    }
}
