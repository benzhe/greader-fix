.class public Lur7;
.super Ljs7;
.source "SourceFile"


# instance fields
.field public final j:Ljava/util/regex/Pattern;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 15

    move/from16 v0, p15

    and-int/lit8 v1, v0, 0x1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|foot|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote"

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    and-int/lit8 v3, v0, 0x2

    if-eqz v3, :cond_1

    const-string v3, "and|article|body|column|main|shadow"

    goto :goto_1

    :cond_1
    move-object v3, v2

    :goto_1
    and-int/lit8 v4, v0, 0x4

    if-eqz v4, :cond_2

    const-string v4, "article|body|content|entry|hentry|h-entry|main|page|pagination|post|text|blog|story"

    goto :goto_2

    :cond_2
    move-object v4, v2

    :goto_2
    and-int/lit8 v5, v0, 0x8

    if-eqz v5, :cond_3

    const-string v5, "hidden|^hid$| hid$| hid |^hid |banner|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|share|shoutbox|sidebar|skyscraper|sponsor|shopping|tags|tool|widget|float"

    goto :goto_3

    :cond_3
    move-object v5, v2

    :goto_3
    and-int/lit8 v6, v0, 0x10

    if-eqz v6, :cond_4

    const-string v6, "print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single|utility"

    goto :goto_4

    :cond_4
    move-object v6, v2

    :goto_4
    and-int/lit8 v7, v0, 0x20

    if-eqz v7, :cond_5

    const-string v7, "byline|author|dateline|writtenby|p-author"

    goto :goto_5

    :cond_5
    move-object v7, v2

    :goto_5
    and-int/lit8 v8, v0, 0x40

    if-eqz v8, :cond_6

    const-string v8, "<(/?)font[^>]*>"

    goto :goto_6

    :cond_6
    move-object v8, v2

    :goto_6
    and-int/lit16 v9, v0, 0x80

    if-eqz v9, :cond_7

    const-string v9, "\\s{2,}"

    goto :goto_7

    :cond_7
    move-object v9, v2

    :goto_7
    and-int/lit16 v10, v0, 0x100

    if-eqz v10, :cond_8

    const-string v10, "//(www\\.)?(dailymotion|youtube|youtube-nocookie|player\\.vimeo)\\.com"

    goto :goto_8

    :cond_8
    move-object v10, v2

    :goto_8
    and-int/lit16 v11, v0, 0x200

    if-eqz v11, :cond_9

    const-string v11, "(next|weiter|continue|>([^\\|]|$)|\u00bb([^\\|]|$))"

    goto :goto_9

    :cond_9
    move-object v11, v2

    :goto_9
    and-int/lit16 v12, v0, 0x400

    if-eqz v12, :cond_a

    const-string v12, "(prev|earl|old|new|<|\u00ab)"

    goto :goto_a

    :cond_a
    move-object v12, v2

    :goto_a
    and-int/lit16 v13, v0, 0x800

    if-eqz v13, :cond_b

    const-string v13, "^\\s*$"

    goto :goto_b

    :cond_b
    move-object v13, v2

    :goto_b
    and-int/lit16 v14, v0, 0x1000

    if-eqz v14, :cond_c

    const-string v14, "\\S$"

    goto :goto_c

    :cond_c
    move-object v14, v2

    :goto_c
    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_d

    const-string v2, "author|avatar|thumbnail"

    :cond_d
    const-string v0, "unlikelyCandidatesPattern"

    .line 1
    invoke-static {v1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "okMaybeItsACandidatePattern"

    invoke-static {v3, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "positivePattern"

    invoke-static {v4, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "negativePattern"

    invoke-static {v5, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "extraneousPattern"

    invoke-static {v6, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "bylinePattern"

    invoke-static {v7, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "replaceFontsPattern"

    invoke-static {v8, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "normalizePattern"

    invoke-static {v9, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "videosPattern"

    invoke-static {v10, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "nextLinkPattern"

    invoke-static {v11, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prevLinkPattern"

    invoke-static {v12, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "whitespacePattern"

    invoke-static {v13, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "hasContentPattern"

    invoke-static {v14, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "removeImagePattern"

    invoke-static {v2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 p1, p0

    move-object/from16 p2, v1

    move-object/from16 p3, v3

    move-object/from16 p4, v4

    move-object/from16 p5, v5

    move-object/from16 p6, v6

    move-object/from16 p7, v7

    move-object/from16 p8, v8

    move-object/from16 p9, v9

    move-object/from16 p10, v10

    move-object/from16 p11, v11

    move-object/from16 p12, v12

    move-object/from16 p13, v13

    move-object/from16 p14, v14

    .line 2
    invoke-direct/range {p1 .. p14}, Ljs7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    const-string v1, "Pattern.compile(removeImagePattern)"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, p0

    iput-object v0, v1, Lur7;->j:Ljava/util/regex/Pattern;

    return-void
.end method
