package defpackage;

import java.util.ArrayList;
import java.util.List;
import java.util.logging.Logger;

/* loaded from: classes2.dex */
public class x97 {
    static {
        Logger.getLogger(x97.class.getName());
    }

    public static byte[][] a(List<na7> list) {
        int size = list.size() * 2;
        byte[][] bArr = new byte[size][];
        int i = 0;
        for (na7 na7Var : list) {
            int i2 = i + 1;
            bArr[i] = na7Var.a.N();
            i = i2 + 1;
            bArr[i2] = na7Var.b.N();
        }
        Logger logger = e97.a;
        int i3 = 0;
        while (i3 < size) {
            byte[] bArr2 = bArr[i3];
            int i4 = i3 + 1;
            byte[] bArr3 = bArr[i4];
            if (e97.a(bArr2, e97.b)) {
                for (byte b : bArr3) {
                    if (b == 44) {
                        ArrayList arrayList = new ArrayList(size + 10);
                        for (int i5 = 0; i5 < i3; i5++) {
                            arrayList.add(bArr[i5]);
                        }
                        while (i3 < size) {
                            byte[] bArr4 = bArr[i3];
                            byte[] bArr5 = bArr[i3 + 1];
                            if (e97.a(bArr4, e97.b)) {
                                int i6 = 0;
                                for (int i7 = 0; i7 <= bArr5.length; i7++) {
                                    if (i7 == bArr5.length || bArr5[i7] == 44) {
                                        byte[] bArrA = de5.a.a(new String(bArr5, i6, i7 - i6, kd5.a));
                                        arrayList.add(bArr4);
                                        arrayList.add(bArrA);
                                        i6 = i7 + 1;
                                    }
                                }
                            } else {
                                arrayList.add(bArr4);
                                arrayList.add(bArr5);
                            }
                            i3 += 2;
                        }
                        return (byte[][]) arrayList.toArray(new byte[0][]);
                    }
                }
                bArr[i4] = de5.a.a(new String(bArr3, kd5.a));
            }
            i3 += 2;
        }
        return bArr;
    }
}
