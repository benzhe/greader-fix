package defpackage;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.Matrix;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes2.dex */
public class a07 implements b07 {
    public final boolean a;

    public static class b {
        public final uz6 a;
        public final a b;

        public b(uz6 uz6Var, a aVar) {
            this.a = uz6Var;
            this.b = aVar;
        }
    }

    public a07(boolean z) {
        this.a = z;
    }

    public Bitmap a(c07 c07Var) throws IOException {
        int i;
        int i2;
        InputStream inputStreamA = c07Var.f.a(c07Var.b, c07Var.g);
        if (inputStreamA == null) {
            p07.b("No stream for image [%s]", c07Var.a);
            return null;
        }
        try {
            b bVarB = b(inputStreamA, c07Var);
            if (inputStreamA.markSupported()) {
                try {
                    inputStreamA.reset();
                } catch (IOException unused) {
                }
            } else {
                try {
                    inputStreamA.close();
                } catch (Exception unused2) {
                }
                inputStreamA = c07Var.f.a(c07Var.b, c07Var.g);
            }
            Bitmap bitmapDecodeStream = BitmapFactory.decodeStream(inputStreamA, null, c(bVarB.a, c07Var));
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (Exception unused3) {
                }
            }
            if (bitmapDecodeStream == null) {
                p07.b("Image can't be decoded [%s]", c07Var.a);
                return bitmapDecodeStream;
            }
            a aVar = bVarB.b;
            int i3 = aVar.a;
            boolean z = aVar.b;
            tz6 tz6Var = tz6.EXACTLY_STRETCHED;
            Matrix matrix = new Matrix();
            tz6 tz6Var2 = c07Var.d;
            if (tz6Var2 == tz6.EXACTLY || tz6Var2 == tz6Var) {
                uz6 uz6Var = new uz6(bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), i3);
                uz6 uz6Var2 = c07Var.c;
                xz6 xz6Var = c07Var.e;
                boolean z2 = tz6Var2 == tz6Var;
                uz6 uz6Var3 = n07.a;
                int i4 = uz6Var.a;
                int i5 = uz6Var.b;
                int i6 = uz6Var2.a;
                int i7 = uz6Var2.b;
                float f = i4;
                float f2 = f / i6;
                float f3 = i5;
                float f4 = f3 / i7;
                if ((xz6Var != xz6.FIT_INSIDE || f2 < f4) && (xz6Var != xz6.CROP || f2 >= f4)) {
                    i = (int) (f / f4);
                    i2 = i7;
                } else {
                    i2 = (int) (f3 / f2);
                    i = i6;
                }
                float f5 = ((z2 || i >= i4 || i2 >= i5) && (!z2 || i == i4 || i2 == i5)) ? 1.0f : i / f;
                if (Float.compare(f5, 1.0f) != 0) {
                    matrix.setScale(f5, f5);
                    if (this.a) {
                        p07.a("Scale subsampled image (%1$s) to %2$s (scale = %3$.5f) [%4$s]", uz6Var, new uz6((int) (uz6Var.a * f5), (int) (uz6Var.b * f5)), Float.valueOf(f5), c07Var.a);
                    }
                }
            }
            if (z) {
                matrix.postScale(-1.0f, 1.0f);
                if (this.a) {
                    p07.a("Flip image horizontally [%s]", c07Var.a);
                }
            }
            if (i3 != 0) {
                matrix.postRotate(i3);
                if (this.a) {
                    p07.a("Rotate image on %1$d° [%2$s]", Integer.valueOf(i3), c07Var.a);
                }
            }
            Bitmap bitmapCreateBitmap = Bitmap.createBitmap(bitmapDecodeStream, 0, 0, bitmapDecodeStream.getWidth(), bitmapDecodeStream.getHeight(), matrix, true);
            if (bitmapCreateBitmap != bitmapDecodeStream) {
                bitmapDecodeStream.recycle();
            }
            return bitmapCreateBitmap;
        } catch (Throwable th) {
            if (inputStreamA != null) {
                try {
                    inputStreamA.close();
                } catch (Exception unused4) {
                }
            }
            throw th;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public a07.b b(java.io.InputStream r5, defpackage.c07 r6) throws java.io.IOException {
        /*
            r4 = this;
            android.graphics.BitmapFactory$Options r0 = new android.graphics.BitmapFactory$Options
            r0.<init>()
            r1 = 1
            r0.inJustDecodeBounds = r1
            r2 = 0
            android.graphics.BitmapFactory.decodeStream(r5, r2, r0)
            java.lang.String r5 = r6.b
            boolean r6 = r6.h
            if (r6 == 0) goto L5c
            java.lang.String r6 = r0.outMimeType
            java.lang.String r2 = "image/jpeg"
            boolean r6 = r2.equalsIgnoreCase(r6)
            r2 = 0
            if (r6 == 0) goto L27
            f07$a r6 = f07.a.k(r5)
            f07$a r3 = f07.a.FILE
            if (r6 != r3) goto L27
            r6 = 1
            goto L28
        L27:
            r6 = 0
        L28:
            if (r6 == 0) goto L5c
            android.media.ExifInterface r6 = new android.media.ExifInterface     // Catch: java.io.IOException -> L4c
            f07$a r3 = f07.a.FILE     // Catch: java.io.IOException -> L4c
            java.lang.String r3 = r3.i(r5)     // Catch: java.io.IOException -> L4c
            r6.<init>(r3)     // Catch: java.io.IOException -> L4c
            java.lang.String r3 = "Orientation"
            int r5 = r6.getAttributeInt(r3, r1)     // Catch: java.io.IOException -> L4c
            switch(r5) {
                case 2: goto L56;
                case 3: goto L48;
                case 4: goto L49;
                case 5: goto L45;
                case 6: goto L41;
                case 7: goto L42;
                case 8: goto L3f;
                default: goto L3e;
            }
        L3e:
            goto L55
        L3f:
            r1 = 0
            goto L45
        L41:
            r1 = 0
        L42:
            r2 = 90
            goto L56
        L45:
            r2 = 270(0x10e, float:3.78E-43)
            goto L56
        L48:
            r1 = 0
        L49:
            r2 = 180(0xb4, float:2.52E-43)
            goto L56
        L4c:
            java.lang.Object[] r6 = new java.lang.Object[r1]
            r6[r2] = r5
            java.lang.String r5 = "Can't read EXIF tags from file [%s]"
            defpackage.p07.e(r5, r6)
        L55:
            r1 = 0
        L56:
            a07$a r5 = new a07$a
            r5.<init>(r2, r1)
            goto L61
        L5c:
            a07$a r5 = new a07$a
            r5.<init>()
        L61:
            a07$b r6 = new a07$b
            uz6 r1 = new uz6
            int r2 = r0.outWidth
            int r0 = r0.outHeight
            int r3 = r5.a
            r1.<init>(r2, r0, r3)
            r6.<init>(r1, r5)
            return r6
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.a07.b(java.io.InputStream, c07):a07$b");
    }

    public BitmapFactory.Options c(uz6 uz6Var, c07 c07Var) {
        int iMax;
        int iMax2;
        tz6 tz6Var = c07Var.d;
        if (tz6Var == tz6.NONE) {
            iMax2 = 1;
        } else if (tz6Var == tz6.NONE_SAFE) {
            uz6 uz6Var2 = n07.a;
            int i = uz6Var.a;
            int i2 = uz6Var.b;
            uz6 uz6Var3 = n07.a;
            iMax2 = Math.max((int) Math.ceil(i / uz6Var3.a), (int) Math.ceil(i2 / uz6Var3.b));
        } else {
            uz6 uz6Var4 = c07Var.c;
            boolean z = tz6Var == tz6.IN_SAMPLE_POWER_OF_2;
            xz6 xz6Var = c07Var.e;
            uz6 uz6Var5 = n07.a;
            int i3 = uz6Var.a;
            int i4 = uz6Var.b;
            int i5 = uz6Var4.a;
            int i6 = uz6Var4.b;
            int iOrdinal = xz6Var.ordinal();
            if (iOrdinal != 0) {
                if (iOrdinal != 1) {
                    iMax = 1;
                } else if (z) {
                    int i7 = i3 / 2;
                    int i8 = i4 / 2;
                    iMax = 1;
                    while (i7 / iMax > i5 && i8 / iMax > i6) {
                        iMax *= 2;
                    }
                } else {
                    iMax = Math.min(i3 / i5, i4 / i6);
                }
            } else if (z) {
                int i9 = i3 / 2;
                int i10 = i4 / 2;
                iMax = 1;
                while (true) {
                    if (i9 / iMax <= i5 && i10 / iMax <= i6) {
                        break;
                    }
                    iMax *= 2;
                }
            } else {
                iMax = Math.max(i3 / i5, i4 / i6);
            }
            if (iMax < 1) {
                iMax = 1;
            }
            uz6 uz6Var6 = n07.a;
            int i11 = uz6Var6.a;
            int i12 = uz6Var6.b;
            while (true) {
                if (i3 / iMax <= i11 && i4 / iMax <= i12) {
                    break;
                }
                iMax = z ? iMax * 2 : iMax + 1;
            }
            iMax2 = iMax;
        }
        if (iMax2 > 1 && this.a) {
            p07.a("Subsample original image (%1$s) to %2$s (scale = %3$d) [%4$s]", uz6Var, new uz6(uz6Var.a / iMax2, uz6Var.b / iMax2), Integer.valueOf(iMax2), c07Var.a);
        }
        BitmapFactory.Options options = c07Var.i;
        options.inSampleSize = iMax2;
        return options;
    }

    public static class a {
        public final int a;
        public final boolean b;

        public a() {
            this.a = 0;
            this.b = false;
        }

        public a(int i, boolean z) {
            this.a = i;
            this.b = z;
        }
    }
}
