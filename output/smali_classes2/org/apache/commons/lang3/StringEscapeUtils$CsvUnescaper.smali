.class public Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;
.super Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/StringEscapeUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CsvUnescaper"
.end annotation


# static fields
.field private static final CSV_DELIMITER:C = ','

.field private static final CSV_QUOTE:C = '\"'

.field private static final CSV_QUOTE_STR:Ljava/lang/String;

.field private static final CSV_SEARCH_CHARS:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x22

    .line 1
    invoke-static {v0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    const/4 v0, 0x4

    new-array v0, v0, [C

    .line 2
    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x2cs
        0x22s
        0xds
        0xas
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/apache/commons/lang3/text/translate/CharSequenceTranslator;-><init>()V

    return-void
.end method


# virtual methods
.method public translate(Ljava/lang/CharSequence;ILjava/io/Writer;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p2, :cond_3

    const/4 p2, 0x0

    .line 1
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x22

    if-ne v0, v1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    sub-int/2addr v0, v2

    invoke-interface {p1, v2, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_SEARCH_CHARS:[C

    invoke-static {v0, v1}, Lorg/apache/commons/lang3/StringUtils;->containsAny(Ljava/lang/CharSequence;[C)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lorg/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;->CSV_QUOTE_STR:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lorg/apache/commons/lang3/StringUtils;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    .line 7
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 8
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p3

    invoke-static {p1, p2, p3}, Ljava/lang/Character;->codePointCount(Ljava/lang/CharSequence;II)I

    move-result p1

    return p1

    .line 9
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "CsvUnescaper should never reach the [1] index"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
