.class public Lye5;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lbf5;

.field public final b:Ljava/lang/String;

.field public c:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lbf5;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lye5;->a:Lbf5;

    .line 3
    iput-object p2, p0, Lye5;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lye5;->c:Ljava/lang/Integer;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lxe5;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayDeque;

    .line 2
    invoke-virtual {p0}, Lye5;->b()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(Ljava/util/Collection;)V

    .line 3
    iget-object v1, p0, Lye5;->c:Ljava/lang/Integer;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lye5;->a:Lbf5;

    iget-object v2, p0, Lye5;->b:Ljava/lang/String;

    invoke-interface {v1, v2}, Lbf5;->c(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput-object v1, p0, Lye5;->c:Ljava/lang/Integer;

    .line 5
    :cond_0
    iget-object v1, p0, Lye5;->c:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxe5;

    .line 7
    :goto_1
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->size()I

    move-result v3

    const/4 v4, 0x0

    if-lt v3, v1, :cond_1

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pollFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lbf5$c;

    iget-object v3, v3, Lbf5$c;->b:Ljava/lang/String;

    .line 9
    iget-object v5, p0, Lye5;->a:Lbf5;

    invoke-interface {v5, v3, v4, v4}, Lbf5;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v3, p0, Lye5;->b:Ljava/lang/String;

    .line 11
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v5, Lbf5$c;

    invoke-direct {v5}, Lbf5$c;-><init>()V

    .line 13
    iput-object v3, v5, Lbf5$c;->a:Ljava/lang/String;

    .line 14
    iget-object v3, v2, Lxe5;->d:Ljava/util/Date;

    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    .line 15
    iput-wide v6, v5, Lbf5$c;->m:J

    .line 16
    iget-object v3, v2, Lxe5;->a:Ljava/lang/String;

    iput-object v3, v5, Lbf5$c;->b:Ljava/lang/String;

    .line 17
    iget-object v3, v2, Lxe5;->b:Ljava/lang/String;

    iput-object v3, v5, Lbf5$c;->c:Ljava/lang/Object;

    .line 18
    iget-object v3, v2, Lxe5;->c:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_2

    :cond_2
    iget-object v4, v2, Lxe5;->c:Ljava/lang/String;

    :goto_2
    iput-object v4, v5, Lbf5$c;->d:Ljava/lang/String;

    .line 19
    iget-wide v3, v2, Lxe5;->e:J

    iput-wide v3, v5, Lbf5$c;->e:J

    .line 20
    iget-wide v2, v2, Lxe5;->f:J

    iput-wide v2, v5, Lbf5$c;->j:J

    .line 21
    iget-object v2, p0, Lye5;->a:Lbf5;

    invoke-interface {v2, v5}, Lbf5;->b(Lbf5$c;)V

    .line 22
    invoke-virtual {v0, v5}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    return-void
.end method

.method public final b()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lbf5$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lye5;->a:Lbf5;

    iget-object v1, p0, Lye5;->b:Ljava/lang/String;

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Lbf5;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lbf5$c;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbf5$c;

    .line 2
    iget-object v0, v0, Lbf5$c;->b:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lye5;->a:Lbf5;

    const/4 v2, 0x0

    invoke-interface {v1, v0, v2, v2}, Lbf5;->clearConditionalUserProperty(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public d(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lwe5;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lye5;->e()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 4
    invoke-static {v1}, Lxe5;->a(Ljava/util/Map;)Lxe5;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {p0}, Lye5;->e()V

    .line 7
    invoke-virtual {p0}, Lye5;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {p0, p1}, Lye5;->c(Ljava/util/Collection;)V

    goto/16 :goto_5

    .line 8
    :cond_1
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lxe5;

    .line 10
    iget-object v2, v2, Lxe5;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {p1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p0}, Lye5;->b()Ljava/util/List;

    move-result-object v1

    .line 13
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 14
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf5$c;

    .line 15
    iget-object v4, v4, Lbf5$c;->b:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbf5$c;

    .line 18
    iget-object v5, v4, Lbf5$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v5}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    .line 19
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 20
    :cond_5
    invoke-virtual {p0, v3}, Lye5;->c(Ljava/util/Collection;)V

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lxe5;

    .line 23
    iget-object v3, v1, Lxe5;->a:Ljava/lang/String;

    .line 24
    invoke-virtual {v2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 25
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 26
    :cond_7
    invoke-virtual {p0, p1}, Lye5;->a(Ljava/util/List;)V

    :goto_5
    return-void
.end method

.method public final e()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lwe5;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lye5;->a:Lbf5;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lwe5;

    const-string v1, "The Analytics SDK is not available. Please check that the Analytics SDK is included in your app dependencies."

    invoke-direct {v0, v1}, Lwe5;-><init>(Ljava/lang/String;)V

    throw v0
.end method
