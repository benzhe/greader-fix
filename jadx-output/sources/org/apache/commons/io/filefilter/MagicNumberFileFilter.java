package org.apache.commons.io.filefilter;

import defpackage.jo;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.io.Serializable;
import java.nio.charset.Charset;
import java.util.Arrays;

/* loaded from: classes2.dex */
public class MagicNumberFileFilter extends AbstractFileFilter implements Serializable {
    private static final long serialVersionUID = -547733176983104172L;
    private final long byteOffset;
    private final byte[] magicNumbers;

    public MagicNumberFileFilter(byte[] bArr) {
        this(bArr, 0L);
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter, org.apache.commons.io.filefilter.IOFileFilter, java.io.FileFilter
    public boolean accept(File file) throws IOException {
        if (file != null && file.isFile() && file.canRead()) {
            try {
                RandomAccessFile randomAccessFile = new RandomAccessFile(file, "r");
                try {
                    byte[] bArr = new byte[this.magicNumbers.length];
                    randomAccessFile.seek(this.byteOffset);
                    int i = randomAccessFile.read(bArr);
                    byte[] bArr2 = this.magicNumbers;
                    if (i != bArr2.length) {
                        randomAccessFile.close();
                        return false;
                    }
                    boolean zEquals = Arrays.equals(bArr2, bArr);
                    randomAccessFile.close();
                    return zEquals;
                } finally {
                }
            } catch (IOException unused) {
            }
        }
        return false;
    }

    @Override // org.apache.commons.io.filefilter.AbstractFileFilter
    public String toString() {
        StringBuilder sb = new StringBuilder(super.toString());
        sb.append("(");
        sb.append(new String(this.magicNumbers, Charset.defaultCharset()));
        sb.append(",");
        return jo.r(sb, this.byteOffset, ")");
    }

    public MagicNumberFileFilter(String str) {
        this(str, 0L);
    }

    public MagicNumberFileFilter(String str, long j) {
        if (str != null) {
            if (str.isEmpty()) {
                throw new IllegalArgumentException("The magic number must contain at least one byte");
            }
            if (j >= 0) {
                this.magicNumbers = str.getBytes(Charset.defaultCharset());
                this.byteOffset = j;
                return;
            }
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        throw new IllegalArgumentException("The magic number cannot be null");
    }

    public MagicNumberFileFilter(byte[] bArr, long j) {
        if (bArr != null) {
            if (bArr.length == 0) {
                throw new IllegalArgumentException("The magic number must contain at least one byte");
            }
            if (j >= 0) {
                byte[] bArr2 = new byte[bArr.length];
                this.magicNumbers = bArr2;
                System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
                this.byteOffset = j;
                return;
            }
            throw new IllegalArgumentException("The offset cannot be negative");
        }
        throw new IllegalArgumentException("The magic number cannot be null");
    }
}
