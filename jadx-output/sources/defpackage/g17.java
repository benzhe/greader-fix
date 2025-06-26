package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes2.dex */
public final class g17 {
    public final String[] a;

    public static final class b {
        public final List<String> a = new ArrayList(20);
    }

    public g17(b bVar, a aVar) {
        List<String> list = bVar.a;
        this.a = (String[]) list.toArray(new String[list.size()]);
    }

    public String a(int i) {
        int i2 = (i * 2) + 1;
        if (i2 < 0) {
            return null;
        }
        String[] strArr = this.a;
        if (i2 >= strArr.length) {
            return null;
        }
        return strArr[i2];
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String toString() {
        /*
            r6 = this;
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String[] r1 = r6.a
            int r1 = r1.length
            int r1 = r1 / 2
            r2 = 0
        Lb:
            if (r2 >= r1) goto L32
            int r3 = r2 * 2
            if (r3 < 0) goto L1a
            java.lang.String[] r4 = r6.a
            int r5 = r4.length
            if (r3 < r5) goto L17
            goto L1a
        L17:
            r3 = r4[r3]
            goto L1b
        L1a:
            r3 = 0
        L1b:
            r0.append(r3)
            java.lang.String r3 = ": "
            r0.append(r3)
            java.lang.String r3 = r6.a(r2)
            r0.append(r3)
            java.lang.String r3 = "\n"
            r0.append(r3)
            int r2 = r2 + 1
            goto Lb
        L32:
            java.lang.String r0 = r0.toString()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.g17.toString():java.lang.String");
    }
}
