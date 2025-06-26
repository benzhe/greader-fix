.class public final Lfj7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lic7;
.implements Lvc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfj7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lic7;",
        "Ljava/lang/Object<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Lfj7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lfj7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Lqi7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lqi7<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public volatile k:Z

.field public l:J


# direct methods
.method public constructor <init>(Lyb7;Lfj7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;",
            "Lfj7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lfj7$a;->e:Lyb7;

    .line 3
    iput-object p2, p0, Lfj7$a;->f:Lfj7;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;J)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lfj7$a;->k:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lfj7$a;->j:Z

    if-nez v0, :cond_5

    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-boolean v0, p0, Lfj7$a;->k:Z

    if-eqz v0, :cond_1

    .line 5
    monitor-exit p0

    return-void

    .line 6
    :cond_1
    iget-wide v0, p0, Lfj7$a;->l:J

    cmp-long v2, v0, p2

    if-nez v2, :cond_2

    .line 7
    monitor-exit p0

    return-void

    .line 8
    :cond_2
    iget-boolean p2, p0, Lfj7$a;->h:Z

    if-eqz p2, :cond_4

    .line 9
    iget-object p2, p0, Lfj7$a;->i:Lqi7;

    if-nez p2, :cond_3

    .line 10
    new-instance p2, Lqi7;

    const/4 p3, 0x4

    invoke-direct {p2, p3}, Lqi7;-><init>(I)V

    .line 11
    iput-object p2, p0, Lfj7$a;->i:Lqi7;

    .line 12
    :cond_3
    invoke-virtual {p2, p1}, Lqi7;->b(Ljava/lang/Object;)V

    .line 13
    monitor-exit p0

    return-void

    :cond_4
    const/4 p2, 0x1

    .line 14
    iput-boolean p2, p0, Lfj7$a;->g:Z

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    iput-boolean p2, p0, Lfj7$a;->j:Z

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    .line 18
    :cond_5
    :goto_0
    invoke-virtual {p0, p1}, Lfj7$a;->test(Ljava/lang/Object;)Z

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lfj7$a;->k:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lfj7$a;->k:Z

    .line 3
    iget-object v0, p0, Lfj7$a;->f:Lfj7;

    invoke-virtual {v0, p0}, Lfj7;->h(Lfj7$a;)V

    :cond_0
    return-void
.end method

.method public test(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lfj7$a;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    iget-object v0, p0, Lfj7$a;->e:Lyb7;

    .line 2
    sget-object v3, Lwi7;->e:Lwi7;

    if-ne p1, v3, :cond_0

    .line 3
    invoke-interface {v0}, Lyb7;->a()V

    :goto_0
    const/4 p1, 0x1

    goto :goto_1

    .line 4
    :cond_0
    instance-of v3, p1, Lwi7$a;

    if-eqz v3, :cond_1

    .line 5
    check-cast p1, Lwi7$a;

    iget-object p1, p1, Lwi7$a;->e:Ljava/lang/Throwable;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v0, p1}, Lyb7;->d(Ljava/lang/Object;)V

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_3

    :cond_2
    const/4 v1, 0x1

    :cond_3
    return v1
.end method
