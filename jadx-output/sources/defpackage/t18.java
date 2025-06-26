package defpackage;

import defpackage.v18;

/* loaded from: classes2.dex */
public class t18 {
    public a a;
    public boolean b;
    public boolean c;
    public boolean d;
    public byte e;
    public String f;
    public v18 h = null;
    public v18[] g = new v18[3];

    public enum a {
        PURE_ASCII,
        ESC_ASCII,
        HIGHBYTE
    }

    public t18(r18 r18Var) {
        int i = 0;
        while (true) {
            v18[] v18VarArr = this.g;
            if (i >= v18VarArr.length) {
                b();
                return;
            } else {
                v18VarArr[i] = null;
                i++;
            }
        }
    }

    public void a(byte[] bArr, int i, int i2) {
        v18.a aVar = v18.a.FOUND_IT;
        a aVar2 = a.HIGHBYTE;
        a aVar3 = a.ESC_ASCII;
        if (this.b) {
            return;
        }
        if (i2 > 0) {
            this.d = true;
        }
        int i3 = 0;
        if (this.c) {
            this.c = false;
            if (i2 > 3) {
                int i4 = bArr[i] & 255;
                int i5 = bArr[i + 1] & 255;
                int i6 = bArr[i + 2] & 255;
                int i7 = bArr[i + 3] & 255;
                if (i4 != 0) {
                    if (i4 != 239) {
                        if (i4 != 254) {
                            if (i4 == 255) {
                                if (i5 == 254 && i6 == 0 && i7 == 0) {
                                    this.f = s18.y;
                                } else if (i5 == 254) {
                                    this.f = s18.w;
                                }
                            }
                        } else if (i5 == 255 && i6 == 0 && i7 == 0) {
                            this.f = s18.A;
                        } else if (i5 == 255) {
                            this.f = s18.v;
                        }
                    } else if (i5 == 187 && i6 == 191) {
                        this.f = s18.u;
                    }
                } else if (i5 == 0 && i6 == 254 && i7 == 255) {
                    this.f = s18.x;
                } else if (i5 == 0 && i6 == 255 && i7 == 254) {
                    this.f = s18.B;
                }
                if (this.f != null) {
                    this.b = true;
                    return;
                }
            }
        }
        int i8 = i + i2;
        for (int i9 = i; i9 < i8; i9++) {
            int i10 = bArr[i9] & 255;
            if ((i10 & 128) == 0 || i10 == 160) {
                if (this.a == a.PURE_ASCII && (i10 == 27 || (i10 == 123 && this.e == 126))) {
                    this.a = aVar3;
                }
                this.e = bArr[i9];
            } else if (this.a != aVar2) {
                this.a = aVar2;
                if (this.h != null) {
                    this.h = null;
                }
                v18[] v18VarArr = this.g;
                if (v18VarArr[0] == null) {
                    v18VarArr[0] = new d28();
                }
                v18[] v18VarArr2 = this.g;
                if (v18VarArr2[1] == null) {
                    v18VarArr2[1] = new e28();
                }
                v18[] v18VarArr3 = this.g;
                if (v18VarArr3[2] == null) {
                    v18VarArr3[2] = new c28();
                }
            }
        }
        a aVar4 = this.a;
        if (aVar4 == aVar3) {
            if (this.h == null) {
                this.h = new z18();
            }
            if (this.h.d(bArr, i, i2) == aVar) {
                this.b = true;
                this.f = this.h.a();
                return;
            }
            return;
        }
        if (aVar4 != aVar2) {
            return;
        }
        while (true) {
            v18[] v18VarArr4 = this.g;
            if (i3 >= v18VarArr4.length) {
                return;
            }
            if (v18VarArr4[i3].d(bArr, i, i2) == aVar) {
                this.b = true;
                this.f = this.g[i3].a();
                return;
            }
            i3++;
        }
    }

    public void b() {
        int i = 0;
        this.b = false;
        this.c = true;
        this.f = null;
        this.d = false;
        this.a = a.PURE_ASCII;
        this.e = (byte) 0;
        v18 v18Var = this.h;
        if (v18Var != null) {
            v18Var.f();
        }
        while (true) {
            v18[] v18VarArr = this.g;
            if (i >= v18VarArr.length) {
                return;
            }
            if (v18VarArr[i] != null) {
                v18VarArr[i].f();
            }
            i++;
        }
    }
}
