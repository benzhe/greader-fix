.class public final Llw2;
.super Lmv2;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/RunnableFuture;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lmv2<",
        "TV;>;",
        "Ljava/util/concurrent/RunnableFuture<",
        "TV;>;"
    }
.end annotation


# instance fields
.field public volatile l:Lwv2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lwv2<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ldv2;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ldv2<",
            "TV;>;)V"
        }
    .end annotation

    .line 3
    invoke-direct {p0}, Lmv2;-><init>()V

    .line 4
    new-instance v0, Low2;

    invoke-direct {v0, p0, p1}, Low2;-><init>(Llw2;Ldv2;)V

    iput-object v0, p0, Llw2;->l:Lwv2;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/Callable;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Callable<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lmv2;-><init>()V

    .line 2
    new-instance v0, Lnw2;

    invoke-direct {v0, p0, p1}, Lnw2;-><init>(Llw2;Ljava/util/concurrent/Callable;)V

    iput-object v0, p0, Llw2;->l:Lwv2;

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lsu2;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Llw2;->l:Lwv2;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lwv2;->a()V

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Llw2;->l:Lwv2;

    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Llw2;->l:Lwv2;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, 0x7

    const-string v2, "task=["

    const-string v3, "]"

    invoke-static {v1, v2, v0, v3}, Ljo;->c(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    invoke-super {p0}, Lsu2;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Llw2;->l:Lwv2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lwv2;->run()V

    :cond_0
    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Llw2;->l:Lwv2;

    return-void
.end method
