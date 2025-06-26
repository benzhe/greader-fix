.class public final synthetic Ljv5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Liv5$c;

.field public final f:Li47;


# direct methods
.method public constructor <init>(Liv5$c;Li47;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljv5;->e:Liv5$c;

    iput-object p2, p0, Ljv5;->f:Li47;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    iget-object v0, p0, Ljv5;->e:Liv5$c;

    iget-object v1, p0, Ljv5;->f:Li47;

    .line 1
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-virtual {v1}, Li47;->e()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v3

    goto :goto_1

    .line 4
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    iget v5, v1, Li47;->b:I

    invoke-direct {v3, v5}, Ljava/util/HashSet;-><init>(I)V

    const/4 v5, 0x0

    .line 5
    :goto_0
    iget v6, v1, Li47;->b:I

    if-ge v5, v6, :cond_1

    .line 6
    new-instance v6, Ljava/lang/String;

    invoke-virtual {v1, v5}, Li47;->g(I)[B

    move-result-object v7

    invoke-direct {v6, v7, v4}, Ljava/lang/String;-><init>([BI)V

    invoke-virtual {v3, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v3

    .line 8
    :goto_1
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 9
    sget-object v6, Lqv5;->d:Ljava/util/Set;

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-virtual {v5, v7}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 10
    sget-object v6, Li47;->c:Li47$d;

    .line 11
    invoke-static {v5, v6}, Li47$f;->a(Ljava/lang/String;Li47$d;)Li47$f;

    move-result-object v6

    invoke-virtual {v1, v6}, Li47;->d(Li47$f;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 12
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 14
    iget-object v1, v0, Liv5$c;->b:Liv5;

    .line 15
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v0, v0, Liv5$c;->b:Liv5;

    .line 16
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    aput-object v2, v3, v0

    .line 17
    sget-object v0, Lqx5$a;->e:Lqx5$a;

    const-string v2, "(%x) Stream received headers: %s"

    invoke-static {v0, v1, v2, v3}, Lqx5;->a(Lqx5$a;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method
