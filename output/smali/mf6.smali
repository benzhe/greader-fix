.class public final Lmf6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf6$a;
    }
.end annotation


# instance fields
.field public final e:Lne6;

.field public final f:Z


# direct methods
.method public constructor <init>(Lne6;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lmf6;->e:Lne6;

    .line 3
    iput-boolean p2, p0, Lmf6;->f:Z

    return-void
.end method


# virtual methods
.method public b(Lod6;Ldg6;)Lde6;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lod6;",
            "Ldg6<",
            "TT;>;)",
            "Lde6<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v1, p2, Ldg6;->b:Ljava/lang/reflect/Type;

    .line 2
    iget-object v3, p2, Ldg6;->a:Ljava/lang/Class;

    .line 3
    const-class v4, Ljava/util/Map;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 4
    :cond_0
    invoke-static {v1}, Lhe6;->e(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    move-result-object v3

    .line 5
    const-class v4, Ljava/lang/Object;

    const-class v5, Ljava/lang/String;

    const-class v6, Ljava/util/Properties;

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ne v1, v6, :cond_1

    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v5, v1, v8

    aput-object v5, v1, v9

    goto :goto_0

    .line 6
    :cond_1
    const-class v5, Ljava/util/Map;

    invoke-static {v1, v3, v5}, Lhe6;->f(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    move-result-object v1

    .line 7
    instance-of v3, v1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v3, :cond_2

    .line 8
    check-cast v1, Ljava/lang/reflect/ParameterizedType;

    .line 9
    invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v1

    goto :goto_0

    :cond_2
    new-array v1, v7, [Ljava/lang/reflect/Type;

    aput-object v4, v1, v8

    aput-object v4, v1, v9

    .line 10
    :goto_0
    aget-object v3, v1, v8

    .line 11
    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq v3, v4, :cond_4

    const-class v4, Ljava/lang/Boolean;

    if-ne v3, v4, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    new-instance v4, Ldg6;

    invoke-direct {v4, v3}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 13
    invoke-virtual {p1, v4}, Lod6;->d(Ldg6;)Lde6;

    move-result-object v3

    goto :goto_2

    .line 14
    :cond_4
    :goto_1
    sget-object v3, Luf6;->f:Lde6;

    :goto_2
    move-object v4, v3

    .line 15
    aget-object v3, v1, v9

    .line 16
    new-instance v5, Ldg6;

    invoke-direct {v5, v3}, Ldg6;-><init>(Ljava/lang/reflect/Type;)V

    .line 17
    invoke-virtual {p1, v5}, Lod6;->d(Ldg6;)Lde6;

    move-result-object v6

    .line 18
    iget-object v3, p0, Lmf6;->e:Lne6;

    invoke-virtual {v3, p2}, Lne6;->a(Ldg6;)Laf6;

    move-result-object v7

    .line 19
    new-instance v10, Lmf6$a;

    aget-object v3, v1, v8

    aget-object v5, v1, v9

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    invoke-direct/range {v0 .. v7}, Lmf6$a;-><init>(Lmf6;Lod6;Ljava/lang/reflect/Type;Lde6;Ljava/lang/reflect/Type;Lde6;Laf6;)V

    return-object v10
.end method
