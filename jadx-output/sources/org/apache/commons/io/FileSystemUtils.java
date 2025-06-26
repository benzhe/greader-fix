package org.apache.commons.io;

import defpackage.jo;
import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Locale;
import java.util.StringTokenizer;
import org.apache.commons.lang3.StringUtils;

@Deprecated
/* loaded from: classes2.dex */
public class FileSystemUtils {
    private static final String DF;
    private static final int INIT_PROBLEM = -1;
    private static final FileSystemUtils INSTANCE = new FileSystemUtils();
    private static final int OS;
    private static final int OTHER = 0;
    private static final int POSIX_UNIX = 3;
    private static final int UNIX = 2;
    private static final int WINDOWS = 1;

    static {
        int i;
        String property;
        String str = "df";
        try {
            property = System.getProperty("os.name");
        } catch (Exception unused) {
            i = -1;
        }
        if (property == null) {
            throw new IOException("os.name not found");
        }
        String lowerCase = property.toLowerCase(Locale.ENGLISH);
        i = 3;
        if (lowerCase.contains("windows")) {
            i = 1;
        } else if (lowerCase.contains("linux") || lowerCase.contains("mpe/ix") || lowerCase.contains("freebsd") || lowerCase.contains("openbsd") || lowerCase.contains("irix") || lowerCase.contains("digital unix") || lowerCase.contains("unix") || lowerCase.contains("mac os x")) {
            i = 2;
        } else if (lowerCase.contains("sun os") || lowerCase.contains("sunos") || lowerCase.contains("solaris")) {
            str = "/usr/xpg4/bin/df";
        } else if (!lowerCase.contains("hp-ux") && !lowerCase.contains("aix")) {
            i = 0;
        }
        OS = i;
        DF = str;
    }

    @Deprecated
    public static long freeSpace(String str) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, false, -1L);
    }

    @Deprecated
    public static long freeSpaceKb(String str) throws IOException {
        return freeSpaceKb(str, -1L);
    }

    public long freeSpaceOS(String str, int i, boolean z, long j) throws Throwable {
        if (str == null) {
            throw new IllegalArgumentException("Path must not be null");
        }
        if (i == 0) {
            throw new IllegalStateException("Unsupported operating system");
        }
        if (i == 1) {
            long jFreeSpaceWindows = freeSpaceWindows(str, j);
            return z ? jFreeSpaceWindows / 1024 : jFreeSpaceWindows;
        }
        if (i == 2) {
            return freeSpaceUnix(str, z, false, j);
        }
        if (i == 3) {
            return freeSpaceUnix(str, z, true, j);
        }
        throw new IllegalStateException("Exception caught when determining operating system");
    }

    public long freeSpaceUnix(String str, boolean z, boolean z2, long j) throws Throwable {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Path must not be empty");
        }
        String strN = z ? "-k" : "-";
        if (z2) {
            strN = jo.n(strN, "P");
        }
        List<String> listPerformCommand = performCommand(strN.length() > 1 ? new String[]{DF, strN, str} : new String[]{DF, str}, 3, j);
        if (listPerformCommand.size() < 2) {
            StringBuilder sbZ = jo.z("Command line '");
            jo.J(sbZ, DF, "' did not return info as expected for path '", str, "'- response was ");
            sbZ.append(listPerformCommand);
            throw new IOException(sbZ.toString());
        }
        StringTokenizer stringTokenizer = new StringTokenizer(listPerformCommand.get(1), StringUtils.SPACE);
        if (stringTokenizer.countTokens() >= 4) {
            stringTokenizer.nextToken();
        } else {
            if (stringTokenizer.countTokens() != 1 || listPerformCommand.size() < 3) {
                StringBuilder sbZ2 = jo.z("Command line '");
                sbZ2.append(DF);
                sbZ2.append("' did not return data as expected for path '");
                sbZ2.append(str);
                sbZ2.append("'- check path is valid");
                throw new IOException(sbZ2.toString());
            }
            stringTokenizer = new StringTokenizer(listPerformCommand.get(2), StringUtils.SPACE);
        }
        stringTokenizer.nextToken();
        stringTokenizer.nextToken();
        return parseBytes(stringTokenizer.nextToken(), str);
    }

    public long freeSpaceWindows(String str, long j) throws Throwable {
        String strNormalize = FilenameUtils.normalize(str, false);
        if (strNormalize == null) {
            throw new IllegalArgumentException(str);
        }
        if (strNormalize.length() > 0 && strNormalize.charAt(0) != '\"') {
            strNormalize = jo.o("\"", strNormalize, "\"");
        }
        List<String> listPerformCommand = performCommand(new String[]{"cmd.exe", "/C", jo.n("dir /a /-c ", strNormalize)}, Integer.MAX_VALUE, j);
        for (int size = listPerformCommand.size() - 1; size >= 0; size--) {
            String str2 = listPerformCommand.get(size);
            if (str2.length() > 0) {
                return parseDir(str2, strNormalize);
            }
        }
        throw new IOException(jo.o("Command line 'dir /-c' did not return any info for path '", strNormalize, "'"));
    }

    public Process openProcess(String[] strArr) throws IOException {
        return Runtime.getRuntime().exec(strArr);
    }

    public long parseBytes(String str, String str2) throws NumberFormatException, IOException {
        try {
            long j = Long.parseLong(str);
            if (j >= 0) {
                return j;
            }
            throw new IOException("Command line '" + DF + "' did not find free space in response for path '" + str2 + "'- check path is valid");
        } catch (NumberFormatException e) {
            StringBuilder sbZ = jo.z("Command line '");
            sbZ.append(DF);
            sbZ.append("' did not return numeric data as expected for path '");
            sbZ.append(str2);
            sbZ.append("'- check path is valid");
            throw new IOException(sbZ.toString(), e);
        }
    }

    public long parseDir(String str, String str2) throws IOException {
        int i;
        int i2;
        int i3;
        int length = str.length();
        while (true) {
            length--;
            i = 0;
            if (length < 0) {
                i2 = 0;
                break;
            }
            if (Character.isDigit(str.charAt(length))) {
                i2 = length + 1;
                break;
            }
        }
        while (true) {
            if (length < 0) {
                i3 = 0;
                break;
            }
            char cCharAt = str.charAt(length);
            if (!Character.isDigit(cCharAt) && cCharAt != ',' && cCharAt != '.') {
                i3 = length + 1;
                break;
            }
            length--;
        }
        if (length < 0) {
            throw new IOException(jo.o("Command line 'dir /-c' did not return valid info for path '", str2, "'"));
        }
        StringBuilder sb = new StringBuilder(str.substring(i3, i2));
        while (i < sb.length()) {
            if (sb.charAt(i) == ',' || sb.charAt(i) == '.') {
                sb.deleteCharAt(i);
                i--;
            }
            i++;
        }
        return parseBytes(sb.toString(), str2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:70:0x012b  */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v10, types: [java.io.BufferedReader] */
    /* JADX WARN: Type inference failed for: r7v11 */
    /* JADX WARN: Type inference failed for: r7v12 */
    /* JADX WARN: Type inference failed for: r7v13 */
    /* JADX WARN: Type inference failed for: r7v14 */
    /* JADX WARN: Type inference failed for: r7v2, types: [java.io.Reader] */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /* JADX WARN: Type inference failed for: r7v6 */
    /* JADX WARN: Type inference failed for: r7v7 */
    /* JADX WARN: Type inference failed for: r7v8 */
    /* JADX WARN: Type inference failed for: r7v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.util.List<java.lang.String> performCommand(java.lang.String[] r11, int r12, long r13) throws java.lang.Throwable {
        /*
            Method dump skipped, instructions count: 303
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.apache.commons.io.FileSystemUtils.performCommand(java.lang.String[], int, long):java.util.List");
    }

    @Deprecated
    public static long freeSpaceKb(String str, long j) throws IOException {
        return INSTANCE.freeSpaceOS(str, OS, true, j);
    }

    @Deprecated
    public static long freeSpaceKb() throws IOException {
        return freeSpaceKb(-1L);
    }

    @Deprecated
    public static long freeSpaceKb(long j) throws IOException {
        return freeSpaceKb(new File(".").getAbsolutePath(), j);
    }
}
