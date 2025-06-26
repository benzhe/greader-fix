package org.apache.commons.io.input;

import defpackage.jo;
import java.io.Reader;
import java.io.Serializable;
import java.util.Objects;

/* loaded from: classes2.dex */
public class CharSequenceReader extends Reader implements Serializable {
    private static final long serialVersionUID = 3724187752191401220L;
    private final CharSequence charSequence;
    private int idx;
    private int mark;

    public CharSequenceReader(String str) {
        this.charSequence = str == null ? "" : str;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.idx = 0;
        this.mark = 0;
    }

    @Override // java.io.Reader
    public void mark(int i) {
        this.mark = this.idx;
    }

    @Override // java.io.Reader
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public int read() {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        CharSequence charSequence = this.charSequence;
        int i = this.idx;
        this.idx = i + 1;
        return charSequence.charAt(i);
    }

    @Override // java.io.Reader
    public void reset() {
        this.idx = this.mark;
    }

    @Override // java.io.Reader
    public long skip(long j) {
        if (j < 0) {
            throw new IllegalArgumentException(jo.j("Number of characters to skip is less than zero: ", j));
        }
        if (this.idx >= this.charSequence.length()) {
            return -1L;
        }
        int iMin = (int) Math.min(this.charSequence.length(), this.idx + j);
        int i = iMin - this.idx;
        this.idx = iMin;
        return i;
    }

    public String toString() {
        return this.charSequence.toString();
    }

    @Override // java.io.Reader
    public int read(char[] cArr, int i, int i2) {
        if (this.idx >= this.charSequence.length()) {
            return -1;
        }
        Objects.requireNonNull(cArr, "Character array is missing");
        if (i2 < 0 || i < 0 || i + i2 > cArr.length) {
            StringBuilder sbZ = jo.z("Array Size=");
            sbZ.append(cArr.length);
            sbZ.append(", offset=");
            sbZ.append(i);
            sbZ.append(", length=");
            sbZ.append(i2);
            throw new IndexOutOfBoundsException(sbZ.toString());
        }
        int i3 = 0;
        for (int i4 = 0; i4 < i2; i4++) {
            int i5 = read();
            if (i5 == -1) {
                return i3;
            }
            cArr[i + i4] = (char) i5;
            i3++;
        }
        return i3;
    }
}
