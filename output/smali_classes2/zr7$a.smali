.class public final Lzr7$a;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lzr7;->f(Lorg/jsoup/nodes/Element;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Lorg/jsoup/nodes/Element;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lzr7;

.field public final synthetic f:Z


# direct methods
.method public constructor <init>(Lzr7;Z)V
    .locals 0

    iput-object p1, p0, Lzr7$a;->e:Lzr7;

    iput-boolean p2, p0, Lzr7$a;->f:Z

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    check-cast p1, Lorg/jsoup/nodes/Element;

    const-string v0, "element"

    .line 2
    invoke-static {p1, v0}, Lim7;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-boolean v0, p0, Lzr7$a;->f:Z

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    const-string v1, "element.attributes()"

    invoke-static {v0, v1}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Ln56;->x(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 6
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 7
    check-cast v1, Lorg/jsoup/nodes/Attribute;

    .line 8
    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x3e

    const-string v3, "|"

    invoke-static/range {v2 .. v9}, Lek7;->k(Ljava/lang/Iterable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lpl7;I)Ljava/lang/String;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lzr7$a;->e:Lzr7;

    .line 10
    iget-object v1, v1, Lzr7;->i:Ljs7;

    .line 11
    invoke-virtual {v1, v0}, Ljs7;->c(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 12
    :cond_1
    iget-object v0, p0, Lzr7$a;->e:Lzr7;

    .line 13
    iget-object v0, v0, Lzr7;->i:Ljs7;

    .line 14
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object p1

    const-string v2, "element.html()"

    invoke-static {p1, v2}, Lim7;->b(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljs7;->c(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 15
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
