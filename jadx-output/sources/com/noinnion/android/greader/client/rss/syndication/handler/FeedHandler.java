package com.noinnion.android.greader.client.rss.syndication.handler;

import com.noinnion.android.greader.client.rss.syndication.feed.Feed;
import defpackage.n56;
import java.io.IOException;
import javax.xml.parsers.ParserConfigurationException;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import okhttp3.Request;
import org.apache.commons.io.input.XmlStreamReader;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;

/* loaded from: classes2.dex */
public class FeedHandler {
    public FeedHandlerResult parseFeed(Feed feed) throws ParserConfigurationException, SAXException, IOException, UnsupportedFeedtypeException {
        SAXParserFactory sAXParserFactoryNewInstance = SAXParserFactory.newInstance();
        sAXParserFactoryNewInstance.setNamespaceAware(true);
        SAXParser sAXParserNewSAXParser = sAXParserFactoryNewInstance.newSAXParser();
        XmlStreamReader xmlStreamReader = new XmlStreamReader(n56.L().newCall(new Request.Builder().url(feed.getDownloadUrl()).build()).execute().body().byteStream());
        InputSource inputSource = new InputSource(xmlStreamReader);
        SyndHandler syndHandler = new SyndHandler(feed);
        sAXParserNewSAXParser.parse(inputSource, syndHandler);
        xmlStreamReader.close();
        HandlerState handlerState = syndHandler.state;
        return new FeedHandlerResult(handlerState.feed, handlerState.alternateUrls, handlerState.hasPodcast());
    }
}
