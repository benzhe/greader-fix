package defpackage;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.apache.commons.text.lookup.AbstractStringLookup;

/* loaded from: classes2.dex */
public final class h17 {
    public final String a;
    public final int b;
    public final List<String> c;
    public final String d;

    public static final class b {
        public String a;
        public String b;
        public int c = -1;
        public final List<String> d;

        public b() {
            ArrayList arrayList = new ArrayList();
            this.d = arrayList;
            arrayList.add("");
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(this.a);
            sb.append("://");
            if (this.b.indexOf(58) != -1) {
                sb.append('[');
                sb.append(this.b);
                sb.append(']');
            } else {
                sb.append(this.b);
            }
            int iB = this.c;
            if (iB == -1) {
                iB = h17.b(this.a);
            }
            if (iB != h17.b(this.a)) {
                sb.append(AbstractStringLookup.SPLIT_CH);
                sb.append(iB);
            }
            List<String> list = this.d;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                sb.append('/');
                sb.append(list.get(i));
            }
            return sb.toString();
        }
    }

    public h17(b bVar, a aVar) {
        c("", 0, 0, false);
        c("", 0, 0, false);
        this.a = bVar.b;
        int i = bVar.c;
        this.b = i == -1 ? b(bVar.a) : i;
        this.c = d(bVar.d, false);
        this.d = bVar.toString();
    }

    public static int a(char c) {
        if (c >= '0' && c <= '9') {
            return c - '0';
        }
        char c2 = 'a';
        if (c < 'a' || c > 'f') {
            c2 = 'A';
            if (c < 'A' || c > 'F') {
                return -1;
            }
        }
        return (c - c2) + 10;
    }

    public static int b(String str) {
        if (str.equals("http")) {
            return 80;
        }
        return str.equals("https") ? 443 : -1;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0052  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String c(java.lang.String r8, int r9, int r10, boolean r11) {
        /*
            r0 = r9
        L1:
            if (r0 >= r10) goto L60
            char r1 = r8.charAt(r0)
            r2 = 43
            r3 = 37
            if (r1 == r3) goto L15
            if (r1 != r2) goto L12
            if (r11 == 0) goto L12
            goto L15
        L12:
            int r0 = r0 + 1
            goto L1
        L15:
            xs7 r1 = new xs7
            r1.<init>()
            r1.m0(r8, r9, r0)
        L1d:
            if (r0 >= r10) goto L5b
            int r9 = r8.codePointAt(r0)
            if (r9 != r3) goto L48
            int r4 = r0 + 2
            if (r4 >= r10) goto L48
            int r5 = r0 + 1
            char r5 = r8.charAt(r5)
            int r5 = a(r5)
            char r6 = r8.charAt(r4)
            int r6 = a(r6)
            r7 = -1
            if (r5 == r7) goto L52
            if (r6 == r7) goto L52
            int r0 = r5 << 4
            int r0 = r0 + r6
            r1.Q(r0)
            r0 = r4
            goto L55
        L48:
            if (r9 != r2) goto L52
            if (r11 == 0) goto L52
            r4 = 32
            r1.Q(r4)
            goto L55
        L52:
            r1.p0(r9)
        L55:
            int r9 = java.lang.Character.charCount(r9)
            int r0 = r0 + r9
            goto L1d
        L5b:
            java.lang.String r8 = r1.t()
            return r8
        L60:
            java.lang.String r8 = r8.substring(r9, r10)
            return r8
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.h17.c(java.lang.String, int, int, boolean):java.lang.String");
    }

    public final List<String> d(List<String> list, boolean z) {
        ArrayList arrayList = new ArrayList(list.size());
        Iterator<String> it = list.iterator();
        while (it.hasNext()) {
            String next = it.next();
            arrayList.add(next != null ? c(next, 0, next.length(), z) : null);
        }
        return Collections.unmodifiableList(arrayList);
    }

    public boolean equals(Object obj) {
        return (obj instanceof h17) && ((h17) obj).d.equals(this.d);
    }

    public int hashCode() {
        return this.d.hashCode();
    }

    public String toString() {
        return this.d;
    }
}
