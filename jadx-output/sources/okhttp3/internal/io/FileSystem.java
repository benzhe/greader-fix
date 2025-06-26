package okhttp3.internal.io;

import defpackage.gm7;
import defpackage.im7;
import defpackage.jt7;
import defpackage.n56;
import defpackage.tt7;
import defpackage.vt7;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.logging.Logger;
import org.apache.commons.text.lookup.StringLookupFactory;

/* loaded from: classes2.dex */
public interface FileSystem {
    public static final Companion Companion = new Companion(null);
    public static final FileSystem SYSTEM = new Companion.SystemFileSystem();

    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        public static final class SystemFileSystem implements FileSystem {
            @Override // okhttp3.internal.io.FileSystem
            public tt7 appendingSink(File file) throws FileNotFoundException {
                im7.e(file, StringLookupFactory.KEY_FILE);
                try {
                    return n56.l(file);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return n56.l(file);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public void delete(File file) throws IOException {
                im7.e(file, StringLookupFactory.KEY_FILE);
                if (file.delete() || !file.exists()) {
                    return;
                }
                throw new IOException("failed to delete " + file);
            }

            @Override // okhttp3.internal.io.FileSystem
            public void deleteContents(File file) throws IOException {
                im7.e(file, "directory");
                File[] fileArrListFiles = file.listFiles();
                if (fileArrListFiles == null) {
                    throw new IOException("not a readable directory: " + file);
                }
                for (File file2 : fileArrListFiles) {
                    im7.d(file2, StringLookupFactory.KEY_FILE);
                    if (file2.isDirectory()) {
                        deleteContents(file2);
                    }
                    if (!file2.delete()) {
                        throw new IOException("failed to delete " + file2);
                    }
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public boolean exists(File file) {
                im7.e(file, StringLookupFactory.KEY_FILE);
                return file.exists();
            }

            @Override // okhttp3.internal.io.FileSystem
            public void rename(File file, File file2) throws IOException {
                im7.e(file, "from");
                im7.e(file2, "to");
                delete(file2);
                if (file.renameTo(file2)) {
                    return;
                }
                throw new IOException("failed to rename " + file + " to " + file2);
            }

            @Override // okhttp3.internal.io.FileSystem
            public tt7 sink(File file) throws FileNotFoundException {
                im7.e(file, StringLookupFactory.KEY_FILE);
                try {
                    return n56.c2(file, false, 1, null);
                } catch (FileNotFoundException unused) {
                    file.getParentFile().mkdirs();
                    return n56.c2(file, false, 1, null);
                }
            }

            @Override // okhttp3.internal.io.FileSystem
            public long size(File file) {
                im7.e(file, StringLookupFactory.KEY_FILE);
                return file.length();
            }

            @Override // okhttp3.internal.io.FileSystem
            public vt7 source(File file) throws FileNotFoundException {
                im7.e(file, StringLookupFactory.KEY_FILE);
                Logger logger = jt7.a;
                im7.e(file, "$this$source");
                return n56.e2(new FileInputStream(file));
            }

            public String toString() {
                return "FileSystem.SYSTEM";
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(gm7 gm7Var) {
            this();
        }
    }

    tt7 appendingSink(File file) throws FileNotFoundException;

    void delete(File file) throws IOException;

    void deleteContents(File file) throws IOException;

    boolean exists(File file);

    void rename(File file, File file2) throws IOException;

    tt7 sink(File file) throws FileNotFoundException;

    long size(File file);

    vt7 source(File file) throws FileNotFoundException;
}
