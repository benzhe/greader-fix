.class public final Lve6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lee6;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final g:Lve6;


# instance fields
.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgd6;",
            ">;"
        }
    .end annotation
.end field

.field public f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lgd6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lve6;

    invoke-direct {v0}, Lve6;-><init>()V

    sput-object v0, Lve6;->g:Lve6;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lve6;->e:Ljava/util/List;

    .line 3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lve6;->f:Ljava/util/List;

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
    iget-object v0, p2, Ldg6;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, v0}, Lve6;->d(Ljava/lang/Class;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {p0, v0, v2}, Lve6;->c(Ljava/lang/Class;Z)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v8, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v8, 0x1

    :goto_1
    if-nez v1, :cond_3

    .line 4
    invoke-virtual {p0, v0, v3}, Lve6;->c(Ljava/lang/Class;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const/4 v7, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, 0x1

    :goto_3
    if-nez v8, :cond_4

    if-nez v7, :cond_4

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_4
    new-instance v0, Lve6$a;

    move-object v5, v0

    move-object v6, p0

    move-object v9, p1

    move-object v10, p2

    invoke-direct/range {v5 .. v10}, Lve6$a;-><init>(Lve6;ZZLod6;Ldg6;)V

    return-object v0
.end method

.method public final c(Ljava/lang/Class;Z)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)Z"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 1
    iget-object p2, p0, Lve6;->e:Ljava/util/List;

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lve6;->f:Ljava/util/List;

    .line 2
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgd6;

    .line 3
    invoke-interface {v0, p1}, Lgd6;->b(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public clone()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lve6;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final d(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    const-class v0, Ljava/lang/Enum;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->isAnonymousClass()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Class;->isLocalClass()Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
