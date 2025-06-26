package defpackage;

import android.support.v4.media.session.PlaybackStateCompat;
import androidx.recyclerview.widget.RecyclerView;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.nio.channels.FileChannel;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public class vj5 implements Closeable {
    public static final Logger k = Logger.getLogger(vj5.class.getName());
    public final RandomAccessFile e;
    public int f;
    public int g;
    public b h;
    public b i;
    public final byte[] j = new byte[16];

    public class a implements d {
        public boolean a = true;
        public final /* synthetic */ StringBuilder b;

        public a(vj5 vj5Var, StringBuilder sb) {
            this.b = sb;
        }

        @Override // vj5.d
        public void a(InputStream inputStream, int i) throws IOException {
            if (this.a) {
                this.a = false;
            } else {
                this.b.append(", ");
            }
            this.b.append(i);
        }
    }

    public static class b {
        public static final b c = new b(0, 0);
        public final int a;
        public final int b;

        public b(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(b.class.getSimpleName());
            sb.append("[position = ");
            sb.append(this.a);
            sb.append(", length = ");
            return jo.q(sb, this.b, "]");
        }
    }

    public interface d {
        void a(InputStream inputStream, int i) throws IOException;
    }

    public vj5(File file) throws IOException {
        if (!file.exists()) {
            File file2 = new File(file.getPath() + ".tmp");
            RandomAccessFile randomAccessFile = new RandomAccessFile(file2, "rwd");
            try {
                randomAccessFile.setLength(PlaybackStateCompat.ACTION_SKIP_TO_QUEUE_ITEM);
                randomAccessFile.seek(0L);
                byte[] bArr = new byte[16];
                int[] iArr = {RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, 0, 0, 0};
                int i = 0;
                for (int i2 = 0; i2 < 4; i2++) {
                    y(bArr, i, iArr[i2]);
                    i += 4;
                }
                randomAccessFile.write(bArr);
                randomAccessFile.close();
                if (!file2.renameTo(file)) {
                    throw new IOException("Rename failed!");
                }
            } catch (Throwable th) {
                randomAccessFile.close();
                throw th;
            }
        }
        RandomAccessFile randomAccessFile2 = new RandomAccessFile(file, "rwd");
        this.e = randomAccessFile2;
        randomAccessFile2.seek(0L);
        randomAccessFile2.readFully(this.j);
        int iK = k(this.j, 0);
        this.f = iK;
        if (iK > randomAccessFile2.length()) {
            StringBuilder sbZ = jo.z("File is truncated. Expected length: ");
            sbZ.append(this.f);
            sbZ.append(", Actual length: ");
            sbZ.append(randomAccessFile2.length());
            throw new IOException(sbZ.toString());
        }
        this.g = k(this.j, 4);
        int iK2 = k(this.j, 8);
        int iK3 = k(this.j, 12);
        this.h = i(iK2);
        this.i = i(iK3);
    }

    public static int a(vj5 vj5Var, int i) {
        int i2 = vj5Var.f;
        return i < i2 ? i : (i + 16) - i2;
    }

    public static int k(byte[] bArr, int i) {
        return ((bArr[i] & 255) << 24) + ((bArr[i + 1] & 255) << 16) + ((bArr[i + 2] & 255) << 8) + (bArr[i + 3] & 255);
    }

    public static void y(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >> 24);
        bArr[i + 1] = (byte) (i2 >> 16);
        bArr[i + 2] = (byte) (i2 >> 8);
        bArr[i + 3] = (byte) i2;
    }

    public void b(byte[] bArr) throws IOException {
        int iW;
        int length = bArr.length;
        synchronized (this) {
            if ((0 | length) >= 0) {
                if (length <= bArr.length - 0) {
                    e(length);
                    boolean zG = g();
                    if (zG) {
                        iW = 16;
                    } else {
                        b bVar = this.i;
                        iW = w(bVar.a + 4 + bVar.b);
                    }
                    b bVar2 = new b(iW, length);
                    y(this.j, 0, length);
                    q(bVar2.a, this.j, 0, 4);
                    q(bVar2.a + 4, bArr, 0, length);
                    x(this.f, this.g + 1, zG ? bVar2.a : this.h.a, bVar2.a);
                    this.i = bVar2;
                    this.g++;
                    if (zG) {
                        this.h = bVar2;
                    }
                }
            }
            throw new IndexOutOfBoundsException();
        }
    }

    public synchronized void c() throws IOException {
        x(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT, 0, 0, 0);
        this.g = 0;
        b bVar = b.c;
        this.h = bVar;
        this.i = bVar;
        if (this.f > 4096) {
            this.e.setLength(RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT);
            this.e.getChannel().force(true);
        }
        this.f = RecyclerView.a0.FLAG_APPEARED_IN_PRE_LAYOUT;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        this.e.close();
    }

    public final void e(int i) throws IOException {
        int i2 = i + 4;
        int iT = this.f - t();
        if (iT >= i2) {
            return;
        }
        int i3 = this.f;
        do {
            iT += i3;
            i3 <<= 1;
        } while (iT < i2);
        this.e.setLength(i3);
        this.e.getChannel().force(true);
        b bVar = this.i;
        int iW = w(bVar.a + 4 + bVar.b);
        if (iW < this.h.a) {
            FileChannel channel = this.e.getChannel();
            channel.position(this.f);
            long j = iW - 4;
            if (channel.transferTo(16L, j, channel) != j) {
                throw new AssertionError("Copied insufficient number of bytes!");
            }
        }
        int i4 = this.i.a;
        int i5 = this.h.a;
        if (i4 < i5) {
            int i6 = (this.f + i4) - 16;
            x(i3, this.g, i5, i6);
            this.i = new b(i6, this.i.b);
        } else {
            x(i3, this.g, i5, i4);
        }
        this.f = i3;
    }

    public synchronized void f(d dVar) throws IOException {
        int iW = this.h.a;
        for (int i = 0; i < this.g; i++) {
            b bVarI = i(iW);
            dVar.a(new c(bVarI, null), bVarI.b);
            iW = w(bVarI.a + 4 + bVarI.b);
        }
    }

    public synchronized boolean g() {
        return this.g == 0;
    }

    public final b i(int i) throws IOException {
        if (i == 0) {
            return b.c;
        }
        this.e.seek(i);
        return new b(i, this.e.readInt());
    }

    public synchronized void m() throws IOException {
        if (g()) {
            throw new NoSuchElementException();
        }
        if (this.g == 1) {
            c();
        } else {
            b bVar = this.h;
            int iW = w(bVar.a + 4 + bVar.b);
            n(iW, this.j, 0, 4);
            int iK = k(this.j, 0);
            x(this.f, this.g - 1, iW, this.i.a);
            this.g--;
            this.h = new b(iW, iK);
        }
    }

    public final void n(int i, byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.e.seek(i);
            this.e.readFully(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.e.seek(i);
        this.e.readFully(bArr, i2, i5);
        this.e.seek(16L);
        this.e.readFully(bArr, i2 + i5, i3 - i5);
    }

    public final void q(int i, byte[] bArr, int i2, int i3) throws IOException {
        int i4 = this.f;
        if (i >= i4) {
            i = (i + 16) - i4;
        }
        if (i + i3 <= i4) {
            this.e.seek(i);
            this.e.write(bArr, i2, i3);
            return;
        }
        int i5 = i4 - i;
        this.e.seek(i);
        this.e.write(bArr, i2, i5);
        this.e.seek(16L);
        this.e.write(bArr, i2 + i5, i3 - i5);
    }

    public int t() {
        if (this.g == 0) {
            return 16;
        }
        b bVar = this.i;
        int i = bVar.a;
        int i2 = this.h.a;
        return i >= i2 ? (i - i2) + 4 + bVar.b + 16 : (((i + 4) + bVar.b) + this.f) - i2;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(vj5.class.getSimpleName());
        sb.append('[');
        sb.append("fileLength=");
        sb.append(this.f);
        sb.append(", size=");
        sb.append(this.g);
        sb.append(", first=");
        sb.append(this.h);
        sb.append(", last=");
        sb.append(this.i);
        sb.append(", element lengths=[");
        try {
            f(new a(this, sb));
        } catch (IOException e) {
            k.log(Level.WARNING, "read error", (Throwable) e);
        }
        sb.append("]]");
        return sb.toString();
    }

    public final int w(int i) {
        int i2 = this.f;
        return i < i2 ? i : (i + 16) - i2;
    }

    public final void x(int i, int i2, int i3, int i4) throws IOException {
        byte[] bArr = this.j;
        int[] iArr = {i, i2, i3, i4};
        int i5 = 0;
        for (int i6 = 0; i6 < 4; i6++) {
            y(bArr, i5, iArr[i6]);
            i5 += 4;
        }
        this.e.seek(0L);
        this.e.write(this.j);
    }

    public final class c extends InputStream {
        public int e;
        public int f;

        public c(b bVar, a aVar) {
            int i = bVar.a + 4;
            int i2 = vj5.this.f;
            this.e = i >= i2 ? (i + 16) - i2 : i;
            this.f = bVar.b;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            Objects.requireNonNull(bArr, "buffer");
            if ((i | i2) < 0 || i2 > bArr.length - i) {
                throw new ArrayIndexOutOfBoundsException();
            }
            int i3 = this.f;
            if (i3 <= 0) {
                return -1;
            }
            if (i2 > i3) {
                i2 = i3;
            }
            vj5.this.n(this.e, bArr, i, i2);
            this.e = vj5.a(vj5.this, this.e + i2);
            this.f -= i2;
            return i2;
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            if (this.f == 0) {
                return -1;
            }
            vj5.this.e.seek(this.e);
            int i = vj5.this.e.read();
            this.e = vj5.a(vj5.this, this.e + 1);
            this.f--;
            return i;
        }
    }
}
