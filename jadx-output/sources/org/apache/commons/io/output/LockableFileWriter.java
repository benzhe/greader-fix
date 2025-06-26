package org.apache.commons.io.output;

import defpackage.jo;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.Writer;
import java.nio.charset.Charset;
import org.apache.commons.io.Charsets;
import org.apache.commons.io.FileUtils;

/* loaded from: classes2.dex */
public class LockableFileWriter extends Writer {
    private static final String LCK = ".lck";
    private final File lockFile;
    private final Writer out;

    public LockableFileWriter(String str) throws IOException {
        this(str, false, (String) null);
    }

    private void createLock() throws IOException {
        synchronized (LockableFileWriter.class) {
            if (!this.lockFile.createNewFile()) {
                throw new IOException("Can't write file, lock " + this.lockFile.getAbsolutePath() + " exists");
            }
            this.lockFile.deleteOnExit();
        }
    }

    private Writer initWriter(File file, Charset charset, boolean z) throws IOException {
        boolean zExists = file.exists();
        try {
            return new OutputStreamWriter(new FileOutputStream(file.getAbsolutePath(), z), Charsets.toCharset(charset));
        } catch (IOException | RuntimeException e) {
            FileUtils.deleteQuietly(this.lockFile);
            if (!zExists) {
                FileUtils.deleteQuietly(file);
            }
            throw e;
        }
    }

    private void testLockDir(File file) throws IOException {
        if (!file.exists()) {
            StringBuilder sbZ = jo.z("Could not find lockDir: ");
            sbZ.append(file.getAbsolutePath());
            throw new IOException(sbZ.toString());
        }
        if (file.canWrite()) {
            return;
        }
        StringBuilder sbZ2 = jo.z("Could not write to lockDir: ");
        sbZ2.append(file.getAbsolutePath());
        throw new IOException(sbZ2.toString());
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        try {
            this.out.close();
        } finally {
            this.lockFile.delete();
        }
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() throws IOException {
        this.out.flush();
    }

    @Override // java.io.Writer
    public void write(int i) throws IOException {
        this.out.write(i);
    }

    public LockableFileWriter(String str, boolean z) throws IOException {
        this(str, z, (String) null);
    }

    @Override // java.io.Writer
    public void write(char[] cArr) throws IOException {
        this.out.write(cArr);
    }

    public LockableFileWriter(String str, boolean z, String str2) throws IOException {
        this(new File(str), z, str2);
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i, int i2) throws IOException {
        this.out.write(cArr, i, i2);
    }

    public LockableFileWriter(File file) throws IOException {
        this(file, false, (String) null);
    }

    @Override // java.io.Writer
    public void write(String str) throws IOException {
        this.out.write(str);
    }

    public LockableFileWriter(File file, boolean z) throws IOException {
        this(file, z, (String) null);
    }

    @Override // java.io.Writer
    public void write(String str, int i, int i2) throws IOException {
        this.out.write(str, i, i2);
    }

    @Deprecated
    public LockableFileWriter(File file, boolean z, String str) throws IOException {
        this(file, Charset.defaultCharset(), z, str);
    }

    public LockableFileWriter(File file, Charset charset) throws IOException {
        this(file, charset, false, (String) null);
    }

    public LockableFileWriter(File file, String str) throws IOException {
        this(file, str, false, (String) null);
    }

    public LockableFileWriter(File file, Charset charset, boolean z, String str) throws IOException {
        File absoluteFile = file.getAbsoluteFile();
        if (absoluteFile.getParentFile() != null) {
            FileUtils.forceMkdir(absoluteFile.getParentFile());
        }
        if (!absoluteFile.isDirectory()) {
            File file2 = new File(str == null ? System.getProperty("java.io.tmpdir") : str);
            FileUtils.forceMkdir(file2);
            testLockDir(file2);
            this.lockFile = new File(file2, absoluteFile.getName() + LCK);
            createLock();
            this.out = initWriter(absoluteFile, charset, z);
            return;
        }
        throw new IOException("File specified is a directory");
    }

    public LockableFileWriter(File file, String str, boolean z, String str2) throws IOException {
        this(file, Charsets.toCharset(str), z, str2);
    }
}
