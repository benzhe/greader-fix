package defpackage;

import java.util.Arrays;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class sf3 {
    public final int a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final short[] f;
    public int g;
    public short[] h;
    public int i;
    public short[] j;
    public int k;
    public short[] l;
    public int q;
    public int r;
    public int s;
    public int t;
    public int v;
    public int w;
    public int x;
    public int m = 0;
    public int n = 0;
    public int u = 0;
    public float o = 1.0f;
    public float p = 1.0f;

    public sf3(int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = i / 400;
        int i3 = i / 65;
        this.d = i3;
        int i4 = i3 * 2;
        this.e = i4;
        this.f = new short[i4];
        this.g = i4;
        this.h = new short[i4 * i2];
        this.i = i4;
        this.j = new short[i4 * i2];
        this.k = i4;
        this.l = new short[i4 * i2];
    }

    public static void b(int i, int i2, short[] sArr, int i3, short[] sArr2, int i4, short[] sArr3, int i5) {
        for (int i6 = 0; i6 < i2; i6++) {
            int i7 = (i3 * i2) + i6;
            int i8 = (i5 * i2) + i6;
            int i9 = (i4 * i2) + i6;
            for (int i10 = 0; i10 < i; i10++) {
                sArr[i7] = (short) (((sArr3[i8] * i10) + ((i - i10) * sArr2[i9])) / i);
                i7 += i2;
                i9 += i2;
                i8 += i2;
            }
        }
    }

    public final int a(short[] sArr, int i, int i2, int i3) {
        int i4 = i * this.b;
        int i5 = 1;
        int i6 = Base64.BASELENGTH;
        int i7 = 0;
        int i8 = 0;
        while (i2 <= i3) {
            int i9 = 0;
            for (int i10 = 0; i10 < i2; i10++) {
                short s = sArr[i4 + i10];
                short s2 = sArr[i4 + i2 + i10];
                i9 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i9 * i7 < i5 * i2) {
                i7 = i2;
                i5 = i9;
            }
            if (i9 * i6 > i8 * i2) {
                i6 = i2;
                i8 = i9;
            }
            i2++;
        }
        this.w = i5 / i7;
        this.x = i8 / i6;
        return i7;
    }

    public final void c(short[] sArr, int i, int i2) {
        d(i2);
        int i3 = this.b;
        System.arraycopy(sArr, i * i3, this.j, this.r * i3, i3 * i2);
        this.r += i2;
    }

    public final void d(int i) {
        int i2 = this.r + i;
        int i3 = this.i;
        if (i2 > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.i = i4;
            this.j = Arrays.copyOf(this.j, i4 * this.b);
        }
    }

    public final void e(int i) {
        int i2 = this.q + i;
        int i3 = this.g;
        if (i2 > i3) {
            int i4 = (i3 / 2) + i + i3;
            this.g = i4;
            this.h = Arrays.copyOf(this.h, i4 * this.b);
        }
    }

    public final void f(short[] sArr, int i, int i2) {
        int i3 = this.e / i2;
        int i4 = this.b;
        int i5 = i2 * i4;
        int i6 = i * i4;
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = 0;
            for (int i9 = 0; i9 < i5; i9++) {
                i8 += sArr[(i7 * i5) + i6 + i9];
            }
            this.f[i7] = (short) (i8 / i5);
        }
    }

    public final void g() {
        int iA;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6 = this.r;
        float f = this.o / this.p;
        double d = f;
        int i7 = 1;
        if (d > 1.00001d || d < 0.99999d) {
            int i8 = this.q;
            if (i8 >= this.e) {
                int i9 = 0;
                while (true) {
                    int i10 = this.t;
                    if (i10 > 0) {
                        int iMin = Math.min(this.e, i10);
                        c(this.h, i9, iMin);
                        this.t -= iMin;
                        i9 += iMin;
                    } else {
                        short[] sArr = this.h;
                        int i11 = this.a;
                        int i12 = i11 > 4000 ? i11 / 4000 : 1;
                        if (this.b == i7 && i12 == i7) {
                            iA = a(sArr, i9, this.c, this.d);
                        } else {
                            f(sArr, i9, i12);
                            int iA2 = a(this.f, 0, this.c / i12, this.d / i12);
                            if (i12 != i7) {
                                int i13 = iA2 * i12;
                                int i14 = i12 << 2;
                                int i15 = i13 - i14;
                                int i16 = i13 + i14;
                                int i17 = this.c;
                                if (i15 < i17) {
                                    i15 = i17;
                                }
                                int i18 = this.d;
                                if (i16 > i18) {
                                    i16 = i18;
                                }
                                if (this.b == i7) {
                                    iA = a(sArr, i9, i15, i16);
                                } else {
                                    f(sArr, i9, i7);
                                    iA = a(this.f, 0, i15, i16);
                                }
                            } else {
                                iA = iA2;
                            }
                        }
                        int i19 = this.w;
                        int i20 = i19 != 0 && this.u != 0 && this.x <= i19 * 3 && (i19 << 1) > this.v * 3 ? this.u : iA;
                        this.v = i19;
                        this.u = iA;
                        if (d > 1.0d) {
                            short[] sArr2 = this.h;
                            if (f >= 2.0f) {
                                i2 = (int) (i20 / (f - 1.0f));
                            } else {
                                this.t = (int) (((2.0f - f) * i20) / (f - 1.0f));
                                i2 = i20;
                            }
                            d(i2);
                            int i21 = i2;
                            b(i2, this.b, this.j, this.r, sArr2, i9, sArr2, i9 + i20);
                            this.r += i21;
                            i9 = i20 + i21 + i9;
                        } else {
                            int i22 = i20;
                            short[] sArr3 = this.h;
                            if (f < 0.5f) {
                                i = (int) ((i22 * f) / (1.0f - f));
                            } else {
                                this.t = (int) ((((2.0f * f) - 1.0f) * i22) / (1.0f - f));
                                i = i22;
                            }
                            int i23 = i22 + i;
                            d(i23);
                            int i24 = this.b;
                            System.arraycopy(sArr3, i9 * i24, this.j, this.r * i24, i24 * i22);
                            b(i, this.b, this.j, this.r + i22, sArr3, i22 + i9, sArr3, i9);
                            this.r += i23;
                            i9 += i;
                        }
                    }
                    if (this.e + i9 > i8) {
                        break;
                    } else {
                        i7 = 1;
                    }
                }
                int i25 = this.q - i9;
                short[] sArr4 = this.h;
                int i26 = this.b;
                System.arraycopy(sArr4, i9 * i26, sArr4, 0, i26 * i25);
                this.q = i25;
            }
        } else {
            c(this.h, 0, this.q);
            this.q = 0;
        }
        float f2 = this.p;
        if (f2 == 1.0f || this.r == i6) {
            return;
        }
        int i27 = this.a;
        int i28 = (int) (i27 / f2);
        while (true) {
            if (i28 <= 16384 && i27 <= 16384) {
                break;
            }
            i28 /= 2;
            i27 /= 2;
        }
        int i29 = this.r - i6;
        int i30 = this.s + i29;
        int i31 = this.k;
        if (i30 > i31) {
            int i32 = (i31 / 2) + i29 + i31;
            this.k = i32;
            this.l = Arrays.copyOf(this.l, i32 * this.b);
        }
        short[] sArr5 = this.j;
        int i33 = this.b;
        System.arraycopy(sArr5, i6 * i33, this.l, this.s * i33, i33 * i29);
        this.r = i6;
        this.s += i29;
        int i34 = 0;
        while (true) {
            i3 = this.s;
            if (i34 >= i3 - 1) {
                break;
            }
            while (true) {
                i4 = this.m;
                int i35 = (i4 + 1) * i28;
                i5 = this.n;
                if (i35 <= i5 * i27) {
                    break;
                }
                d(1);
                int i36 = 0;
                while (true) {
                    int i37 = this.b;
                    if (i36 < i37) {
                        short[] sArr6 = this.j;
                        int i38 = (this.r * i37) + i36;
                        short[] sArr7 = this.l;
                        int i39 = (i34 * i37) + i36;
                        short s = sArr7[i39];
                        short s2 = sArr7[i39 + i37];
                        int i40 = this.n * i27;
                        int i41 = this.m;
                        int i42 = i41 * i28;
                        int i43 = (i41 + 1) * i28;
                        int i44 = i43 - i40;
                        int i45 = i43 - i42;
                        sArr6[i38] = (short) ((((i45 - i44) * s2) + (s * i44)) / i45);
                        i36++;
                    }
                }
                this.n++;
                this.r++;
            }
            int i46 = i4 + 1;
            this.m = i46;
            if (i46 == i27) {
                this.m = 0;
                c50.D(i5 == i28);
                this.n = 0;
            }
            i34++;
        }
        int i47 = i3 - 1;
        if (i47 != 0) {
            short[] sArr8 = this.l;
            int i48 = this.b;
            System.arraycopy(sArr8, i47 * i48, sArr8, 0, (i3 - i47) * i48);
            this.s -= i47;
        }
    }
}
