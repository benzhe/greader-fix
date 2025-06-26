.class public final Len6;
.super Ljm7;
.source "SourceFile"

# interfaces
.implements Lpl7;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljm7;",
        "Lpl7<",
        "Ll08;",
        "Lyj7;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic e:Lcom/noinnion/android/greader/ReaderApp;


# direct methods
.method public constructor <init>(Lcom/noinnion/android/greader/ReaderApp;)V
    .locals 0

    iput-object p1, p0, Len6;->e:Lcom/noinnion/android/greader/ReaderApp;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ljm7;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Ll08;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Len6;->e:Lcom/noinnion/android/greader/ReaderApp;

    const-string v1, "$this$androidContext"

    .line 4
    invoke-static {p1, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "androidContext"

    invoke-static {v0, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v1, p1, Ll08;->a:Lk08;

    .line 6
    iget-object v1, v1, Lk08;->b:Lh18;

    .line 7
    sget-object v2, Lg18;->f:Lg18;

    invoke-virtual {v1, v2}, Lh18;->c(Lg18;)Z

    move-result v1

    const-string v3, "msg"

    if-eqz v1, :cond_0

    .line 8
    iget-object v1, p1, Ll08;->a:Lk08;

    .line 9
    iget-object v1, v1, Lk08;->b:Lh18;

    const-string v4, "[init] declare Android Context"

    .line 10
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v4, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-virtual {v1, v2, v4}, Lh18;->b(Lg18;Ljava/lang/String;)V

    :cond_0
    const/4 v1, 0x3

    .line 12
    iget-object v4, p1, Ll08;->a:Lk08;

    .line 13
    new-instance v5, Lj08;

    invoke-direct {v5, v0}, Lj08;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    invoke-static {v0, v0, v5, v1}, Lkt7;->n(ZZLpl7;I)Li18;

    move-result-object v1

    invoke-static {v1}, Ln56;->r1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/4 v5, 0x2

    invoke-static {v4, v1, v0, v5}, Lk08;->b(Lk08;Ljava/util/List;ZI)V

    .line 14
    sget-object v1, Lf;->e:Lf;

    .line 15
    sget-object v1, Lf;->d:Ljava/util/List;

    const-string v4, "modules"

    .line 16
    invoke-static {v1, v4}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v4, p1, Ll08;->a:Lk08;

    .line 18
    iget-object v4, v4, Lk08;->b:Lh18;

    .line 19
    invoke-virtual {v4, v2}, Lh18;->c(Lg18;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 20
    new-instance v4, Lm08;

    invoke-direct {v4, p1, v1}, Lm08;-><init>(Ll08;Ljava/util/List;)V

    invoke-static {v4}, Lkt7;->m(Lel7;)D

    move-result-wide v4

    .line 21
    iget-object v1, p1, Ll08;->a:Lk08;

    .line 22
    iget-object v1, v1, Lk08;->a:Ln18;

    .line 23
    iget-object v1, v1, Ln18;->a:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    const-string v6, "_scopeDefinitions.values"

    invoke-static {v1, v6}, Lim7;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    new-instance v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-static {v1, v7}, Ln56;->x(Ljava/lang/Iterable;I)I

    move-result v7

    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    .line 26
    check-cast v7, Lp18;

    .line 27
    iget-object v7, v7, Lp18;->a:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->size()I

    move-result v7

    .line 28
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v1, "$this$sum"

    .line 29
    invoke-static {v6, v1}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    add-int/2addr v0, v6

    goto :goto_1

    .line 31
    :cond_2
    iget-object p1, p1, Ll08;->a:Lk08;

    .line 32
    iget-object p1, p1, Lk08;->b:Lh18;

    .line 33
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "loaded "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " definitions - "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 34
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v3}, Lim7;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-virtual {p1, v2, v0}, Lh18;->b(Lg18;Ljava/lang/String;)V

    goto :goto_2

    .line 36
    :cond_3
    iget-object p1, p1, Ll08;->a:Lk08;

    invoke-static {p1, v1, v0, v5}, Lk08;->b(Lk08;Ljava/util/List;ZI)V

    .line 37
    :goto_2
    sget-object p1, Lyj7;->a:Lyj7;

    return-object p1
.end method
