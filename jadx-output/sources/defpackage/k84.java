package defpackage;

import java.io.IOException;

/* loaded from: classes.dex */
public final class k84 extends IOException {
    /* JADX WARN: Illegal instructions before constructor call */
    public k84(String str, Throwable th) {
        String strValueOf = String.valueOf(str);
        super(strValueOf.length() != 0 ? "CodedOutputStream was writing to a flat byte array and ran out of space.: ".concat(strValueOf) : new String("CodedOutputStream was writing to a flat byte array and ran out of space.: "), th);
    }

    public k84(Throwable th) {
        super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
    }
}
