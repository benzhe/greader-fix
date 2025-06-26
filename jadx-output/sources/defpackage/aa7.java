package defpackage;

import javax.security.auth.x500.X500Principal;

/* loaded from: classes2.dex */
public final class aa7 {
    public final String a;
    public final int b;
    public int c;
    public int d;
    public int e;
    public int f;
    public char[] g;

    public aa7(X500Principal x500Principal) {
        String name = x500Principal.getName("RFC2253");
        this.a = name;
        this.b = name.length();
    }

    public final int a(int i) {
        int i2;
        int i3;
        int i4 = i + 1;
        if (i4 >= this.b) {
            StringBuilder sbZ = jo.z("Malformed DN: ");
            sbZ.append(this.a);
            throw new IllegalStateException(sbZ.toString());
        }
        char[] cArr = this.g;
        char c = cArr[i];
        if (c >= '0' && c <= '9') {
            i2 = c - '0';
        } else if (c >= 'a' && c <= 'f') {
            i2 = c - 'W';
        } else {
            if (c < 'A' || c > 'F') {
                StringBuilder sbZ2 = jo.z("Malformed DN: ");
                sbZ2.append(this.a);
                throw new IllegalStateException(sbZ2.toString());
            }
            i2 = c - '7';
        }
        char c2 = cArr[i4];
        if (c2 >= '0' && c2 <= '9') {
            i3 = c2 - '0';
        } else if (c2 >= 'a' && c2 <= 'f') {
            i3 = c2 - 'W';
        } else {
            if (c2 < 'A' || c2 > 'F') {
                StringBuilder sbZ3 = jo.z("Malformed DN: ");
                sbZ3.append(this.a);
                throw new IllegalStateException(sbZ3.toString());
            }
            i3 = c2 - '7';
        }
        return (i2 << 4) + i3;
    }

    public final char b() {
        int i;
        int i2 = this.c + 1;
        this.c = i2;
        if (i2 == this.b) {
            StringBuilder sbZ = jo.z("Unexpected end of DN: ");
            sbZ.append(this.a);
            throw new IllegalStateException(sbZ.toString());
        }
        char[] cArr = this.g;
        char c = cArr[i2];
        if (c != ' ' && c != '%' && c != '\\' && c != '_' && c != '\"' && c != '#') {
            switch (c) {
                case '*':
                case '+':
                case ',':
                    break;
                default:
                    switch (c) {
                        case ';':
                        case '<':
                        case '=':
                        case '>':
                            break;
                        default:
                            int iA = a(i2);
                            this.c++;
                            if (iA >= 128) {
                                if (iA < 192 || iA > 247) {
                                    return '?';
                                }
                                if (iA <= 223) {
                                    iA &= 31;
                                    i = 1;
                                } else if (iA <= 239) {
                                    i = 2;
                                    iA &= 15;
                                } else {
                                    i = 3;
                                    iA &= 7;
                                }
                                for (int i3 = 0; i3 < i; i3++) {
                                    int i4 = this.c + 1;
                                    this.c = i4;
                                    if (i4 == this.b || this.g[i4] != '\\') {
                                        return '?';
                                    }
                                    int i5 = i4 + 1;
                                    this.c = i5;
                                    int iA2 = a(i5);
                                    this.c++;
                                    if ((iA2 & 192) != 128) {
                                        return '?';
                                    }
                                    iA = (iA << 6) + (iA2 & 63);
                                }
                            }
                            return (char) iA;
                    }
            }
        }
        return cArr[i2];
    }

    public final String c() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        while (true) {
            i = this.c;
            i2 = this.b;
            if (i >= i2 || this.g[i] != ' ') {
                break;
            }
            this.c = i + 1;
        }
        if (i == i2) {
            return null;
        }
        this.d = i;
        this.c = i + 1;
        while (true) {
            i3 = this.c;
            i4 = this.b;
            if (i3 >= i4) {
                break;
            }
            char[] cArr = this.g;
            if (cArr[i3] == '=' || cArr[i3] == ' ') {
                break;
            }
            this.c = i3 + 1;
        }
        if (i3 >= i4) {
            StringBuilder sbZ = jo.z("Unexpected end of DN: ");
            sbZ.append(this.a);
            throw new IllegalStateException(sbZ.toString());
        }
        this.e = i3;
        if (this.g[i3] == ' ') {
            while (true) {
                i5 = this.c;
                i6 = this.b;
                if (i5 >= i6) {
                    break;
                }
                char[] cArr2 = this.g;
                if (cArr2[i5] == '=' || cArr2[i5] != ' ') {
                    break;
                }
                this.c = i5 + 1;
            }
            if (this.g[i5] != '=' || i5 == i6) {
                StringBuilder sbZ2 = jo.z("Unexpected end of DN: ");
                sbZ2.append(this.a);
                throw new IllegalStateException(sbZ2.toString());
            }
        }
        this.c++;
        while (true) {
            int i7 = this.c;
            if (i7 >= this.b || this.g[i7] != ' ') {
                break;
            }
            this.c = i7 + 1;
        }
        int i8 = this.e;
        int i9 = this.d;
        if (i8 - i9 > 4) {
            char[] cArr3 = this.g;
            if (cArr3[i9 + 3] == '.' && ((cArr3[i9] == 'O' || cArr3[i9] == 'o') && ((cArr3[i9 + 1] == 'I' || cArr3[i9 + 1] == 'i') && (cArr3[i9 + 2] == 'D' || cArr3[i9 + 2] == 'd')))) {
                this.d = i9 + 4;
            }
        }
        char[] cArr4 = this.g;
        int i10 = this.d;
        return new String(cArr4, i10, this.e - i10);
    }
}
