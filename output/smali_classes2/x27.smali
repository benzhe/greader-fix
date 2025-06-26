.class public final Lx27;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx27$a;
    }
.end annotation


# static fields
.field public static final k:Lx27;


# instance fields
.field public a:Lm37;

.field public b:Ljava/util/concurrent/Executor;

.field public c:Ljava/lang/String;

.field public d:Lw27;

.field public e:Ljava/lang/String;

.field public f:[[Ljava/lang/Object;

.field public g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le37$a;",
            ">;"
        }
    .end annotation
.end field

.field public h:Ljava/lang/Boolean;

.field public i:Ljava/lang/Integer;

.field public j:Ljava/lang/Integer;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lx27;

    invoke-direct {v0}, Lx27;-><init>()V

    sput-object v0, Lx27;->k:Lx27;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 2
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lx27;->f:[[Ljava/lang/Object;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lx27;->g:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method

.method public constructor <init>(Lx27;)V
    .locals 2

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 5
    fill-array-data v0, :array_0

    const-class v1, Ljava/lang/Object;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/Object;

    iput-object v0, p0, Lx27;->f:[[Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lx27;->g:Ljava/util/List;

    .line 7
    iget-object v0, p1, Lx27;->a:Lm37;

    iput-object v0, p0, Lx27;->a:Lm37;

    .line 8
    iget-object v0, p1, Lx27;->c:Ljava/lang/String;

    iput-object v0, p0, Lx27;->c:Ljava/lang/String;

    .line 9
    iget-object v0, p1, Lx27;->d:Lw27;

    iput-object v0, p0, Lx27;->d:Lw27;

    .line 10
    iget-object v0, p1, Lx27;->b:Ljava/util/concurrent/Executor;

    iput-object v0, p0, Lx27;->b:Ljava/util/concurrent/Executor;

    .line 11
    iget-object v0, p1, Lx27;->e:Ljava/lang/String;

    iput-object v0, p0, Lx27;->e:Ljava/lang/String;

    .line 12
    iget-object v0, p1, Lx27;->f:[[Ljava/lang/Object;

    iput-object v0, p0, Lx27;->f:[[Ljava/lang/Object;

    .line 13
    iget-object v0, p1, Lx27;->h:Ljava/lang/Boolean;

    iput-object v0, p0, Lx27;->h:Ljava/lang/Boolean;

    .line 14
    iget-object v0, p1, Lx27;->i:Ljava/lang/Integer;

    iput-object v0, p0, Lx27;->i:Ljava/lang/Integer;

    .line 15
    iget-object v0, p1, Lx27;->j:Ljava/lang/Integer;

    iput-object v0, p0, Lx27;->j:Ljava/lang/Integer;

    .line 16
    iget-object p1, p1, Lx27;->g:Ljava/util/List;

    iput-object p1, p0, Lx27;->g:Ljava/util/List;

    return-void

    :array_0
    .array-data 4
        0x0
        0x2
    .end array-data
.end method


# virtual methods
.method public a(Lx27$a;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx27$a<",
            "TT;>;)TT;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    iget-object v2, p0, Lx27;->f:[[Ljava/lang/Object;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 3
    aget-object v2, v2, v1

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object p1, p0, Lx27;->f:[[Ljava/lang/Object;

    aget-object p1, p1, v1

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lx27;->h:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public c(I)Lx27;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    .line 1
    invoke-static {v0, v1, p1}, Lc50;->m(ZLjava/lang/String;I)V

    .line 2
    new-instance v0, Lx27;

    invoke-direct {v0, p0}, Lx27;-><init>(Lx27;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lx27;->i:Ljava/lang/Integer;

    return-object v0
.end method

.method public d(I)Lx27;
    .locals 2

    if-ltz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "invalid maxsize %s"

    .line 1
    invoke-static {v0, v1, p1}, Lc50;->m(ZLjava/lang/String;I)V

    .line 2
    new-instance v0, Lx27;

    invoke-direct {v0, p0}, Lx27;-><init>(Lx27;)V

    .line 3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, v0, Lx27;->j:Ljava/lang/Integer;

    return-object v0
.end method

.method public e(Lx27$a;Ljava/lang/Object;)Lx27;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lx27$a<",
            "TT;>;TT;)",
            "Lx27;"
        }
    .end annotation

    const-string v0, "key"

    .line 1
    invoke-static {p1, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "value"

    .line 2
    invoke-static {p2, v0}, Lc50;->A(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Lx27;

    invoke-direct {v0, p0}, Lx27;-><init>(Lx27;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lx27;->f:[[Ljava/lang/Object;

    array-length v4, v3

    const/4 v5, -0x1

    if-ge v2, v4, :cond_1

    .line 5
    aget-object v3, v3, v2

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    .line 6
    :goto_1
    iget-object v3, p0, Lx27;->f:[[Ljava/lang/Object;

    array-length v3, v3

    const/4 v4, 0x1

    if-ne v2, v5, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    add-int/2addr v3, v6

    const/4 v6, 0x2

    new-array v7, v6, [I

    aput v6, v7, v4

    aput v3, v7, v1

    const-class v3, Ljava/lang/Object;

    invoke-static {v3, v7}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[Ljava/lang/Object;

    iput-object v3, v0, Lx27;->f:[[Ljava/lang/Object;

    .line 7
    iget-object v7, p0, Lx27;->f:[[Ljava/lang/Object;

    array-length v8, v7

    invoke-static {v7, v1, v3, v1, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-ne v2, v5, :cond_3

    .line 8
    iget-object v2, v0, Lx27;->f:[[Ljava/lang/Object;

    iget-object v3, p0, Lx27;->f:[[Ljava/lang/Object;

    array-length v3, v3

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v2, v3

    goto :goto_3

    .line 9
    :cond_3
    iget-object v3, v0, Lx27;->f:[[Ljava/lang/Object;

    new-array v5, v6, [Ljava/lang/Object;

    aput-object p1, v5, v1

    aput-object p2, v5, v4

    aput-object v5, v3, v2

    :goto_3
    return-object v0
.end method

.method public f(Le37$a;)Lx27;
    .locals 3

    .line 1
    new-instance v0, Lx27;

    invoke-direct {v0, p0}, Lx27;-><init>(Lx27;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lx27;->g:Ljava/util/List;

    .line 3
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    iget-object v2, p0, Lx27;->g:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 5
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, v0, Lx27;->g:Ljava/util/List;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Lc50;->K0(Ljava/lang/Object;)Lnd5;

    move-result-object v0

    iget-object v1, p0, Lx27;->a:Lm37;

    const-string v2, "deadline"

    .line 2
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 3
    iget-object v1, p0, Lx27;->c:Ljava/lang/String;

    const-string v2, "authority"

    .line 4
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 5
    iget-object v1, p0, Lx27;->d:Lw27;

    const-string v2, "callCredentials"

    .line 6
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 7
    iget-object v1, p0, Lx27;->b:Ljava/util/concurrent/Executor;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "executor"

    .line 8
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 9
    iget-object v1, p0, Lx27;->e:Ljava/lang/String;

    const-string v2, "compressorName"

    .line 10
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 11
    iget-object v1, p0, Lx27;->f:[[Ljava/lang/Object;

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->deepToString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "customOptions"

    .line 13
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 14
    invoke-virtual {p0}, Lx27;->b()Z

    move-result v1

    const-string v2, "waitForReady"

    invoke-virtual {v0, v2, v1}, Lnd5;->c(Ljava/lang/String;Z)Lnd5;

    iget-object v1, p0, Lx27;->i:Ljava/lang/Integer;

    const-string v2, "maxInboundMessageSize"

    .line 15
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 16
    iget-object v1, p0, Lx27;->j:Ljava/lang/Integer;

    const-string v2, "maxOutboundMessageSize"

    .line 17
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 18
    iget-object v1, p0, Lx27;->g:Ljava/util/List;

    const-string v2, "streamTracerFactories"

    .line 19
    invoke-virtual {v0, v2, v1}, Lnd5;->d(Ljava/lang/String;Ljava/lang/Object;)Lnd5;

    .line 20
    invoke-virtual {v0}, Lnd5;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
