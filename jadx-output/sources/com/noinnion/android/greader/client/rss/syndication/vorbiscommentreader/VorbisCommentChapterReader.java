package com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader;

import com.noinnion.android.greader.client.rss.syndication.feed.Chapter;
import com.noinnion.android.greader.client.rss.syndication.feed.VorbisCommentChapter;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class VorbisCommentChapterReader extends VorbisCommentReader {
    private static final String CHAPTER_ATTRIBUTE_LINK = "url";
    private static final String CHAPTER_ATTRIBUTE_TITLE = "name";
    private static final String CHAPTER_KEY = "chapter\\d\\d\\d.*";
    private static final String TAG = "VorbisCommentChapterReader";
    private List<Chapter> chapters;

    private Chapter getChapterById(long j) {
        for (Chapter chapter : this.chapters) {
            if (((VorbisCommentChapter) chapter).getVorbisCommentId() == j) {
                return chapter;
            }
        }
        return null;
    }

    public List<Chapter> getChapters() {
        return this.chapters;
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public boolean onContentVectorKey(String str) {
        return str.matches(CHAPTER_KEY);
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onContentVectorValue(String str, String str2) throws VorbisCommentReaderException {
        String attributeTypeFromKey = VorbisCommentChapter.getAttributeTypeFromKey(str);
        int iDFromKey = VorbisCommentChapter.getIDFromKey(str);
        long j = iDFromKey;
        Chapter chapterById = getChapterById(j);
        if (attributeTypeFromKey != null) {
            if (attributeTypeFromKey.equals("name")) {
                if (chapterById != null) {
                    chapterById.setTitle(str2);
                    return;
                }
                return;
            } else {
                if (!attributeTypeFromKey.equals("url") || chapterById == null) {
                    return;
                }
                chapterById.setLink(str2);
                return;
            }
        }
        if (getChapterById(j) == null) {
            long startTimeFromValue = VorbisCommentChapter.getStartTimeFromValue(str2);
            VorbisCommentChapter vorbisCommentChapter = new VorbisCommentChapter(iDFromKey);
            vorbisCommentChapter.setStart(startTimeFromValue);
            this.chapters.add(vorbisCommentChapter);
            return;
        }
        throw new VorbisCommentReaderException("Found chapter with duplicate ID (" + str + ", " + str2 + ")");
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onEndOfComment() {
        System.out.println("End of comment");
        Iterator<Chapter> it = this.chapters.iterator();
        while (it.hasNext()) {
            System.out.println(it.next().toString());
        }
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onError(VorbisCommentReaderException vorbisCommentReaderException) {
        vorbisCommentReaderException.printStackTrace();
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onNoVorbisCommentFound() {
        System.out.println("No vorbis comment found");
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onVorbisCommentFound() {
        System.out.println("Vorbis comment found");
    }

    @Override // com.noinnion.android.greader.client.rss.syndication.vorbiscommentreader.VorbisCommentReader
    public void onVorbisCommentHeaderFound(VorbisCommentHeader vorbisCommentHeader) {
        this.chapters = new ArrayList();
        System.out.println(vorbisCommentHeader.toString());
    }
}
