package defpackage;

import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public final class ua3 extends va3 {
    public Logger a;

    public ua3(String str) {
        this.a = Logger.getLogger(str);
    }

    @Override // defpackage.va3
    public final void a(String str) {
        this.a.logp(Level.FINE, "com.googlecode.mp4parser.util.JuliLogger", "logDebug", str);
    }
}
