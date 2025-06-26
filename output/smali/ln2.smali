.class public final Lln2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrv2;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrv2<",
        "Lcn2<",
        "TAdT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lkn2;


# direct methods
.method public constructor <init>(Lkn2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lln2;->a:Lkn2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lln2;->a:Lkn2;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 3
    iget-object v1, v1, Lkn2;->g:Lth2;

    .line 4
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 6
    iget-object v1, v1, Lkn2;->c:Liw2;

    .line 7
    invoke-virtual {v1, p1}, Liw2;->j(Ljava/lang/Throwable;)Z

    .line 8
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onSuccess(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Lcn2;

    .line 2
    iget-object v0, p0, Lln2;->a:Lkn2;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 4
    iget-object v1, v1, Lkn2;->g:Lth2;

    .line 5
    iget-object v1, v1, Lth2;->a:Lli2;

    invoke-interface {v1}, Lli2;->b()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ll91;

    invoke-interface {v1}, Ll91;->d()Lh71;

    move-result-object v1

    iput-object v1, p1, Lcn2;->a:Lh71;

    .line 6
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 7
    iget v2, v1, Lkn2;->e:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    .line 8
    iget-object v2, v1, Lkn2;->f:Lsm2;

    .line 9
    iget-object v1, v1, Lkn2;->b:Lon2;

    .line 10
    invoke-interface {v1}, Lon2;->a()Lbn2;

    move-result-object v1

    check-cast v2, Lrm2;

    invoke-virtual {v2, v1, p1}, Lrm2;->c(Lbn2;Lcn2;)Z

    .line 11
    :cond_0
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 12
    iget v2, v1, Lkn2;->e:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 13
    iget-object v2, v1, Lkn2;->b:Lon2;

    .line 14
    invoke-virtual {v1, v2}, Lkn2;->a(Lon2;)V

    .line 15
    :cond_1
    iget-object v1, p0, Lln2;->a:Lkn2;

    .line 16
    iput v3, v1, Lkn2;->e:I

    .line 17
    iget-object v1, v1, Lkn2;->c:Liw2;

    .line 18
    invoke-virtual {v1, p1}, Liw2;->h(Ljava/lang/Object;)Z

    .line 19
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
