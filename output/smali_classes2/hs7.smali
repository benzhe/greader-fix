.class public Lhs7;
.super Lis7;
.source "SourceFile"


# static fields
.field public static final c:La48;


# instance fields
.field public final b:Ljs7;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lhs7;

    invoke-static {v0}, Lb48;->e(Ljava/lang/Class;)La48;

    move-result-object v0

    sput-object v0, Lhs7;->c:La48;

    return-void
.end method

.method public constructor <init>()V
    .locals 15

    .line 1
    new-instance v14, Ljs7;

    const-string v1, "banner|breadcrumbs|combx|comment|community|cover-wrap|disqus|extra|foot|header|legends|menu|related|remark|replies|rss|shoutbox|sidebar|skyscraper|social|sponsor|supplemental|ad-break|agegate|pagination|pager|popup|yom-remote"

    const-string v2, "and|article|body|column|main|shadow"

    const-string v3, "article|body|content|entry|hentry|h-entry|main|page|pagination|post|text|blog|story"

    const-string v4, "hidden|^hid$| hid$| hid |^hid |banner|combx|comment|com-|contact|foot|footer|footnote|masthead|media|meta|outbrain|promo|related|scroll|share|shoutbox|sidebar|skyscraper|sponsor|shopping|tags|tool|widget"

    const-string v5, "print|archive|comment|discuss|e[\\-]?mail|share|reply|all|login|sign|single|utility"

    const-string v6, "byline|author|dateline|writtenby|p-author"

    const-string v7, "<(/?)font[^>]*>"

    const-string v8, "\\s{2,}"

    const-string v9, "//(www\\.)?(dailymotion|youtube|youtube-nocookie|player\\.vimeo)\\.com"

    const-string v10, "(next|weiter|continue|>([^\\|]|$)|\u00bb([^\\|]|$))"

    const-string v11, "(prev|earl|old|new|<|\u00ab)"

    const-string v12, "^\\s*$"

    const-string v13, "\\S$"

    move-object v0, v14

    .line 2
    invoke-direct/range {v0 .. v13}, Ljs7;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "regEx"

    .line 3
    invoke-static {v14, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p0}, Lis7;-><init>()V

    iput-object v14, p0, Lhs7;->b:Ljs7;

    return-void
.end method

.method public constructor <init>(Ljs7;)V
    .locals 1

    const-string v0, "regEx"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-direct {p0}, Lis7;-><init>()V

    iput-object p1, p0, Lhs7;->b:Ljs7;

    return-void
.end method


# virtual methods
.method public f(Lorg/jsoup/nodes/Node;)V
    .locals 4

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "#comment"

    invoke-static {v2, v3}, Lim7;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "child"

    if-eqz v2, :cond_0

    .line 4
    invoke-static {v1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "removeComments"

    invoke-virtual {p0, v1, v2}, Lis7;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v1, v3}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lhs7;->f(Lorg/jsoup/nodes/Node;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
