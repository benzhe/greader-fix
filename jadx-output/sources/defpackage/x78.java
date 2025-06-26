package defpackage;

import java.io.File;
import java.io.FilenameFilter;
import java.util.zip.ZipEntry;
import java.util.zip.ZipFile;

/* loaded from: classes2.dex */
public class x78 {

    public static class a implements FilenameFilter {
        public final /* synthetic */ String e;

        public a(String str) {
            this.e = str;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return str.startsWith(this.e);
        }
    }

    public static void a(File file, FilenameFilter filenameFilter) {
        File[] fileArrListFiles = file.getParentFile().listFiles(filenameFilter);
        if (fileArrListFiles != null) {
            for (File file2 : fileArrListFiles) {
                file2.delete();
            }
        }
    }

    public static ZipEntry b(String str, ZipFile zipFile, String str2) {
        return zipFile.getEntry("lib/" + str2 + "/" + str);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:121:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x010f A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.io.File c(android.content.Context r12, java.lang.String r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: defpackage.x78.c(android.content.Context, java.lang.String):java.io.File");
    }
}
