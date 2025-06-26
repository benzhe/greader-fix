package org.apache.commons.text.lookup;

import java.net.InetAddress;
import java.net.UnknownHostException;

/* loaded from: classes2.dex */
public final class LocalHostStringLookup extends AbstractStringLookup {
    public static final LocalHostStringLookup INSTANCE = new LocalHostStringLookup();

    private LocalHostStringLookup() {
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        char c = 65535;
        try {
            int iHashCode = str.hashCode();
            if (iHashCode != -1147692044) {
                if (iHashCode != 3373707) {
                    if (iHashCode == 1339224004 && str.equals(InetAddressKeys.KEY_CANONICAL_NAME)) {
                        c = 1;
                    }
                } else if (str.equals(InetAddressKeys.KEY_NAME)) {
                    c = 0;
                }
            } else if (str.equals(InetAddressKeys.KEY_ADDRESS)) {
                c = 2;
            }
            if (c == 0) {
                return InetAddress.getLocalHost().getHostName();
            }
            if (c == 1) {
                return InetAddress.getLocalHost().getCanonicalHostName();
            }
            if (c == 2) {
                return InetAddress.getLocalHost().getHostAddress();
            }
            throw new IllegalArgumentException(str);
        } catch (UnknownHostException unused) {
            return null;
        }
    }
}
