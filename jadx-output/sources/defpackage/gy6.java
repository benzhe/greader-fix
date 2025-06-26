package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.io.UnsupportedEncodingException;
import java.util.zip.GZIPInputStream;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes2.dex */
public class gy6 {
    public static final byte[] a;
    public static final byte[] b = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    public static final byte[] c;

    static {
        byte[] bytes;
        try {
            bytes = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/".getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = b;
        }
        a = bytes;
        c = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, Base64.PAD, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -9, -9, -9, -9, -9, -9, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9};
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static byte[] a(String str) throws Throwable {
        byte[] bytes;
        ByteArrayOutputStream byteArrayOutputStream;
        byte[] byteArray;
        ByteArrayInputStream byteArrayInputStream;
        GZIPInputStream gZIPInputStream;
        ByteArrayOutputStream byteArrayOutputStream2;
        ByteArrayInputStream byteArrayInputStream2;
        try {
            bytes = str.getBytes("UTF-8");
        } catch (UnsupportedEncodingException unused) {
            bytes = str.getBytes();
        }
        int length = bytes.length;
        byte[] bArr = new byte[(length * 3) / 4];
        byte[] bArr2 = new byte[4];
        int i = 0;
        int i2 = 0;
        int iB = 0;
        while (true) {
            byteArrayOutputStream = null;
            if (i < 0 + length) {
                byte b2 = (byte) (bytes[i] & Byte.MAX_VALUE);
                byte b3 = c[b2];
                if (b3 < -5) {
                    PrintStream printStream = System.err;
                    StringBuilder sbA = jo.A("Bad Base64 input character at ", i, ": ");
                    sbA.append((int) bytes[i]);
                    sbA.append("(decimal)");
                    printStream.println(sbA.toString());
                    byteArray = null;
                    break;
                }
                if (b3 >= -1) {
                    int i3 = i2 + 1;
                    bArr2[i2] = b2;
                    if (i3 > 3) {
                        iB += b(bArr2, 0, bArr, iB);
                        if (b2 == 61) {
                            break;
                        }
                        i2 = 0;
                    } else {
                        i2 = i3;
                    }
                }
                i++;
            } else {
                break;
            }
        }
        byteArray = new byte[iB];
        System.arraycopy(bArr, 0, byteArray, 0, iB);
        if (byteArray != null && byteArray.length >= 4 && 35615 == ((byteArray[0] & 255) | ((byteArray[1] << 8) & 65280))) {
            byte[] bArr3 = new byte[RecyclerView.a0.FLAG_MOVED];
            try {
                ByteArrayOutputStream byteArrayOutputStream3 = new ByteArrayOutputStream();
                try {
                    byteArrayInputStream2 = new ByteArrayInputStream(byteArray);
                    try {
                        gZIPInputStream = new GZIPInputStream(byteArrayInputStream2);
                        while (true) {
                            try {
                                int i4 = gZIPInputStream.read(bArr3);
                                if (i4 < 0) {
                                    break;
                                }
                                byteArrayOutputStream3.write(bArr3, 0, i4);
                            } catch (IOException unused2) {
                                byteArrayOutputStream = byteArrayInputStream2;
                                byteArrayOutputStream2 = byteArrayOutputStream;
                                byteArrayOutputStream = byteArrayOutputStream3;
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused3) {
                                }
                                byteArrayInputStream2 = byteArrayOutputStream2;
                                gZIPInputStream.close();
                                byteArrayInputStream2.close();
                                return byteArray;
                            } catch (Throwable th) {
                                th = th;
                                byteArrayOutputStream = byteArrayInputStream2;
                                byteArrayInputStream = byteArrayOutputStream;
                                byteArrayOutputStream = byteArrayOutputStream3;
                                try {
                                    byteArrayOutputStream.close();
                                } catch (Exception unused4) {
                                }
                                try {
                                    gZIPInputStream.close();
                                } catch (Exception unused5) {
                                }
                                try {
                                    byteArrayInputStream.close();
                                    throw th;
                                } catch (Exception unused6) {
                                    throw th;
                                }
                            }
                        }
                        byteArray = byteArrayOutputStream3.toByteArray();
                        try {
                            byteArrayOutputStream3.close();
                        } catch (Exception unused7) {
                        }
                    } catch (IOException unused8) {
                        gZIPInputStream = null;
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPInputStream = null;
                    }
                } catch (IOException unused9) {
                    gZIPInputStream = null;
                } catch (Throwable th3) {
                    th = th3;
                    gZIPInputStream = null;
                }
            } catch (IOException unused10) {
                byteArrayOutputStream2 = null;
                gZIPInputStream = null;
            } catch (Throwable th4) {
                th = th4;
                byteArrayInputStream = 0;
                gZIPInputStream = null;
            }
            try {
                gZIPInputStream.close();
            } catch (Exception unused11) {
            }
            try {
                byteArrayInputStream2.close();
            } catch (Exception unused12) {
            }
        }
        return byteArray;
    }

    public static int b(byte[] bArr, int i, byte[] bArr2, int i2) {
        int i3 = i + 2;
        if (bArr[i3] == 61) {
            byte[] bArr3 = c;
            bArr2[i2] = (byte) ((((bArr3[bArr[i + 1]] & 255) << 12) | ((bArr3[bArr[i]] & 255) << 18)) >>> 16);
            return 1;
        }
        int i4 = i + 3;
        if (bArr[i4] == 61) {
            byte[] bArr4 = c;
            int i5 = ((bArr4[bArr[i3]] & 255) << 6) | ((bArr4[bArr[i + 1]] & 255) << 12) | ((bArr4[bArr[i]] & 255) << 18);
            bArr2[i2] = (byte) (i5 >>> 16);
            bArr2[i2 + 1] = (byte) (i5 >>> 8);
            return 2;
        }
        try {
            byte[] bArr5 = c;
            int i6 = (bArr5[bArr[i4]] & 255) | ((bArr5[bArr[i]] & 255) << 18) | ((bArr5[bArr[i + 1]] & 255) << 12) | ((bArr5[bArr[i3]] & 255) << 6);
            bArr2[i2] = (byte) (i6 >> 16);
            bArr2[i2 + 1] = (byte) (i6 >> 8);
            bArr2[i2 + 2] = (byte) i6;
            return 3;
        } catch (Exception unused) {
            PrintStream printStream = System.out;
            StringBuilder sbZ = jo.z("");
            sbZ.append((int) bArr[i]);
            sbZ.append(": ");
            byte[] bArr6 = c;
            sbZ.append((int) bArr6[bArr[i]]);
            printStream.println(sbZ.toString());
            PrintStream printStream2 = System.out;
            StringBuilder sbZ2 = jo.z("");
            int i7 = i + 1;
            sbZ2.append((int) bArr[i7]);
            sbZ2.append(": ");
            sbZ2.append((int) bArr6[bArr[i7]]);
            printStream2.println(sbZ2.toString());
            PrintStream printStream3 = System.out;
            StringBuilder sbZ3 = jo.z("");
            sbZ3.append((int) bArr[i3]);
            sbZ3.append(": ");
            sbZ3.append((int) bArr6[bArr[i3]]);
            printStream3.println(sbZ3.toString());
            PrintStream printStream4 = System.out;
            StringBuilder sbZ4 = jo.z("");
            sbZ4.append((int) bArr[i4]);
            sbZ4.append(": ");
            sbZ4.append((int) bArr6[bArr[i4]]);
            printStream4.println(sbZ4.toString());
            return -1;
        }
    }

    public static byte[] c(byte[] bArr, int i, int i2, byte[] bArr2, int i3) {
        int i4 = (i2 > 0 ? (bArr[i] << 24) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << 24) >>> 16 : 0) | (i2 > 2 ? (bArr[i + 2] << 24) >>> 24 : 0);
        if (i2 == 1) {
            byte[] bArr3 = a;
            bArr2[i3] = bArr3[i4 >>> 18];
            bArr2[i3 + 1] = bArr3[(i4 >>> 12) & 63];
            bArr2[i3 + 2] = Base64.PAD;
            bArr2[i3 + 3] = Base64.PAD;
            return bArr2;
        }
        if (i2 == 2) {
            byte[] bArr4 = a;
            bArr2[i3] = bArr4[i4 >>> 18];
            bArr2[i3 + 1] = bArr4[(i4 >>> 12) & 63];
            bArr2[i3 + 2] = bArr4[(i4 >>> 6) & 63];
            bArr2[i3 + 3] = Base64.PAD;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        byte[] bArr5 = a;
        bArr2[i3] = bArr5[i4 >>> 18];
        bArr2[i3 + 1] = bArr5[(i4 >>> 12) & 63];
        bArr2[i3 + 2] = bArr5[(i4 >>> 6) & 63];
        bArr2[i3 + 3] = bArr5[i4 & 63];
        return bArr2;
    }

    public static String d(byte[] bArr) {
        int length = bArr.length;
        int i = (length * 4) / 3;
        byte[] bArr2 = new byte[(length % 3 > 0 ? 4 : 0) + i + (i / 76)];
        int i2 = length - 2;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (i3 < i2) {
            c(bArr, i3 + 0, 3, bArr2, i4);
            i5 += 4;
            if (i5 == 76) {
                bArr2[i4 + 4] = 10;
                i4++;
                i5 = 0;
            }
            i3 += 3;
            i4 += 4;
        }
        if (i3 < length) {
            c(bArr, 0 + i3, length - i3, bArr2, i4);
            i4 += 4;
        }
        try {
            return new String(bArr2, 0, i4, "UTF-8");
        } catch (UnsupportedEncodingException unused) {
            return new String(bArr2, 0, i4);
        }
    }
}
