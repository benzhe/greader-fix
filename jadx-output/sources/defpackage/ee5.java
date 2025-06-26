package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.Objects;

/* loaded from: classes.dex */
public final class ee5 {
    public static final /* synthetic */ int a = 0;

    public static class a extends OutputStream {
        public String toString() {
            return "ByteStreams.nullOutputStream()";
        }

        @Override // java.io.OutputStream
        public void write(int i) {
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr) {
            Objects.requireNonNull(bArr);
        }

        @Override // java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
        }
    }

    static {
        new a();
    }

    public static byte[] a(Deque<byte[]> deque, int i) {
        byte[] bArr = new byte[i];
        int i2 = i;
        while (i2 > 0) {
            byte[] bArrRemoveFirst = deque.removeFirst();
            int iMin = Math.min(i2, bArrRemoveFirst.length);
            System.arraycopy(bArrRemoveFirst, 0, bArr, i - i2, iMin);
            i2 -= iMin;
        }
        return bArr;
    }

    public static byte[] b(InputStream inputStream) throws IOException {
        Objects.requireNonNull(inputStream);
        ArrayDeque arrayDeque = new ArrayDeque(20);
        int i = RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST;
        int i2 = 0;
        while (i2 < 2147483639) {
            int iMin = Math.min(i, 2147483639 - i2);
            byte[] bArr = new byte[iMin];
            arrayDeque.add(bArr);
            int i3 = 0;
            while (i3 < iMin) {
                int i4 = inputStream.read(bArr, i3, iMin - i3);
                if (i4 == -1) {
                    return a(arrayDeque, i2);
                }
                i3 += i4;
                i2 += i4;
            }
            long j = i * 2;
            i = j > 2147483647L ? Integer.MAX_VALUE : j < -2147483648L ? Integer.MIN_VALUE : (int) j;
        }
        if (inputStream.read() == -1) {
            return a(arrayDeque, 2147483639);
        }
        throw new OutOfMemoryError("input is too large to fit in a byte array");
    }
}
