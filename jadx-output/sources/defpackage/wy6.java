package defpackage;

import java.io.BufferedWriter;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.concurrent.Callable;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.regex.Pattern;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class wy6 implements Closeable {
    public static final Pattern u = Pattern.compile("[a-z0-9_-]{1,64}");
    public static final OutputStream v = new b();
    public final File e;
    public final File f;
    public final File g;
    public final File h;
    public final int i;
    public long j;
    public int k;
    public final int l;
    public Writer o;
    public int q;
    public long m = 0;
    public int n = 0;
    public final LinkedHashMap<String, d> p = new LinkedHashMap<>(0, 0.75f, true);
    public long r = 0;
    public final ThreadPoolExecutor s = new ThreadPoolExecutor(0, 1, 60, TimeUnit.SECONDS, new LinkedBlockingQueue());
    public final Callable<Void> t = new a();

    public class a implements Callable<Void> {
        public a() {
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            synchronized (wy6.this) {
                wy6 wy6Var = wy6.this;
                if (wy6Var.o == null) {
                    return null;
                }
                wy6Var.y();
                wy6.this.x();
                if (wy6.this.g()) {
                    wy6.this.q();
                    wy6.this.q = 0;
                }
                return null;
            }
        }
    }

    public static class b extends OutputStream {
        @Override // java.io.OutputStream
        public void write(int i) throws IOException {
        }
    }

    public final class d {
        public final String a;
        public final long[] b;
        public boolean c;
        public c d;
        public long e;

        public d(String str, a aVar) {
            this.a = str;
            this.b = new long[wy6.this.l];
        }

        public File a(int i) {
            return new File(wy6.this.e, this.a + "" + i);
        }

        public File b(int i) {
            return new File(wy6.this.e, this.a + "" + i + ".tmp");
        }

        public String c() throws IOException {
            StringBuilder sb = new StringBuilder();
            for (long j : this.b) {
                sb.append(' ');
                sb.append(j);
            }
            return sb.toString();
        }

        public final IOException d(String[] strArr) throws IOException {
            StringBuilder sbZ = jo.z("unexpected journal line: ");
            sbZ.append(Arrays.toString(strArr));
            throw new IOException(sbZ.toString());
        }
    }

    public final class e implements Closeable {
        public File[] e;
        public final InputStream[] f;

        public e(wy6 wy6Var, String str, long j, File[] fileArr, InputStream[] inputStreamArr, long[] jArr, a aVar) {
            this.e = fileArr;
            this.f = inputStreamArr;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            for (InputStream inputStream : this.f) {
                zy6.a(inputStream);
            }
        }
    }

    public wy6(File file, int i, int i2, long j, int i3) {
        this.e = file;
        this.i = i;
        this.f = new File(file, "journal");
        this.g = new File(file, "journal.tmp");
        this.h = new File(file, "journal.bkp");
        this.l = i2;
        this.j = j;
        this.k = i3;
    }

    public static void a(wy6 wy6Var, c cVar, boolean z) throws IOException {
        synchronized (wy6Var) {
            d dVar = cVar.a;
            if (dVar.d != cVar) {
                throw new IllegalStateException();
            }
            if (z && !dVar.c) {
                for (int i = 0; i < wy6Var.l; i++) {
                    if (!cVar.b[i]) {
                        cVar.a();
                        throw new IllegalStateException("Newly created entry didn't create value for index " + i);
                    }
                    if (!dVar.b(i).exists()) {
                        cVar.a();
                        return;
                    }
                }
            }
            for (int i2 = 0; i2 < wy6Var.l; i2++) {
                File fileB = dVar.b(i2);
                if (!z) {
                    c(fileB);
                } else if (fileB.exists()) {
                    File fileA = dVar.a(i2);
                    fileB.renameTo(fileA);
                    long j = dVar.b[i2];
                    long length = fileA.length();
                    dVar.b[i2] = length;
                    wy6Var.m = (wy6Var.m - j) + length;
                    wy6Var.n++;
                }
            }
            wy6Var.q++;
            dVar.d = null;
            if (dVar.c || z) {
                dVar.c = true;
                wy6Var.o.write("CLEAN " + dVar.a + dVar.c() + '\n');
                if (z) {
                    long j2 = wy6Var.r;
                    wy6Var.r = 1 + j2;
                    dVar.e = j2;
                }
            } else {
                wy6Var.p.remove(dVar.a);
                wy6Var.o.write("REMOVE " + dVar.a + '\n');
            }
            wy6Var.o.flush();
            if (wy6Var.m > wy6Var.j || wy6Var.n > wy6Var.k || wy6Var.g()) {
                wy6Var.s.submit(wy6Var.t);
            }
        }
    }

    public static void c(File file) throws IOException {
        if (file.exists() && !file.delete()) {
            throw new IOException();
        }
    }

    public static wy6 i(File file, int i, int i2, long j, int i3) throws IOException {
        if (j <= 0) {
            throw new IllegalArgumentException("maxSize <= 0");
        }
        if (i3 <= 0) {
            throw new IllegalArgumentException("maxFileCount <= 0");
        }
        if (i2 <= 0) {
            throw new IllegalArgumentException("valueCount <= 0");
        }
        File file2 = new File(file, "journal.bkp");
        if (file2.exists()) {
            File file3 = new File(file, "journal");
            if (file3.exists()) {
                file2.delete();
            } else {
                w(file2, file3, false);
            }
        }
        wy6 wy6Var = new wy6(file, i, i2, j, i3);
        if (wy6Var.f.exists()) {
            try {
                wy6Var.m();
                wy6Var.k();
                wy6Var.o = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(wy6Var.f, true), zy6.a));
                return wy6Var;
            } catch (IOException e2) {
                System.out.println("DiskLruCache " + file + " is corrupt: " + e2.getMessage() + ", removing");
                wy6Var.close();
                zy6.b(wy6Var.e);
            }
        }
        file.mkdirs();
        wy6 wy6Var2 = new wy6(file, i, i2, j, i3);
        wy6Var2.q();
        return wy6Var2;
    }

    public static void w(File file, File file2, boolean z) throws IOException {
        if (z) {
            c(file2);
        }
        if (!file.renameTo(file2)) {
            throw new IOException();
        }
    }

    public final void C(String str) {
        if (!u.matcher(str).matches()) {
            throw new IllegalArgumentException(jo.o("keys must match regex [a-z0-9_-]{1,64}: \"", str, "\""));
        }
    }

    public final void b() {
        if (this.o == null) {
            throw new IllegalStateException("cache is closed");
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.o == null) {
            return;
        }
        Iterator it = new ArrayList(this.p.values()).iterator();
        while (it.hasNext()) {
            c cVar = ((d) it.next()).d;
            if (cVar != null) {
                cVar.a();
            }
        }
        y();
        x();
        this.o.close();
        this.o = null;
    }

    public c e(String str) throws IOException {
        synchronized (this) {
            b();
            C(str);
            d dVar = this.p.get(str);
            if (dVar == null) {
                dVar = new d(str, null);
                this.p.put(str, dVar);
            } else if (dVar.d != null) {
                return null;
            }
            c cVar = new c(dVar, null);
            dVar.d = cVar;
            this.o.write("DIRTY " + str + '\n');
            this.o.flush();
            return cVar;
        }
    }

    public synchronized e f(String str) throws IOException {
        b();
        C(str);
        d dVar = this.p.get(str);
        if (dVar == null) {
            return null;
        }
        if (!dVar.c) {
            return null;
        }
        int i = this.l;
        File[] fileArr = new File[i];
        InputStream[] inputStreamArr = new InputStream[i];
        for (int i2 = 0; i2 < this.l; i2++) {
            try {
                File fileA = dVar.a(i2);
                fileArr[i2] = fileA;
                inputStreamArr[i2] = new FileInputStream(fileA);
            } catch (FileNotFoundException unused) {
                for (int i3 = 0; i3 < this.l && inputStreamArr[i3] != null; i3++) {
                    zy6.a(inputStreamArr[i3]);
                }
                return null;
            }
        }
        this.q++;
        this.o.append((CharSequence) ("READ " + str + '\n'));
        if (g()) {
            this.s.submit(this.t);
        }
        return new e(this, str, dVar.e, fileArr, inputStreamArr, dVar.b, null);
    }

    public final boolean g() {
        int i = this.q;
        return i >= 2000 && i >= this.p.size();
    }

    public final void k() throws IOException {
        c(this.g);
        Iterator<d> it = this.p.values().iterator();
        while (it.hasNext()) {
            d next = it.next();
            int i = 0;
            if (next.d == null) {
                while (i < this.l) {
                    this.m += next.b[i];
                    this.n++;
                    i++;
                }
            } else {
                next.d = null;
                while (i < this.l) {
                    c(next.a(i));
                    c(next.b(i));
                    i++;
                }
                it.remove();
            }
        }
    }

    public final void m() throws IOException {
        yy6 yy6Var = new yy6(new FileInputStream(this.f), zy6.a);
        try {
            String strB = yy6Var.b();
            String strB2 = yy6Var.b();
            String strB3 = yy6Var.b();
            String strB4 = yy6Var.b();
            String strB5 = yy6Var.b();
            if (!"libcore.io.DiskLruCache".equals(strB) || !"1".equals(strB2) || !Integer.toString(this.i).equals(strB3) || !Integer.toString(this.l).equals(strB4) || !"".equals(strB5)) {
                throw new IOException("unexpected journal header: [" + strB + ", " + strB2 + ", " + strB4 + ", " + strB5 + "]");
            }
            int i = 0;
            while (true) {
                try {
                    n(yy6Var.b());
                    i++;
                } catch (EOFException unused) {
                    this.q = i - this.p.size();
                    zy6.a(yy6Var);
                    return;
                }
            }
        } catch (Throwable th) {
            zy6.a(yy6Var);
            throw th;
        }
    }

    public final void n(String str) throws IOException {
        String strSubstring;
        int iIndexOf = str.indexOf(32);
        if (iIndexOf == -1) {
            throw new IOException(jo.n("unexpected journal line: ", str));
        }
        int i = iIndexOf + 1;
        int iIndexOf2 = str.indexOf(32, i);
        if (iIndexOf2 == -1) {
            strSubstring = str.substring(i);
            if (iIndexOf == 6 && str.startsWith("REMOVE")) {
                this.p.remove(strSubstring);
                return;
            }
        } else {
            strSubstring = str.substring(i, iIndexOf2);
        }
        d dVar = this.p.get(strSubstring);
        if (dVar == null) {
            dVar = new d(strSubstring, null);
            this.p.put(strSubstring, dVar);
        }
        if (iIndexOf2 == -1 || iIndexOf != 5 || !str.startsWith("CLEAN")) {
            if (iIndexOf2 == -1 && iIndexOf == 5 && str.startsWith("DIRTY")) {
                dVar.d = new c(dVar, null);
                return;
            } else {
                if (iIndexOf2 != -1 || iIndexOf != 4 || !str.startsWith("READ")) {
                    throw new IOException(jo.n("unexpected journal line: ", str));
                }
                return;
            }
        }
        String[] strArrSplit = str.substring(iIndexOf2 + 1).split(StringUtils.SPACE);
        dVar.c = true;
        dVar.d = null;
        if (strArrSplit.length != wy6.this.l) {
            dVar.d(strArrSplit);
            throw null;
        }
        for (int i2 = 0; i2 < strArrSplit.length; i2++) {
            try {
                dVar.b[i2] = Long.parseLong(strArrSplit[i2]);
            } catch (NumberFormatException unused) {
                dVar.d(strArrSplit);
                throw null;
            }
        }
    }

    public final synchronized void q() throws IOException {
        Writer writer = this.o;
        if (writer != null) {
            writer.close();
        }
        BufferedWriter bufferedWriter = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.g), zy6.a));
        try {
            bufferedWriter.write("libcore.io.DiskLruCache");
            bufferedWriter.write("\n");
            bufferedWriter.write("1");
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.i));
            bufferedWriter.write("\n");
            bufferedWriter.write(Integer.toString(this.l));
            bufferedWriter.write("\n");
            bufferedWriter.write("\n");
            for (d dVar : this.p.values()) {
                if (dVar.d != null) {
                    bufferedWriter.write("DIRTY " + dVar.a + '\n');
                } else {
                    bufferedWriter.write("CLEAN " + dVar.a + dVar.c() + '\n');
                }
            }
            bufferedWriter.close();
            if (this.f.exists()) {
                w(this.f, this.h, true);
            }
            w(this.g, this.f, false);
            this.h.delete();
            this.o = new BufferedWriter(new OutputStreamWriter(new FileOutputStream(this.f, true), zy6.a));
        } catch (Throwable th) {
            bufferedWriter.close();
            throw th;
        }
    }

    public synchronized boolean t(String str) throws IOException {
        b();
        C(str);
        d dVar = this.p.get(str);
        if (dVar != null && dVar.d == null) {
            for (int i = 0; i < this.l; i++) {
                File fileA = dVar.a(i);
                if (fileA.exists() && !fileA.delete()) {
                    throw new IOException("failed to delete " + fileA);
                }
                long j = this.m;
                long[] jArr = dVar.b;
                this.m = j - jArr[i];
                this.n--;
                jArr[i] = 0;
            }
            this.q++;
            this.o.append((CharSequence) ("REMOVE " + str + '\n'));
            this.p.remove(str);
            if (g()) {
                this.s.submit(this.t);
            }
            return true;
        }
        return false;
    }

    public final void x() throws IOException {
        while (this.n > this.k) {
            t(this.p.entrySet().iterator().next().getKey());
        }
    }

    public final void y() throws IOException {
        while (this.m > this.j) {
            t(this.p.entrySet().iterator().next().getKey());
        }
    }

    public final class c {
        public final d a;
        public final boolean[] b;
        public boolean c;

        public c(d dVar, a aVar) {
            this.a = dVar;
            this.b = dVar.c ? null : new boolean[wy6.this.l];
        }

        public void a() throws IOException {
            wy6.a(wy6.this, this, false);
        }

        public void b() throws IOException {
            if (!this.c) {
                wy6.a(wy6.this, this, true);
            } else {
                wy6.a(wy6.this, this, false);
                wy6.this.t(this.a.a);
            }
        }

        public OutputStream c(int i) throws IOException {
            FileOutputStream fileOutputStream;
            a aVar;
            synchronized (wy6.this) {
                d dVar = this.a;
                if (dVar.d != this) {
                    throw new IllegalStateException();
                }
                if (!dVar.c) {
                    this.b[i] = true;
                }
                File fileB = dVar.b(i);
                try {
                    fileOutputStream = new FileOutputStream(fileB);
                } catch (FileNotFoundException unused) {
                    wy6.this.e.mkdirs();
                    try {
                        fileOutputStream = new FileOutputStream(fileB);
                    } catch (FileNotFoundException unused2) {
                        return wy6.v;
                    }
                }
                aVar = new a(fileOutputStream, null);
            }
            return aVar;
        }

        public class a extends FilterOutputStream {
            public a(OutputStream outputStream, a aVar) {
                super(outputStream);
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() throws IOException {
                try {
                    ((FilterOutputStream) this).out.close();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Flushable
            public void flush() throws IOException {
                try {
                    ((FilterOutputStream) this).out.flush();
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(int i) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(i);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }

            @Override // java.io.FilterOutputStream, java.io.OutputStream
            public void write(byte[] bArr, int i, int i2) throws IOException {
                try {
                    ((FilterOutputStream) this).out.write(bArr, i, i2);
                } catch (IOException unused) {
                    c.this.c = true;
                }
            }
        }
    }
}
