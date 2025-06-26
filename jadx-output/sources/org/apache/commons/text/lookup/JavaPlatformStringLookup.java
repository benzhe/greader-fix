package org.apache.commons.text.lookup;

import defpackage.jo;
import java.io.PrintStream;
import java.util.Locale;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class JavaPlatformStringLookup extends AbstractStringLookup {
    public static final JavaPlatformStringLookup INSTANCE = new JavaPlatformStringLookup();
    private static final String KEY_HARDWARE = "hardware";
    private static final String KEY_LOCALE = "locale";
    private static final String KEY_OS = "os";
    private static final String KEY_RUNTIME = "runtime";
    private static final String KEY_VERSION = "version";
    private static final String KEY_VM = "vm";

    private JavaPlatformStringLookup() {
    }

    private String getSystemProperty(String str) {
        return StringLookupFactory.INSTANCE_SYSTEM_PROPERTIES.lookup(str);
    }

    public static void main(String[] strArr) {
        System.out.println(JavaPlatformStringLookup.class);
        PrintStream printStream = System.out;
        JavaPlatformStringLookup javaPlatformStringLookup = INSTANCE;
        printStream.printf("%s = %s%n", KEY_VERSION, javaPlatformStringLookup.lookup(KEY_VERSION));
        System.out.printf("%s = %s%n", KEY_RUNTIME, javaPlatformStringLookup.lookup(KEY_RUNTIME));
        System.out.printf("%s = %s%n", KEY_VM, javaPlatformStringLookup.lookup(KEY_VM));
        System.out.printf("%s = %s%n", KEY_OS, javaPlatformStringLookup.lookup(KEY_OS));
        System.out.printf("%s = %s%n", KEY_HARDWARE, javaPlatformStringLookup.lookup(KEY_HARDWARE));
        System.out.printf("%s = %s%n", KEY_LOCALE, javaPlatformStringLookup.lookup(KEY_LOCALE));
    }

    public String getHardware() {
        StringBuilder sbZ = jo.z("processors: ");
        sbZ.append(Runtime.getRuntime().availableProcessors());
        sbZ.append(", architecture: ");
        sbZ.append(getSystemProperty("os.arch"));
        sbZ.append(getSystemProperty("-", "sun.arch.data.model"));
        sbZ.append(getSystemProperty(", instruction sets: ", "sun.cpu.isalist"));
        return sbZ.toString();
    }

    public String getLocale() {
        StringBuilder sbZ = jo.z("default locale: ");
        sbZ.append(Locale.getDefault());
        sbZ.append(", platform encoding: ");
        sbZ.append(getSystemProperty("file.encoding"));
        return sbZ.toString();
    }

    public String getOperatingSystem() {
        return getSystemProperty("os.name") + StringUtils.SPACE + getSystemProperty("os.version") + getSystemProperty(StringUtils.SPACE, "sun.os.patch.level") + ", architecture: " + getSystemProperty("os.arch") + getSystemProperty("-", "sun.arch.data.model");
    }

    public String getRuntime() {
        return getSystemProperty("java.runtime.name") + " (build " + getSystemProperty("java.runtime.version") + ") from " + getSystemProperty("java.vendor");
    }

    public String getVirtualMachine() {
        StringBuilder sb = new StringBuilder();
        sb.append(getSystemProperty("java.vm.name"));
        sb.append(" (build ");
        sb.append(getSystemProperty("java.vm.version"));
        sb.append(", ");
        return jo.s(sb, getSystemProperty("java.vm.info"), ")");
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) {
        if (str == null) {
            return null;
        }
        str.hashCode();
        switch (str) {
            case "locale":
                return getLocale();
            case "os":
                return getOperatingSystem();
            case "vm":
                return getVirtualMachine();
            case "hardware":
                return getHardware();
            case "version":
                StringBuilder sbZ = jo.z("Java version ");
                sbZ.append(getSystemProperty("java.version"));
                return sbZ.toString();
            case "runtime":
                return getRuntime();
            default:
                throw new IllegalArgumentException(str);
        }
    }

    private String getSystemProperty(String str, String str2) {
        String systemProperty = getSystemProperty(str2);
        return StringUtils.isEmpty(systemProperty) ? "" : jo.n(str, systemProperty);
    }
}
