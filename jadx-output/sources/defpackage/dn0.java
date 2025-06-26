package defpackage;

import android.os.SystemClock;
import android.text.TextUtils;
import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.DataInputStream;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.TreeMap;
import org.apache.commons.codec.binary.Base64;

/* loaded from: classes.dex */
public final class dn0 implements hg3 {
    public final wq0 c;
    public final Map<String, zo0> a = new LinkedHashMap(16, 0.75f, true);
    public long b = 0;
    public final int d = 20971520;

    public dn0(File file) {
        this.c = new yp0(file);
    }

    public static int c(InputStream inputStream) throws IOException {
        int i = inputStream.read();
        if (i != -1) {
            return i;
        }
        throw new EOFException();
    }

    public static String d(ur0 ur0Var) throws IOException {
        return new String(j(ur0Var, m(ur0Var)), "UTF-8");
    }

    public static void e(OutputStream outputStream, int i) throws IOException {
        outputStream.write(i & Base64.BASELENGTH);
        outputStream.write((i >> 8) & Base64.BASELENGTH);
        outputStream.write((i >> 16) & Base64.BASELENGTH);
        outputStream.write(i >>> 24);
    }

    public static void f(OutputStream outputStream, long j) throws IOException {
        outputStream.write((byte) j);
        outputStream.write((byte) (j >>> 8));
        outputStream.write((byte) (j >>> 16));
        outputStream.write((byte) (j >>> 24));
        outputStream.write((byte) (j >>> 32));
        outputStream.write((byte) (j >>> 40));
        outputStream.write((byte) (j >>> 48));
        outputStream.write((byte) (j >>> 56));
    }

    public static void g(OutputStream outputStream, String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        f(outputStream, bytes.length);
        outputStream.write(bytes, 0, bytes.length);
    }

    public static byte[] j(ur0 ur0Var, long j) throws IOException {
        long j2 = ur0Var.e - ur0Var.f;
        if (j >= 0 && j <= j2) {
            int i = (int) j;
            if (i == j) {
                byte[] bArr = new byte[i];
                new DataInputStream(ur0Var).readFully(bArr);
                return bArr;
            }
        }
        StringBuilder sb = new StringBuilder(73);
        sb.append("streamToBytes length=");
        sb.append(j);
        sb.append(", maxLength=");
        sb.append(j2);
        throw new IOException(sb.toString());
    }

    public static int k(InputStream inputStream) throws IOException {
        return (c(inputStream) << 24) | c(inputStream) | 0 | (c(inputStream) << 8) | (c(inputStream) << 16);
    }

    public static long m(InputStream inputStream) throws IOException {
        return (c(inputStream) & 255) | 0 | ((c(inputStream) & 255) << 8) | ((c(inputStream) & 255) << 16) | ((c(inputStream) & 255) << 24) | ((c(inputStream) & 255) << 32) | ((c(inputStream) & 255) << 40) | ((c(inputStream) & 255) << 48) | ((255 & c(inputStream)) << 56);
    }

    public static String n(String str) {
        int length = str.length() / 2;
        String strValueOf = String.valueOf(String.valueOf(str.substring(0, length).hashCode()));
        String strValueOf2 = String.valueOf(String.valueOf(str.substring(length).hashCode()));
        return strValueOf2.length() != 0 ? strValueOf.concat(strValueOf2) : new String(strValueOf);
    }

    public final synchronized void a() {
        File fileO = this.c.o();
        if (!fileO.exists()) {
            if (!fileO.mkdirs()) {
                tg0.b("Unable to create cache dir %s", fileO.getAbsolutePath());
            }
            return;
        }
        File[] fileArrListFiles = fileO.listFiles();
        if (fileArrListFiles == null) {
            return;
        }
        for (File file : fileArrListFiles) {
            try {
                long length = file.length();
                ur0 ur0Var = new ur0(new BufferedInputStream(new FileInputStream(file)), length);
                try {
                    zo0 zo0VarB = zo0.b(ur0Var);
                    zo0VarB.a = length;
                    h(zo0VarB.b, zo0VarB);
                    ur0Var.close();
                } catch (Throwable th) {
                    ur0Var.close();
                    throw th;
                }
            } catch (IOException unused) {
                file.delete();
            }
        }
    }

    public final synchronized void b(String str) {
        boolean zDelete = o(str).delete();
        zo0 zo0VarRemove = this.a.remove(str);
        if (zo0VarRemove != null) {
            this.b -= zo0VarRemove.a;
        }
        if (!zDelete) {
            tg0.a("Could not delete cache entry for key=%s, filename=%s", str, n(str));
        }
    }

    public final void h(String str, zo0 zo0Var) {
        if (this.a.containsKey(str)) {
            this.b = (zo0Var.a - this.a.get(str).a) + this.b;
        } else {
            this.b += zo0Var.a;
        }
        this.a.put(str, zo0Var);
    }

    public final synchronized void i(String str, ui3 ui3Var) {
        long j;
        long j2 = this.b;
        byte[] bArr = ui3Var.a;
        long length = j2 + bArr.length;
        int i = this.d;
        if (length <= i || bArr.length <= i * 0.9f) {
            File fileO = o(str);
            try {
                BufferedOutputStream bufferedOutputStream = new BufferedOutputStream(new FileOutputStream(fileO));
                zo0 zo0Var = new zo0(str, ui3Var);
                if (!zo0Var.a(bufferedOutputStream)) {
                    bufferedOutputStream.close();
                    tg0.a("Failed to write header for %s", fileO.getAbsolutePath());
                    throw new IOException();
                }
                bufferedOutputStream.write(ui3Var.a);
                bufferedOutputStream.close();
                zo0Var.a = fileO.length();
                h(str, zo0Var);
                if (this.b >= this.d) {
                    if (tg0.a) {
                        tg0.c("Pruning old cache entries.", new Object[0]);
                    }
                    long j3 = this.b;
                    long jElapsedRealtime = SystemClock.elapsedRealtime();
                    Iterator<Map.Entry<String, zo0>> it = this.a.entrySet().iterator();
                    int i2 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            j = jElapsedRealtime;
                            break;
                        }
                        zo0 value = it.next().getValue();
                        if (o(value.b).delete()) {
                            j = jElapsedRealtime;
                            this.b -= value.a;
                        } else {
                            j = jElapsedRealtime;
                            String str2 = value.b;
                            tg0.a("Could not delete cache entry for key=%s, filename=%s", str2, n(str2));
                        }
                        it.remove();
                        i2++;
                        if (this.b < this.d * 0.9f) {
                            break;
                        } else {
                            jElapsedRealtime = j;
                        }
                    }
                    if (tg0.a) {
                        tg0.c("pruned %d files, %d bytes, %d ms", Integer.valueOf(i2), Long.valueOf(this.b - j3), Long.valueOf(SystemClock.elapsedRealtime() - j));
                    }
                }
            } catch (IOException unused) {
                if (!fileO.delete()) {
                    tg0.a("Could not clean up file %s", fileO.getAbsolutePath());
                }
                if (this.c.o().exists()) {
                    return;
                }
                tg0.a("Re-initializing cache after external clearing.", new Object[0]);
                this.a.clear();
                this.b = 0L;
                a();
            }
        }
    }

    public final synchronized ui3 l(String str) {
        zo0 zo0Var = this.a.get(str);
        if (zo0Var == null) {
            return null;
        }
        File fileO = o(str);
        try {
            ur0 ur0Var = new ur0(new BufferedInputStream(new FileInputStream(fileO)), fileO.length());
            try {
                zo0 zo0VarB = zo0.b(ur0Var);
                if (!TextUtils.equals(str, zo0VarB.b)) {
                    tg0.a("%s: key=%s, found=%s", fileO.getAbsolutePath(), str, zo0VarB.b);
                    zo0 zo0VarRemove = this.a.remove(str);
                    if (zo0VarRemove != null) {
                        this.b -= zo0VarRemove.a;
                    }
                    return null;
                }
                byte[] bArrJ = j(ur0Var, ur0Var.e - ur0Var.f);
                ui3 ui3Var = new ui3();
                ui3Var.a = bArrJ;
                ui3Var.b = zo0Var.c;
                ui3Var.c = zo0Var.d;
                ui3Var.d = zo0Var.e;
                ui3Var.e = zo0Var.f;
                ui3Var.f = zo0Var.g;
                List<br3> list = zo0Var.h;
                TreeMap treeMap = new TreeMap(String.CASE_INSENSITIVE_ORDER);
                for (br3 br3Var : list) {
                    treeMap.put(br3Var.a, br3Var.b);
                }
                ui3Var.g = treeMap;
                ui3Var.h = Collections.unmodifiableList(zo0Var.h);
                return ui3Var;
            } finally {
                ur0Var.close();
            }
        } catch (IOException e) {
            tg0.a("%s: %s", fileO.getAbsolutePath(), e.toString());
            b(str);
            return null;
        }
    }

    public final File o(String str) {
        return new File(this.c.o(), n(str));
    }

    public dn0(wq0 wq0Var) {
        this.c = wq0Var;
    }
}
