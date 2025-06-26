package defpackage;

import androidx.recyclerview.widget.RecyclerView;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileFilter;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes.dex */
public class nl5 {
    public static final Charset g = Charset.forName("UTF-8");
    public static final int h = 15;
    public static final cl5 i = new cl5();
    public static final Comparator<? super File> j = new Comparator() { // from class: ll5
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Charset charset = nl5.g;
            return ((File) obj2).getName().compareTo(((File) obj).getName());
        }
    };
    public static final FilenameFilter k = new FilenameFilter() { // from class: ml5
        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            Charset charset = nl5.g;
            return str.startsWith("event");
        }
    };
    public final AtomicInteger a = new AtomicInteger(0);
    public final File b;
    public final File c;
    public final File d;
    public final File e;
    public final km5 f;

    public nl5(File file, km5 km5Var) {
        File file2 = new File(file, "report-persistence");
        this.b = new File(file2, "sessions");
        this.c = new File(file2, "priority-reports");
        this.d = new File(file2, "reports");
        this.e = new File(file2, "native-reports");
        this.f = km5Var;
    }

    public static List<File> a(List<File>... listArr) {
        ArrayList arrayList = new ArrayList();
        int size = 0;
        for (List<File> list : listArr) {
            size += list.size();
        }
        arrayList.ensureCapacity(size);
        for (List<File> list2 : listArr) {
            arrayList.addAll(list2);
        }
        return arrayList;
    }

    public static List<File> d(File file) {
        return f(file, null);
    }

    public static List<File> f(File file, FileFilter fileFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] fileArrListFiles = fileFilter == null ? file.listFiles() : file.listFiles(fileFilter);
        return fileArrListFiles != null ? Arrays.asList(fileArrListFiles) : Collections.emptyList();
    }

    public static List<File> g(File file, FilenameFilter filenameFilter) {
        if (!file.isDirectory()) {
            return Collections.emptyList();
        }
        File[] fileArrListFiles = filenameFilter == null ? file.listFiles() : file.listFiles(filenameFilter);
        return fileArrListFiles != null ? Arrays.asList(fileArrListFiles) : Collections.emptyList();
    }

    public static File i(File file) throws IOException {
        if (file.exists() || file.mkdirs()) {
            return file;
        }
        throw new IOException("Could not create directory " + file);
    }

    public static String j(File file) throws IOException {
        byte[] bArr = new byte[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        FileInputStream fileInputStream = new FileInputStream(file);
        while (true) {
            try {
                int i2 = fileInputStream.read(bArr);
                if (i2 <= 0) {
                    String str = new String(byteArrayOutputStream.toByteArray(), g);
                    fileInputStream.close();
                    return str;
                }
                byteArrayOutputStream.write(bArr, 0, i2);
            } catch (Throwable th) {
                try {
                    fileInputStream.close();
                } catch (Throwable unused) {
                }
                throw th;
            }
        }
    }

    public static void k(File file) {
        if (file == null) {
            return;
        }
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                k(file2);
            }
        }
        file.delete();
    }

    public static void l(File file, String str) throws IOException {
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(new FileOutputStream(file), g);
        try {
            outputStreamWriter.write(str);
            outputStreamWriter.close();
        } catch (Throwable th) {
            try {
                outputStreamWriter.close();
            } catch (Throwable unused) {
            }
            throw th;
        }
    }

    public void b() {
        Iterator it = ((ArrayList) e()).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public void c(final String str) {
        FilenameFilter filenameFilter = new FilenameFilter(str) { // from class: hl5
            public final String e;

            {
                this.e = str;
            }

            @Override // java.io.FilenameFilter
            public boolean accept(File file, String str2) {
                String str3 = this.e;
                Charset charset = nl5.g;
                return str2.startsWith(str3);
            }
        };
        Iterator it = ((ArrayList) a(g(this.c, filenameFilter), g(this.e, filenameFilter), g(this.d, filenameFilter))).iterator();
        while (it.hasNext()) {
            ((File) it.next()).delete();
        }
    }

    public final List<File> e() {
        List[] listArr = {a(d(this.c), d(this.e)), d(this.d)};
        for (int i2 = 0; i2 < 2; i2++) {
            Collections.sort(listArr[i2], j);
        }
        return a(listArr);
    }

    public final File h(String str) {
        return new File(this.b, str);
    }
}
