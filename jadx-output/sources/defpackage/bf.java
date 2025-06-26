package defpackage;

import android.graphics.Color;
import defpackage.cf;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.PriorityQueue;

/* loaded from: classes.dex */
public final class bf {
    public static final Comparator<b> f = new a();
    public final int[] a;
    public final int[] b;
    public final List<cf.c> c;
    public final cf.b[] d;
    public final float[] e = new float[3];

    public static class a implements Comparator<b> {
        @Override // java.util.Comparator
        public int compare(b bVar, b bVar2) {
            return bVar2.b() - bVar.b();
        }
    }

    public class b {
        public int a;
        public int b;
        public int c;
        public int d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;

        public b(int i, int i2) {
            this.a = i;
            this.b = i2;
            a();
        }

        public final void a() {
            bf bfVar = bf.this;
            int[] iArr = bfVar.a;
            int[] iArr2 = bfVar.b;
            int i = Integer.MAX_VALUE;
            int i2 = Integer.MAX_VALUE;
            int i3 = Integer.MAX_VALUE;
            int i4 = Integer.MIN_VALUE;
            int i5 = Integer.MIN_VALUE;
            int i6 = Integer.MIN_VALUE;
            int i7 = 0;
            for (int i8 = this.a; i8 <= this.b; i8++) {
                int i9 = iArr[i8];
                i7 += iArr2[i9];
                int i10 = (i9 >> 10) & 31;
                int i11 = (i9 >> 5) & 31;
                int i12 = i9 & 31;
                if (i10 > i4) {
                    i4 = i10;
                }
                if (i10 < i) {
                    i = i10;
                }
                if (i11 > i5) {
                    i5 = i11;
                }
                if (i11 < i2) {
                    i2 = i11;
                }
                if (i12 > i6) {
                    i6 = i12;
                }
                if (i12 < i3) {
                    i3 = i12;
                }
            }
            this.d = i;
            this.e = i4;
            this.f = i2;
            this.g = i5;
            this.h = i3;
            this.i = i6;
            this.c = i7;
        }

        public final int b() {
            return ((this.i - this.h) + 1) * ((this.g - this.f) + 1) * ((this.e - this.d) + 1);
        }
    }

    public bf(int[] iArr, int i, cf.b[] bVarArr) {
        b bVar;
        int iMin;
        this.d = bVarArr;
        int[] iArr2 = new int[32768];
        this.b = iArr2;
        for (int i2 = 0; i2 < iArr.length; i2++) {
            int i3 = iArr[i2];
            int iC = c(Color.blue(i3), 8, 5) | (c(Color.red(i3), 8, 5) << 10) | (c(Color.green(i3), 8, 5) << 5);
            iArr[i2] = iC;
            iArr2[iC] = iArr2[iC] + 1;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < 32768; i5++) {
            if (iArr2[i5] > 0) {
                int iA = a((i5 >> 10) & 31, (i5 >> 5) & 31, i5 & 31);
                float[] fArr = this.e;
                ThreadLocal<double[]> threadLocal = d8.a;
                d8.a(Color.red(iA), Color.green(iA), Color.blue(iA), fArr);
                if (d(iA, this.e)) {
                    iArr2[i5] = 0;
                }
            }
            if (iArr2[i5] > 0) {
                i4++;
            }
        }
        int[] iArr3 = new int[i4];
        this.a = iArr3;
        int i6 = 0;
        for (int i7 = 0; i7 < 32768; i7++) {
            if (iArr2[i7] > 0) {
                iArr3[i6] = i7;
                i6++;
            }
        }
        if (i4 <= i) {
            this.c = new ArrayList();
            for (int i8 = 0; i8 < i4; i8++) {
                int i9 = iArr3[i8];
                this.c.add(new cf.c(a((i9 >> 10) & 31, (i9 >> 5) & 31, i9 & 31), iArr2[i9]));
            }
            return;
        }
        PriorityQueue priorityQueue = new PriorityQueue(i, f);
        priorityQueue.offer(new b(0, this.a.length - 1));
        while (priorityQueue.size() < i && (bVar = (b) priorityQueue.poll()) != null) {
            int i10 = bVar.b;
            int i11 = bVar.a;
            int i12 = (i10 + 1) - i11;
            if (!(i12 > 1)) {
                break;
            }
            if (!(i12 > 1)) {
                throw new IllegalStateException("Can not split a box with only 1 color");
            }
            int i13 = bVar.e - bVar.d;
            int i14 = bVar.g - bVar.f;
            int i15 = bVar.i - bVar.h;
            int i16 = (i13 < i14 || i13 < i15) ? (i14 < i13 || i14 < i15) ? -1 : -2 : -3;
            bf bfVar = bf.this;
            int[] iArr4 = bfVar.a;
            int[] iArr5 = bfVar.b;
            b(iArr4, i16, i11, i10);
            Arrays.sort(iArr4, bVar.a, bVar.b + 1);
            b(iArr4, i16, bVar.a, bVar.b);
            int i17 = bVar.c / 2;
            int i18 = bVar.a;
            int i19 = 0;
            while (true) {
                int i20 = bVar.b;
                if (i18 > i20) {
                    iMin = bVar.a;
                    break;
                }
                i19 += iArr5[iArr4[i18]];
                if (i19 >= i17) {
                    iMin = Math.min(i20 - 1, i18);
                    break;
                }
                i18++;
            }
            b bVar2 = bf.this.new b(iMin + 1, bVar.b);
            bVar.b = iMin;
            bVar.a();
            priorityQueue.offer(bVar2);
            priorityQueue.offer(bVar);
        }
        ArrayList arrayList = new ArrayList(priorityQueue.size());
        Iterator it = priorityQueue.iterator();
        while (it.hasNext()) {
            b bVar3 = (b) it.next();
            bf bfVar2 = bf.this;
            int[] iArr6 = bfVar2.a;
            int[] iArr7 = bfVar2.b;
            int i21 = 0;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            for (int i25 = bVar3.a; i25 <= bVar3.b; i25++) {
                int i26 = iArr6[i25];
                int i27 = iArr7[i26];
                i22 += i27;
                i21 += ((i26 >> 10) & 31) * i27;
                i23 += ((i26 >> 5) & 31) * i27;
                i24 += i27 * (i26 & 31);
            }
            float f2 = i22;
            cf.c cVar = new cf.c(a(Math.round(i21 / f2), Math.round(i23 / f2), Math.round(i24 / f2)), i22);
            if (!d(cVar.d, cVar.b())) {
                arrayList.add(cVar);
            }
        }
        this.c = arrayList;
    }

    public static int a(int i, int i2, int i3) {
        return Color.rgb(c(i, 5, 8), c(i2, 5, 8), c(i3, 5, 8));
    }

    public static void b(int[] iArr, int i, int i2, int i3) {
        if (i == -2) {
            while (i2 <= i3) {
                int i4 = iArr[i2];
                iArr[i2] = (i4 & 31) | (((i4 >> 5) & 31) << 10) | (((i4 >> 10) & 31) << 5);
                i2++;
            }
            return;
        }
        if (i != -1) {
            return;
        }
        while (i2 <= i3) {
            int i5 = iArr[i2];
            iArr[i2] = ((i5 >> 10) & 31) | ((i5 & 31) << 10) | (((i5 >> 5) & 31) << 5);
            i2++;
        }
    }

    public static int c(int i, int i2, int i3) {
        return (i3 > i2 ? i << (i3 - i2) : i >> (i2 - i3)) & ((1 << i3) - 1);
    }

    public final boolean d(int i, float[] fArr) {
        cf.b[] bVarArr = this.d;
        if (bVarArr != null && bVarArr.length > 0) {
            int length = bVarArr.length;
            for (int i2 = 0; i2 < length; i2++) {
                if (!this.d[i2].a(i, fArr)) {
                    return true;
                }
            }
        }
        return false;
    }
}
