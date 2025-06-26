package org.apache.commons.text.lookup;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import java.util.Properties;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class PropertiesStringLookup extends AbstractStringLookup {
    public static final PropertiesStringLookup INSTANCE = new PropertiesStringLookup();
    public static final String SEPARATOR = "::";

    private PropertiesStringLookup() {
    }

    public static String toPropertyKey(String str, String str2) {
        return AbstractStringLookup.toLookupKey(str, SEPARATOR, str2);
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) throws IOException {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(SEPARATOR);
        if (strArrSplit.length < 2) {
            throw IllegalArgumentExceptions.format("Bad properties key format [%s]; expected format is %s.", str, toPropertyKey("DocumentPath", "Key"));
        }
        String str2 = strArrSplit[0];
        String strSubstringAfter = StringUtils.substringAfter(str, SEPARATOR);
        try {
            Properties properties = new Properties();
            InputStream inputStreamNewInputStream = Files.newInputStream(Paths.get(str2, new String[0]), new OpenOption[0]);
            try {
                properties.load(inputStreamNewInputStream);
                if (inputStreamNewInputStream != null) {
                    inputStreamNewInputStream.close();
                }
                return properties.getProperty(strSubstringAfter);
            } finally {
            }
        } catch (Exception e) {
            throw IllegalArgumentExceptions.format(e, "Error looking up properties [%s] and key [%s].", str2, strSubstringAfter);
        }
    }
}
