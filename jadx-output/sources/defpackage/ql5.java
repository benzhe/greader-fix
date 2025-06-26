package defpackage;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;

/* loaded from: classes.dex */
public class ql5 extends FileOutputStream {
    public static final FilenameFilter h = new a();
    public final String e;
    public File f;
    public boolean g;

    public class a implements FilenameFilter {
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.endsWith(".cls_temp");
        }
    }

    public ql5(File file, String str) throws FileNotFoundException {
        super(new File(file, jo.n(str, ".cls_temp")));
        this.g = false;
        StringBuilder sb = new StringBuilder();
        sb.append(file);
        String strS = jo.s(sb, File.separator, str);
        this.e = strS;
        this.f = new File(jo.n(strS, ".cls_temp"));
    }

    public void a() throws IOException {
        if (this.g) {
            return;
        }
        this.g = true;
        flush();
        super.close();
    }

    @Override // java.io.FileOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public synchronized void close() throws IOException {
        if (this.g) {
            return;
        }
        this.g = true;
        flush();
        super.close();
        File file = new File(this.e + ".cls");
        if (this.f.renameTo(file)) {
            this.f = null;
            return;
        }
        String str = "";
        if (file.exists()) {
            str = " (target already exists)";
        } else if (!this.f.exists()) {
            str = " (source does not exist)";
        }
        throw new IOException("Could not rename temp file: " + this.f + " -> " + file + str);
    }
}
