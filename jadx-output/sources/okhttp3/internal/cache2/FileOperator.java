package okhttp3.internal.cache2;

import defpackage.im7;
import defpackage.xs7;
import java.io.IOException;
import java.nio.channels.FileChannel;

/* loaded from: classes2.dex */
public final class FileOperator {
    private final FileChannel fileChannel;

    public FileOperator(FileChannel fileChannel) {
        im7.e(fileChannel, "fileChannel");
        this.fileChannel = fileChannel;
    }

    public final void read(long j, xs7 xs7Var, long j2) throws IOException {
        im7.e(xs7Var, "sink");
        if (j2 < 0) {
            throw new IndexOutOfBoundsException();
        }
        while (j2 > 0) {
            long jTransferTo = this.fileChannel.transferTo(j, j2, xs7Var);
            j += jTransferTo;
            j2 -= jTransferTo;
        }
    }

    public final void write(long j, xs7 xs7Var, long j2) throws IOException {
        im7.e(xs7Var, "source");
        if (j2 < 0 || j2 > xs7Var.f) {
            throw new IndexOutOfBoundsException();
        }
        long j3 = j;
        long j4 = j2;
        while (j4 > 0) {
            long jTransferFrom = this.fileChannel.transferFrom(xs7Var, j3, j4);
            j3 += jTransferFrom;
            j4 -= jTransferFrom;
        }
    }
}
