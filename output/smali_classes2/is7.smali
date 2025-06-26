.class public abstract Lis7;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:La48;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lis7;

    invoke-static {v0}, Lb48;->e(Ljava/lang/Class;)La48;

    move-result-object v0

    sput-object v0, Lis7;->a:La48;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(Lis7;Lorg/jsoup/nodes/Element;Ljs7;ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x1

    .line 1
    :cond_1
    invoke-virtual {p0, p1, p2, p3}, Lis7;->a(Lorg/jsoup/nodes/Element;Ljs7;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lorg/jsoup/nodes/Element;Ljs7;Z)Ljava/lang/String;
    .locals 1

    const-string v0, "e"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    move-result-object p1

    const-string v0, "e.text()"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lco7;->F(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    const-string p3, "text"

    .line 2
    invoke-static {p1, p3}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p2, Ljs7;->f:Ljava/util/regex/Pattern;

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    const-string p2, " "

    invoke-virtual {p1, p2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "normalize.matcher(text).replaceAll(\" \")"

    invoke-static {p1, p2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method

.method public c(Lorg/jsoup/nodes/Node;Ljs7;)Lorg/jsoup/nodes/Element;
    .locals 2

    const-string v0, "regEx"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-eqz p1, :cond_0

    .line 1
    instance-of v0, p1, Lorg/jsoup/nodes/Element;

    if-nez v0, :cond_0

    .line 2
    instance-of v0, p1, Lorg/jsoup/nodes/TextNode;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    move-result-object v0

    const-string v1, "next.text()"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "matchString"

    .line 3
    invoke-static {v0, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v1, p2, Ljs7;->h:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object p1

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Lorg/jsoup/nodes/Element;

    if-nez p2, :cond_1

    const/4 p1, 0x0

    :cond_1
    check-cast p1, Lorg/jsoup/nodes/Element;

    return-object p1
.end method

.method public d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V
    .locals 3

    const-string v0, "node"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "reason"

    invoke-static {p2, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v1}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n------\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    sget-object v1, Lis7;->a:La48;

    const-string v2, "{} [{}]"

    invoke-interface {v1, v2, p2, v0}, La48;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_0
    return-void
.end method

.method public e(Lorg/jsoup/nodes/Element;Ljava/lang/String;Lpl7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/String;",
            "Lpl7<",
            "-",
            "Lorg/jsoup/nodes/Element;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "element"

    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagName"

    invoke-static {p2, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2}, Lorg/jsoup/nodes/Element;->getElementsByTag(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object p1

    const-string v0, "element.getElementsByTag(tagName)"

    invoke-static {p1, v0}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$this$reversed"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    invoke-static {p1}, Lek7;->s(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Lek7;->v(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    const-string v0, "$this$reverse"

    .line 5
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 7
    :goto_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Element;

    .line 8
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v1, "childElement"

    if-eqz p3, :cond_2

    .line 9
    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, v0}, Lpl7;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 10
    :cond_2
    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "removeNode(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lis7;->d(Lorg/jsoup/nodes/Node;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    return-void
.end method
