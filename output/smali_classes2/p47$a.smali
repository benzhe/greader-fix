.class public final Lp47$a;
.super Ll47$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp47;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic e:Lp47;


# direct methods
.method public constructor <init>(Lp47;Lo47;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp47$a;->e:Lp47;

    invoke-direct {p0}, Ll47$c;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lp47$a;->e:Lp47;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lp47;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "unknown"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln47;

    invoke-virtual {v0}, Ll47$c;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v1

    .line 6
    monitor-exit v0

    throw v1
.end method

.method public b(Ljava/net/URI;Ll47$a;)Ll47;
    .locals 2

    .line 1
    iget-object v0, p0, Lp47$a;->e:Lp47;

    .line 2
    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, v0, Lp47;->c:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 4
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ln47;

    .line 5
    invoke-virtual {v1, p1, p2}, Ll47$c;->b(Ljava/net/URI;Ll47$a;)Ll47;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 6
    monitor-exit v0

    throw p1
.end method
