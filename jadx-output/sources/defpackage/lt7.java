package defpackage;

import java.io.IOException;
import java.util.List;
import java.util.RandomAccess;

/* loaded from: classes2.dex */
public final class lt7 extends bk7<bt7> implements RandomAccess {
    public static final a g = new a(null);
    public final bt7[] e;
    public final int[] f;

    public static final class a {
        public a(gm7 gm7Var) {
        }

        public final void a(long j, xs7 xs7Var, int i, List<? extends bt7> list, int i2, int i3, List<Integer> list2) throws IOException {
            int i4;
            int i5;
            int i6;
            int i7;
            xs7 xs7Var2;
            int i8 = i;
            if (!(i2 < i3)) {
                throw new IllegalArgumentException("Failed requirement.".toString());
            }
            for (int i9 = i2; i9 < i3; i9++) {
                if (!(list.get(i9).t() >= i8)) {
                    throw new IllegalArgumentException("Failed requirement.".toString());
                }
            }
            bt7 bt7Var = list.get(i2);
            bt7 bt7Var2 = list.get(i3 - 1);
            if (i8 == bt7Var.t()) {
                int iIntValue = list2.get(i2).intValue();
                int i10 = i2 + 1;
                bt7 bt7Var3 = list.get(i10);
                i4 = i10;
                i5 = iIntValue;
                bt7Var = bt7Var3;
            } else {
                i4 = i2;
                i5 = -1;
            }
            if (bt7Var.y(i8) == bt7Var2.y(i8)) {
                int iMin = Math.min(bt7Var.t(), bt7Var2.t());
                int i11 = 0;
                for (int i12 = i8; i12 < iMin && bt7Var.y(i12) == bt7Var2.y(i12); i12++) {
                    i11++;
                }
                long jB = b(xs7Var) + j + 2 + i11 + 1;
                xs7Var.a0(-i11);
                xs7Var.a0(i5);
                int i13 = i8 + i11;
                while (i8 < i13) {
                    xs7Var.a0(bt7Var.y(i8) & 255);
                    i8++;
                }
                if (i4 + 1 == i3) {
                    if (!(i13 == list.get(i4).t())) {
                        throw new IllegalStateException("Check failed.".toString());
                    }
                    xs7Var.a0(list2.get(i4).intValue());
                    return;
                } else {
                    xs7 xs7Var3 = new xs7();
                    xs7Var.a0(((int) (b(xs7Var3) + jB)) * (-1));
                    a(jB, xs7Var3, i13, list, i4, i3, list2);
                    xs7Var.b0(xs7Var3);
                    return;
                }
            }
            int i14 = 1;
            for (int i15 = i4 + 1; i15 < i3; i15++) {
                if (list.get(i15 - 1).y(i8) != list.get(i15).y(i8)) {
                    i14++;
                }
            }
            long jB2 = b(xs7Var) + j + 2 + (i14 * 2);
            xs7Var.a0(i14);
            xs7Var.a0(i5);
            for (int i16 = i4; i16 < i3; i16++) {
                byte bY = list.get(i16).y(i8);
                if (i16 == i4 || bY != list.get(i16 - 1).y(i8)) {
                    xs7Var.a0(bY & 255);
                }
            }
            xs7 xs7Var4 = new xs7();
            while (i4 < i3) {
                byte bY2 = list.get(i4).y(i8);
                int i17 = i4 + 1;
                int i18 = i17;
                while (true) {
                    if (i18 >= i3) {
                        i6 = i3;
                        break;
                    } else {
                        if (bY2 != list.get(i18).y(i8)) {
                            i6 = i18;
                            break;
                        }
                        i18++;
                    }
                }
                if (i17 == i6 && i8 + 1 == list.get(i4).t()) {
                    xs7Var.a0(list2.get(i4).intValue());
                    i7 = i6;
                    xs7Var2 = xs7Var4;
                } else {
                    xs7Var.a0(((int) (b(xs7Var4) + jB2)) * (-1));
                    i7 = i6;
                    xs7Var2 = xs7Var4;
                    a(jB2, xs7Var4, i8 + 1, list, i4, i6, list2);
                }
                xs7Var4 = xs7Var2;
                i4 = i7;
            }
            xs7Var.b0(xs7Var4);
        }

        public final long b(xs7 xs7Var) {
            return xs7Var.f / 4;
        }

        /* JADX WARN: Code restructure failed: missing block: B:87:0x018d, code lost:
        
            continue;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public final defpackage.lt7 c(defpackage.bt7... r15) throws java.io.IOException {
            /*
                Method dump skipped, instructions count: 478
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: lt7.a.c(bt7[]):lt7");
        }
    }

    public lt7(bt7[] bt7VarArr, int[] iArr, gm7 gm7Var) {
        this.e = bt7VarArr;
        this.f = iArr;
    }

    @Override // defpackage.ak7, java.util.Collection
    public final /* bridge */ boolean contains(Object obj) {
        if (obj instanceof bt7) {
            return super.contains((bt7) obj);
        }
        return false;
    }

    @Override // defpackage.ak7
    public int d() {
        return this.e.length;
    }

    @Override // defpackage.bk7, java.util.List
    public Object get(int i) {
        return this.e[i];
    }

    @Override // defpackage.bk7, java.util.List
    public final /* bridge */ int indexOf(Object obj) {
        if (obj instanceof bt7) {
            return super.indexOf((bt7) obj);
        }
        return -1;
    }

    @Override // defpackage.bk7, java.util.List
    public final /* bridge */ int lastIndexOf(Object obj) {
        if (obj instanceof bt7) {
            return super.lastIndexOf((bt7) obj);
        }
        return -1;
    }
}
