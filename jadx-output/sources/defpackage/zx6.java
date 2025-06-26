package defpackage;

import android.text.TextUtils;
import android.util.Xml;
import com.noinnion.android.greader.client.rss.syndication.namespace.NSRSS20;
import com.noinnion.android.greader.client.rss.syndication.namespace.atom.AtomText;
import java.io.IOException;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import org.xmlpull.v1.XmlSerializer;

/* loaded from: classes2.dex */
public class zx6 {
    public void a(Map<String, List<wx6>> map, Writer writer) throws IllegalStateException, IOException, IllegalArgumentException {
        XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
        xmlSerializerNewSerializer.setOutput(writer);
        xmlSerializerNewSerializer.startDocument("UTF-8", Boolean.FALSE);
        xmlSerializerNewSerializer.startTag(null, "opml");
        xmlSerializerNewSerializer.attribute(null, "version", "2.0");
        xmlSerializerNewSerializer.startTag(null, "head");
        xmlSerializerNewSerializer.startTag(null, "title");
        xmlSerializerNewSerializer.text("subscriptions");
        xmlSerializerNewSerializer.endTag(null, "title");
        xmlSerializerNewSerializer.endTag(null, "head");
        xmlSerializerNewSerializer.startTag(null, "body");
        for (Map.Entry<String, List<wx6>> entry : map.entrySet()) {
            String key = entry.getKey();
            List<wx6> value = entry.getValue();
            if (TextUtils.isEmpty(key)) {
                for (wx6 wx6Var : value) {
                    xmlSerializerNewSerializer.startTag(null, "outline");
                    xmlSerializerNewSerializer.attribute(null, AtomText.TYPE_TEXT, wx6Var.a);
                    xmlSerializerNewSerializer.attribute(null, "title", wx6Var.a);
                    xmlSerializerNewSerializer.attribute(null, NSRSS20.ENC_TYPE, "rss");
                    xmlSerializerNewSerializer.attribute(null, "xmlUrl", wx6Var.b);
                    String str = wx6Var.c;
                    if (str != null) {
                        xmlSerializerNewSerializer.attribute(null, "htmlUrl", str);
                    }
                    xmlSerializerNewSerializer.endTag(null, "outline");
                }
            } else {
                xmlSerializerNewSerializer.startTag(null, "outline");
                xmlSerializerNewSerializer.attribute(null, AtomText.TYPE_TEXT, key);
                xmlSerializerNewSerializer.attribute(null, "title", key);
                for (wx6 wx6Var2 : value) {
                    xmlSerializerNewSerializer.startTag(null, "outline");
                    xmlSerializerNewSerializer.attribute(null, AtomText.TYPE_TEXT, wx6Var2.a);
                    xmlSerializerNewSerializer.attribute(null, "title", wx6Var2.a);
                    xmlSerializerNewSerializer.attribute(null, NSRSS20.ENC_TYPE, "rss");
                    xmlSerializerNewSerializer.attribute(null, "xmlUrl", wx6Var2.b);
                    String str2 = wx6Var2.c;
                    if (str2 != null) {
                        xmlSerializerNewSerializer.attribute(null, "htmlUrl", str2);
                    }
                    xmlSerializerNewSerializer.endTag(null, "outline");
                }
                xmlSerializerNewSerializer.endTag(null, "outline");
            }
        }
        xmlSerializerNewSerializer.endTag(null, "body");
        xmlSerializerNewSerializer.endTag(null, "opml");
        xmlSerializerNewSerializer.endDocument();
    }
}
