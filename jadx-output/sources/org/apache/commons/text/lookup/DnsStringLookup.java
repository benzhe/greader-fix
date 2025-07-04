package org.apache.commons.text.lookup;

/* loaded from: classes2.dex */
public final class DnsStringLookup extends AbstractStringLookup {
    public static final DnsStringLookup INSTANCE = new DnsStringLookup();

    private DnsStringLookup() {
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0057  */
    @Override // org.apache.commons.text.lookup.StringLookup
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String lookup(java.lang.String r9) throws java.net.UnknownHostException {
        /*
            r8 = this;
            r0 = 0
            if (r9 != 0) goto L4
            return r0
        L4:
            java.lang.String r1 = r9.trim()
            java.lang.String r2 = "\\|"
            java.lang.String[] r1 = r1.split(r2)
            int r2 = r1.length
            r3 = 0
            r4 = r1[r3]
            java.lang.String r4 = r4.trim()
            r5 = 1
            r6 = 2
            if (r2 >= r6) goto L1b
            goto L21
        L1b:
            r9 = r1[r5]
            java.lang.String r9 = r9.trim()
        L21:
            java.net.InetAddress r9 = java.net.InetAddress.getByName(r9)     // Catch: java.net.UnknownHostException -> L72
            r1 = -1
            int r2 = r4.hashCode()     // Catch: java.net.UnknownHostException -> L72
            r7 = -1147692044(0xffffffffbb979bf4, float:-0.0046267454)
            if (r2 == r7) goto L4d
            r7 = 3373707(0x337a8b, float:4.72757E-39)
            if (r2 == r7) goto L44
            r3 = 1339224004(0x4fd2efc4, float:7.0778573E9)
            if (r2 == r3) goto L3a
            goto L57
        L3a:
            java.lang.String r2 = "canonical-name"
            boolean r2 = r4.equals(r2)     // Catch: java.net.UnknownHostException -> L72
            if (r2 == 0) goto L57
            r3 = 1
            goto L58
        L44:
            java.lang.String r2 = "name"
            boolean r2 = r4.equals(r2)     // Catch: java.net.UnknownHostException -> L72
            if (r2 == 0) goto L57
            goto L58
        L4d:
            java.lang.String r2 = "address"
            boolean r2 = r4.equals(r2)     // Catch: java.net.UnknownHostException -> L72
            if (r2 == 0) goto L57
            r3 = 2
            goto L58
        L57:
            r3 = -1
        L58:
            if (r3 == 0) goto L6d
            if (r3 == r5) goto L68
            if (r3 == r6) goto L63
            java.lang.String r9 = r9.getHostAddress()     // Catch: java.net.UnknownHostException -> L72
            return r9
        L63:
            java.lang.String r9 = r9.getHostAddress()     // Catch: java.net.UnknownHostException -> L72
            return r9
        L68:
            java.lang.String r9 = r9.getCanonicalHostName()     // Catch: java.net.UnknownHostException -> L72
            return r9
        L6d:
            java.lang.String r9 = r9.getHostName()     // Catch: java.net.UnknownHostException -> L72
            return r9
        L72:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.text.lookup.DnsStringLookup.lookup(java.lang.String):java.lang.String");
    }
}
