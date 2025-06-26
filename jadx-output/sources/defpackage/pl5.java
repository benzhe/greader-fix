package defpackage;

import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class pl5 {
    public final byte[] a;
    public volatile int b = 0;

    public pl5(byte[] bArr) {
        this.a = bArr;
    }

    public static pl5 a(String str) {
        try {
            return new pl5(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof pl5)) {
            return false;
        }
        byte[] bArr = this.a;
        int length = bArr.length;
        byte[] bArr2 = ((pl5) obj).a;
        if (length != bArr2.length) {
            return false;
        }
        for (int i = 0; i < length; i++) {
            if (bArr[i] != bArr2[i]) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        int i = this.b;
        if (i == 0) {
            byte[] bArr = this.a;
            int length = bArr.length;
            for (byte b : bArr) {
                length = (length * 31) + b;
            }
            i = length == 0 ? 1 : length;
            this.b = i;
        }
        return i;
    }
}
