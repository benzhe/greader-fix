package org.apache.commons.text.lookup;

import androidx.recyclerview.widget.RecyclerView;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.StringWriter;
import java.net.URL;
import org.apache.commons.lang3.StringUtils;

/* loaded from: classes2.dex */
public final class UrlStringLookup extends AbstractStringLookup {
    public static final UrlStringLookup INSTANCE = new UrlStringLookup();

    private UrlStringLookup() {
    }

    @Override // org.apache.commons.text.lookup.StringLookup
    public String lookup(String str) throws IOException {
        if (str == null) {
            return null;
        }
        String[] strArrSplit = str.split(AbstractStringLookup.SPLIT_STR);
        if (strArrSplit.length < 2) {
            throw IllegalArgumentExceptions.format("Bad URL key format [%s]; expected format is DocumentPath:Key.", str);
        }
        String str2 = strArrSplit[0];
        String strSubstringAfter = StringUtils.substringAfter(str, 58);
        try {
            URL url = new URL(strSubstringAfter);
            StringWriter stringWriter = new StringWriter(RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST);
            char[] cArr = new char[RecyclerView.a0.FLAG_BOUNCED_FROM_HIDDEN_LIST];
            BufferedInputStream bufferedInputStream = new BufferedInputStream(url.openStream());
            try {
                InputStreamReader inputStreamReader = new InputStreamReader(bufferedInputStream, str2);
                while (true) {
                    try {
                        int i = inputStreamReader.read(cArr);
                        if (-1 == i) {
                            inputStreamReader.close();
                            bufferedInputStream.close();
                            return stringWriter.toString();
                        }
                        stringWriter.write(cArr, 0, i);
                    } finally {
                    }
                }
            } finally {
            }
        } catch (Exception e) {
            throw IllegalArgumentExceptions.format(e, "Error looking up URL [%s] with Charset [%s].", strSubstringAfter, str2);
        }
    }
}
