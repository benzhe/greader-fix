package org.apache.commons.text.lookup;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.OpenOption;
import java.nio.file.Paths;
import javax.xml.xpath.XPathFactory;
import org.apache.commons.lang3.StringUtils;
import org.xml.sax.InputSource;

/* loaded from: classes2.dex */
public final class XmlStringLookup extends AbstractStringLookup {
    public static final XmlStringLookup INSTANCE = new XmlStringLookup();

    private XmlStringLookup() {
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) throws IOException {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(AbstractStringLookup.SPLIT_STR);
        if (strArrSplit.length != 2) {
            throw IllegalArgumentExceptions.format("Bad XML key format [%s]; expected format is DocumentPath:XPath.", str);
        }
        String str2 = strArrSplit[0];
        String strSubstringAfter = StringUtils.substringAfter(str, 58);
        try {
            InputStream inputStreamNewInputStream = Files.newInputStream(Paths.get(str2, new String[0]), new OpenOption[0]);
            try {
                String strEvaluate = XPathFactory.newInstance().newXPath().evaluate(strSubstringAfter, new InputSource(inputStreamNewInputStream));
                if (inputStreamNewInputStream != null) {
                    inputStreamNewInputStream.close();
                }
                return strEvaluate;
            } finally {
            }
        } catch (Exception e) {
            throw IllegalArgumentExceptions.format(e, "Error looking up XML document [%s] and XPath [%s].", str2, strSubstringAfter);
        }
    }
}
