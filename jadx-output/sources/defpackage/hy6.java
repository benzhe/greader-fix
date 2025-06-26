package defpackage;

import android.text.TextUtils;
import android.util.Log;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class hy6 {
    public static final Object[] a = new Object[0];

    public static void a(File file, File file2) throws IOException {
        if (file.isDirectory()) {
            if (!file2.exists() && !file2.mkdirs()) {
                StringBuilder sbZ = jo.z("Cannot create dir ");
                sbZ.append(file2.getAbsolutePath());
                throw new IOException(sbZ.toString());
            }
            for (String str : file.list()) {
                a(new File(file, str), new File(file2, str));
            }
            return;
        }
        File parentFile = file2.getParentFile();
        if (parentFile != null && !parentFile.exists() && !parentFile.mkdirs()) {
            StringBuilder sbZ2 = jo.z("Cannot create dir ");
            sbZ2.append(parentFile.getAbsolutePath());
            throw new IOException(sbZ2.toString());
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        FileOutputStream fileOutputStream = new FileOutputStream(file2);
        byte[] bArr = new byte[1024];
        while (true) {
            int i = fileInputStream.read(bArr);
            if (i <= 0) {
                fileInputStream.close();
                fileOutputStream.close();
                return;
            }
            fileOutputStream.write(bArr, 0, i);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x004a  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x004f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void b(java.io.File r9, java.io.File r10) throws java.lang.Throwable {
        /*
            r0 = 0
            java.io.FileInputStream r1 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L39
            r1.<init>(r9)     // Catch: java.lang.Throwable -> L39
            java.io.FileOutputStream r9 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L34
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L34
            java.nio.channels.FileChannel r10 = r1.getChannel()     // Catch: java.lang.Throwable -> L32
            java.nio.channels.FileChannel r0 = r9.getChannel()     // Catch: java.lang.Throwable -> L2d
            r3 = 0
            long r5 = r10.size()     // Catch: java.lang.Throwable -> L2d
            r2 = r10
            r7 = r0
            r2.transferTo(r3, r5, r7)     // Catch: java.lang.Throwable -> L2d
            r1.close()
            r9.close()
            r10.close()
            if (r0 == 0) goto L2c
            r0.close()
        L2c:
            return
        L2d:
            r2 = move-exception
            r8 = r0
            r0 = r10
            r10 = r8
            goto L3e
        L32:
            r10 = move-exception
            goto L37
        L34:
            r9 = move-exception
            r10 = r9
            r9 = r0
        L37:
            r2 = r10
            goto L3d
        L39:
            r9 = move-exception
            r2 = r9
            r9 = r0
            r1 = r9
        L3d:
            r10 = r0
        L3e:
            if (r1 == 0) goto L43
            r1.close()
        L43:
            if (r9 == 0) goto L48
            r9.close()
        L48:
            if (r0 == 0) goto L4d
            r0.close()
        L4d:
            if (r10 == 0) goto L52
            r10.close()
        L52:
            throw r2
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hy6.b(java.io.File, java.io.File):void");
    }

    public static void c(File file) {
        int iExitValue;
        if (file.isDirectory()) {
            if (file.exists()) {
                StringBuilder sbZ = jo.z("rm -rf ");
                sbZ.append(file.getAbsolutePath());
                try {
                    Process processExec = Runtime.getRuntime().exec(sbZ.toString());
                    processExec.waitFor();
                    iExitValue = processExec.exitValue();
                } catch (IOException | InterruptedException e) {
                    Log.e("IOUtilities", e.getLocalizedMessage() + " : " + file.getAbsolutePath());
                }
            } else {
                iExitValue = 1;
            }
            if (iExitValue <= 0 || !file.exists()) {
                return;
            }
            File[] fileArrListFiles = file.listFiles();
            if (fileArrListFiles != null) {
                for (File file2 : fileArrListFiles) {
                    if (file2 != null) {
                        if (file2.isDirectory()) {
                            c(file2);
                        } else {
                            file2.delete();
                        }
                    }
                }
            }
            file.delete();
        }
    }

    public static void d(String[] strArr) throws InterruptedException, IOException {
        int length = strArr.length / 100;
        int i = 0;
        int iExitValue = 1;
        while (i < length + 1) {
            int i2 = i * 100;
            int length2 = (i == length ? (strArr.length % 100) - 1 : 99) + i2;
            StringBuilder sb = new StringBuilder();
            int length3 = length2 > strArr.length + (-1) ? strArr.length : length2 + 1;
            for (int i3 = i2; i3 < length3; i3++) {
                if (i3 > i2) {
                    sb.append(StringUtils.SPACE);
                }
                sb.append((Object) strArr[i3]);
            }
            try {
                Process processExec = Runtime.getRuntime().exec(jo.n("rm -rf ", sb.toString()));
                processExec.waitFor();
                iExitValue = processExec.exitValue();
            } catch (IOException | InterruptedException e) {
                n56.y1("IOUtilities", e);
            }
            if (iExitValue > 0) {
                break;
            } else {
                i++;
            }
        }
        if (iExitValue > 0) {
            for (String str : strArr) {
                File file = new File(str);
                if (file.exists()) {
                    file.delete();
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006e, code lost:
    
        if (r8 == false) goto L28;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean e(java.io.File r6, java.lang.String r7, java.util.Set<java.lang.String> r8) {
        /*
            boolean r0 = android.text.TextUtils.isEmpty(r7)
            r1 = 0
            if (r0 != 0) goto Lfd
            if (r6 != 0) goto Lb
            goto Lfd
        Lb:
            boolean r0 = r6.exists()
            r2 = 1
            if (r0 == 0) goto L13
            return r2
        L13:
            java.io.File r0 = r6.getParentFile()
            boolean r3 = r0.exists()
            if (r3 != 0) goto L24
            boolean r0 = r0.mkdirs()
            if (r0 != 0) goto L24
            return r1
        L24:
            r0 = 3000(0xbb8, float:4.204E-42)
            okhttp3.OkHttpClient r0 = defpackage.n56.M(r0)
            okhttp3.Request$Builder r3 = new okhttp3.Request$Builder
            r3.<init>()
            okhttp3.Request$Builder r3 = r3.url(r7)
            okhttp3.Request r3 = r3.build()
            okhttp3.Call r3 = r0.newCall(r3)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            okhttp3.Response r3 = r3.execute()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            boolean r4 = r3.isSuccessful()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            if (r4 == 0) goto Lb5
            okhttp3.ResponseBody r4 = r3.body()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            okhttp3.MediaType r4 = r4.contentType()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.lang.String r4 = r4.toString()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            if (r4 == 0) goto L78
            if (r8 == 0) goto L78
            java.util.Iterator r8 = r8.iterator()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
        L59:
            boolean r5 = r8.hasNext()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            if (r5 == 0) goto L6d
            java.lang.Object r5 = r8.next()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.lang.String r5 = (java.lang.String) r5     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            boolean r5 = r4.startsWith(r5)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            if (r5 == 0) goto L59
            r8 = 1
            goto L6e
        L6d:
            r8 = 0
        L6e:
            if (r8 != 0) goto L78
        L70:
            okhttp3.ConnectionPool r6 = r0.connectionPool()
            r6.evictAll()
            return r1
        L78:
            java.io.FileOutputStream r8 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.<init>(r6)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.io.BufferedInputStream r6 = new java.io.BufferedInputStream     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            okhttp3.ResponseBody r3 = r3.body()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.io.InputStream r3 = r3.byteStream()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r6.<init>(r3)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r3 = 4096(0x1000, float:5.74E-42)
            byte[] r3 = new byte[r3]     // Catch: java.lang.Throwable -> Laa
        L8e:
            int r4 = r6.read(r3)     // Catch: java.lang.Throwable -> Laa
            r5 = -1
            if (r4 == r5) goto L99
            r8.write(r3, r1, r4)     // Catch: java.lang.Throwable -> Laa
            goto L8e
        L99:
            r6.close()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.flush()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.close()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            okhttp3.ConnectionPool r6 = r0.connectionPool()
            r6.evictAll()
            return r2
        Laa:
            r2 = move-exception
            r6.close()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.flush()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.close()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            throw r2     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
        Lb5:
            java.io.IOException r6 = new java.io.IOException     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.lang.StringBuilder r8 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.<init>()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            int r2 = r3.code()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.append(r2)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.lang.String r2 = " SC_BAD_REQUEST: "
            r8.append(r2)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r8.append(r7)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            java.lang.String r8 = r8.toString()     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            r6.<init>(r8)     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
            throw r6     // Catch: java.lang.Throwable -> Ld3 java.lang.Exception -> Ld5
        Ld3:
            r6 = move-exception
            goto Lf5
        Ld5:
            r6 = move-exception
            java.lang.String r8 = "IOUtilities"
            java.lang.StringBuilder r2 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Ld3
            r2.<init>()     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r6 = r6.getLocalizedMessage()     // Catch: java.lang.Throwable -> Ld3
            r2.append(r6)     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r6 = " : "
            r2.append(r6)     // Catch: java.lang.Throwable -> Ld3
            r2.append(r7)     // Catch: java.lang.Throwable -> Ld3
            java.lang.String r6 = r2.toString()     // Catch: java.lang.Throwable -> Ld3
            android.util.Log.e(r8, r6)     // Catch: java.lang.Throwable -> Ld3
            goto L70
        Lf5:
            okhttp3.ConnectionPool r7 = r0.connectionPool()
            r7.evictAll()
            throw r6
        Lfd:
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.hy6.e(java.io.File, java.lang.String, java.util.Set):boolean");
    }

    public static String f(File file) throws IOException {
        FileReader fileReader = new FileReader(file);
        try {
            try {
                StringBuilder sb = new StringBuilder(1024);
                char[] cArr = new char[1024];
                for (int i = fileReader.read(cArr); i != -1; i = fileReader.read(cArr)) {
                    sb.append(cArr, 0, i);
                }
                return new String(sb);
            } catch (Error unused) {
                throw new IOException("OutOfMemoryError");
            }
        } finally {
            fileReader.close();
        }
    }

    public static boolean g(String str, String str2, String str3) throws IOException {
        if (TextUtils.isEmpty(str3)) {
            return false;
        }
        File file = new File(str);
        if (!file.exists() && !file.mkdirs()) {
            return false;
        }
        FileWriter fileWriter = new FileWriter(new File(file, str2));
        try {
            fileWriter.write(str3);
            fileWriter.flush();
            fileWriter.close();
            return true;
        } catch (IOException unused) {
            fileWriter.flush();
            fileWriter.close();
            return false;
        } catch (Throwable th) {
            fileWriter.flush();
            fileWriter.close();
            throw th;
        }
    }
}
