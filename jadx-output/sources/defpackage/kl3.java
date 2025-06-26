package defpackage;

import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class kl3 {
    public final List<byte[]> a;
    public final int b;

    public kl3(List<byte[]> list, int i) {
        this.a = list;
        this.b = i;
    }

    public static kl3 a(al3 al3Var) throws ne3 {
        try {
            al3Var.i(21);
            int iD = al3Var.d() & 3;
            int iD2 = al3Var.d();
            int i = al3Var.b;
            int i2 = 0;
            for (int i3 = 0; i3 < iD2; i3++) {
                al3Var.i(1);
                int iE = al3Var.e();
                for (int i4 = 0; i4 < iE; i4++) {
                    int iE2 = al3Var.e();
                    i2 += iE2 + 4;
                    al3Var.i(iE2);
                }
            }
            al3Var.h(i);
            byte[] bArr = new byte[i2];
            int i5 = 0;
            for (int i6 = 0; i6 < iD2; i6++) {
                al3Var.i(1);
                int iE3 = al3Var.e();
                for (int i7 = 0; i7 < iE3; i7++) {
                    int iE4 = al3Var.e();
                    byte[] bArr2 = zk3.a;
                    System.arraycopy(bArr2, 0, bArr, i5, bArr2.length);
                    int length = i5 + bArr2.length;
                    System.arraycopy(al3Var.a, al3Var.b, bArr, length, iE4);
                    i5 = length + iE4;
                    al3Var.i(iE4);
                }
            }
            return new kl3(i2 == 0 ? null : Collections.singletonList(bArr), iD + 1);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ne3("Error parsing HEVC config", e);
        }
    }
}
