package defpackage;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class fl3 {
    public final List<byte[]> a;
    public final int b;
    public final float c;

    public fl3(List<byte[]> list, int i, int i2, int i3, float f) {
        this.a = list;
        this.b = i;
        this.c = f;
    }

    public static fl3 a(al3 al3Var) throws ne3 {
        int i;
        int i2;
        float f;
        try {
            al3Var.i(4);
            int iD = (al3Var.d() & 3) + 1;
            if (iD == 3) {
                throw new IllegalStateException();
            }
            ArrayList arrayList = new ArrayList();
            int iD2 = al3Var.d() & 31;
            for (int i3 = 0; i3 < iD2; i3++) {
                arrayList.add(b(al3Var));
            }
            int iD3 = al3Var.d();
            for (int i4 = 0; i4 < iD3; i4++) {
                arrayList.add(b(al3Var));
            }
            if (iD2 > 0) {
                yk3 yk3VarA = zk3.a((byte[]) arrayList.get(0), iD, ((byte[]) arrayList.get(0)).length);
                int i5 = yk3VarA.a;
                int i6 = yk3VarA.b;
                f = yk3VarA.c;
                i = i5;
                i2 = i6;
            } else {
                i = -1;
                i2 = -1;
                f = 1.0f;
            }
            return new fl3(arrayList, iD, i, i2, f);
        } catch (ArrayIndexOutOfBoundsException e) {
            throw new ne3("Error parsing AVC config", e);
        }
    }

    public static byte[] b(al3 al3Var) {
        int iE = al3Var.e();
        int i = al3Var.b;
        al3Var.i(iE);
        byte[] bArr = al3Var.a;
        byte[] bArr2 = uk3.a;
        byte[] bArr3 = new byte[bArr2.length + iE];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, iE);
        return bArr3;
    }
}
