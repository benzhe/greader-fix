package defpackage;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class gx2 {
    public static final CopyOnWriteArrayList<cx2> a = new CopyOnWriteArrayList<>();

    public static cx2 a(String str) throws GeneralSecurityException {
        Iterator<cx2> it = a.iterator();
        while (it.hasNext()) {
            cx2 next = it.next();
            if (next.a(str)) {
                return next;
            }
        }
        String strValueOf = String.valueOf(str);
        throw new GeneralSecurityException(strValueOf.length() != 0 ? "No KMS client does support: ".concat(strValueOf) : new String("No KMS client does support: "));
    }
}
