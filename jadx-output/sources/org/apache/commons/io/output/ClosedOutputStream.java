package org.apache.commons.io.output;

import defpackage.jo;
import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes2.dex */
public class ClosedOutputStream extends OutputStream {
    public static final ClosedOutputStream CLOSED_OUTPUT_STREAM = new ClosedOutputStream();

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
        throw new IOException("flush() failed: stream is closed");
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        throw new IOException(jo.h("write(", i, ") failed: stream is closed"));
    }
}
