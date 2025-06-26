package defpackage;

import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import defpackage.p9;
import java.util.Locale;

/* loaded from: classes.dex */
public final class m9 {
    public static final o9 d;
    public static final String e;
    public static final String f;
    public static final m9 g;
    public static final m9 h;
    public final boolean a;
    public final int b;
    public final o9 c;

    public static class a {
        public static final byte[] e = new byte[1792];
        public final CharSequence a;
        public final int b;
        public int c;
        public char d;

        static {
            for (int i = 0; i < 1792; i++) {
                e[i] = Character.getDirectionality(i);
            }
        }

        public a(CharSequence charSequence, boolean z) {
            this.a = charSequence;
            this.b = charSequence.length();
        }

        public byte a() {
            char cCharAt = this.a.charAt(this.c - 1);
            this.d = cCharAt;
            if (Character.isLowSurrogate(cCharAt)) {
                int iCodePointBefore = Character.codePointBefore(this.a, this.c);
                this.c -= Character.charCount(iCodePointBefore);
                return Character.getDirectionality(iCodePointBefore);
            }
            this.c--;
            char c = this.d;
            return c < 1792 ? e[c] : Character.getDirectionality(c);
        }
    }

    static {
        o9 o9Var = p9.c;
        d = o9Var;
        e = Character.toString((char) 8206);
        f = Character.toString((char) 8207);
        g = new m9(false, 2, o9Var);
        h = new m9(true, 2, o9Var);
    }

    public m9(boolean z, int i, o9 o9Var) {
        this.a = z;
        this.b = i;
        this.c = o9Var;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x0070, code lost:
    
        if (r3 != 0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0073, code lost:
    
        if (r4 == 0) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0079, code lost:
    
        if (r0.c <= 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x007f, code lost:
    
        switch(r0.a()) {
            case 14: goto L66;
            case 15: goto L66;
            case 16: goto L65;
            case 17: goto L65;
            case 18: goto L64;
            default: goto L70;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0083, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0086, code lost:
    
        if (r3 != r5) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0088, code lost:
    
        return 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x008a, code lost:
    
        if (r3 != r5) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x008e, code lost:
    
        r5 = r5 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0091, code lost:
    
        return r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:?, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:?, code lost:
    
        return 0;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static int a(java.lang.CharSequence r9) {
        /*
            m9$a r0 = new m9$a
            r1 = 0
            r0.<init>(r9, r1)
            r0.c = r1
            r9 = -1
            r2 = 1
            r3 = 0
            r4 = 0
            r5 = 0
        Ld:
            int r6 = r0.c
            int r7 = r0.b
            if (r6 >= r7) goto L70
            if (r3 != 0) goto L70
            java.lang.CharSequence r7 = r0.a
            char r6 = r7.charAt(r6)
            r0.d = r6
            boolean r6 = java.lang.Character.isHighSurrogate(r6)
            if (r6 == 0) goto L39
            java.lang.CharSequence r6 = r0.a
            int r7 = r0.c
            int r6 = java.lang.Character.codePointAt(r6, r7)
            int r7 = r0.c
            int r8 = java.lang.Character.charCount(r6)
            int r8 = r8 + r7
            r0.c = r8
            byte r6 = java.lang.Character.getDirectionality(r6)
            goto L4d
        L39:
            int r6 = r0.c
            int r6 = r6 + r2
            r0.c = r6
            char r6 = r0.d
            r7 = 1792(0x700, float:2.511E-42)
            if (r6 >= r7) goto L49
            byte[] r7 = m9.a.e
            r6 = r7[r6]
            goto L4d
        L49:
            byte r6 = java.lang.Character.getDirectionality(r6)
        L4d:
            if (r6 == 0) goto L6b
            if (r6 == r2) goto L68
            r7 = 2
            if (r6 == r7) goto L68
            r7 = 9
            if (r6 == r7) goto Ld
            switch(r6) {
                case 14: goto L64;
                case 15: goto L64;
                case 16: goto L60;
                case 17: goto L60;
                case 18: goto L5c;
                default: goto L5b;
            }
        L5b:
            goto L6e
        L5c:
            int r5 = r5 + (-1)
            r4 = 0
            goto Ld
        L60:
            int r5 = r5 + 1
            r4 = 1
            goto Ld
        L64:
            int r5 = r5 + 1
            r4 = -1
            goto Ld
        L68:
            if (r5 != 0) goto L6e
            goto L88
        L6b:
            if (r5 != 0) goto L6e
            goto L8c
        L6e:
            r3 = r5
            goto Ld
        L70:
            if (r3 != 0) goto L73
            goto L91
        L73:
            if (r4 == 0) goto L77
            r1 = r4
            goto L91
        L77:
            int r4 = r0.c
            if (r4 <= 0) goto L91
            byte r4 = r0.a()
            switch(r4) {
                case 14: goto L8a;
                case 15: goto L8a;
                case 16: goto L86;
                case 17: goto L86;
                case 18: goto L83;
                default: goto L82;
            }
        L82:
            goto L77
        L83:
            int r5 = r5 + 1
            goto L77
        L86:
            if (r3 != r5) goto L8e
        L88:
            r1 = 1
            goto L91
        L8a:
            if (r3 != r5) goto L8e
        L8c:
            r1 = -1
            goto L91
        L8e:
            int r5 = r5 + (-1)
            goto L77
        L91:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.m9.a(java.lang.CharSequence):int");
    }

    public static int b(CharSequence charSequence) {
        a aVar = new a(charSequence, false);
        aVar.c = aVar.b;
        int i = 0;
        int i2 = 0;
        while (aVar.c > 0) {
            byte bA = aVar.a();
            if (bA != 0) {
                if (bA == 1 || bA == 2) {
                    if (i == 0) {
                        return 1;
                    }
                    if (i2 == 0) {
                        i2 = i;
                    }
                } else if (bA != 9) {
                    switch (bA) {
                        case 14:
                        case 15:
                            if (i2 == i) {
                                return -1;
                            }
                            i--;
                            break;
                        case 16:
                        case 17:
                            if (i2 == i) {
                                return 1;
                            }
                            i--;
                            break;
                        case 18:
                            i++;
                            break;
                        default:
                            if (i2 != 0) {
                                break;
                            } else {
                                i2 = i;
                                break;
                            }
                    }
                } else {
                    continue;
                }
            } else {
                if (i == 0) {
                    return -1;
                }
                if (i2 == 0) {
                    i2 = i;
                }
            }
        }
        return 0;
    }

    public static m9 c() {
        Locale locale = Locale.getDefault();
        Locale locale2 = q9.a;
        boolean z = TextUtils.getLayoutDirectionFromLocale(locale) == 1;
        o9 o9Var = d;
        return o9Var == d ? z ? h : g : new m9(z, 2, o9Var);
    }

    public CharSequence d(CharSequence charSequence, o9 o9Var, boolean z) {
        if (charSequence == null) {
            return null;
        }
        boolean zB = ((p9.c) o9Var).b(charSequence, 0, charSequence.length());
        SpannableStringBuilder spannableStringBuilder = new SpannableStringBuilder();
        String str = "";
        if (((this.b & 2) != 0) && z) {
            boolean zB2 = ((p9.c) (zB ? p9.b : p9.a)).b(charSequence, 0, charSequence.length());
            spannableStringBuilder.append((CharSequence) ((this.a || !(zB2 || a(charSequence) == 1)) ? (!this.a || (zB2 && a(charSequence) != -1)) ? "" : f : e));
        }
        if (zB != this.a) {
            spannableStringBuilder.append(zB ? (char) 8235 : (char) 8234);
            spannableStringBuilder.append(charSequence);
            spannableStringBuilder.append((char) 8236);
        } else {
            spannableStringBuilder.append(charSequence);
        }
        if (z) {
            boolean zB3 = ((p9.c) (zB ? p9.b : p9.a)).b(charSequence, 0, charSequence.length());
            if (!this.a && (zB3 || b(charSequence) == 1)) {
                str = e;
            } else if (this.a && (!zB3 || b(charSequence) == -1)) {
                str = f;
            }
            spannableStringBuilder.append((CharSequence) str);
        }
        return spannableStringBuilder;
    }
}
