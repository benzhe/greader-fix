package defpackage;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

/* loaded from: classes2.dex */
public interface f37 extends g37, n37 {

    public static final class a implements f37 {
        @Override // defpackage.g37, defpackage.n37
        public String a() {
            return "gzip";
        }

        @Override // defpackage.n37
        public InputStream b(InputStream inputStream) throws IOException {
            return new GZIPInputStream(inputStream);
        }

        @Override // defpackage.g37
        public OutputStream c(OutputStream outputStream) throws IOException {
            return new GZIPOutputStream(outputStream);
        }
    }

    public static final class b implements f37 {
        public static final f37 a = new b();

        @Override // defpackage.g37, defpackage.n37
        public String a() {
            return "identity";
        }

        @Override // defpackage.n37
        public InputStream b(InputStream inputStream) {
            return inputStream;
        }

        @Override // defpackage.g37
        public OutputStream c(OutputStream outputStream) {
            return outputStream;
        }
    }
}
