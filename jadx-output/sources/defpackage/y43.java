package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class y43 {
    public final byte[] a = new byte[RecyclerView.a0.FLAG_TMP_DETACHED];
    public int b;
    public int c;

    public y43(byte[] bArr) {
        for (int i = 0; i < 256; i++) {
            this.a[i] = (byte) i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < 256; i3++) {
            byte[] bArr2 = this.a;
            i2 = (i2 + bArr2[i3] + bArr[i3 % bArr.length]) & Base64.BASELENGTH;
            byte b = bArr2[i3];
            bArr2[i3] = bArr2[i2];
            bArr2[i2] = b;
        }
        this.b = 0;
        this.c = 0;
    }
}
