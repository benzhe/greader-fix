.class public final Lkh7$a;
.super Lpd7;
.source "SourceFile"

# interfaces
.implements Lcc7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkh7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lpd7<",
        "TR;>;",
        "Lcc7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Lyb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lyb7<",
            "-TR;>;"
        }
    .end annotation
.end field

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public g:Lic7;

.field public volatile h:Z


# direct methods
.method public constructor <init>(Lyb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TR;>;",
            "Luc7<",
            "-TT;+",
            "Ljava/lang/Iterable<",
            "+TR;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lpd7;-><init>()V

    .line 2
    iput-object p1, p0, Lkh7$a;->e:Lyb7;

    .line 3
    iput-object p2, p0, Lkh7$a;->f:Luc7;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Lkh7$a;->g:Lic7;

    .line 2
    iget-object v0, p0, Lkh7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkh7$a;->g:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-object p1, p0, Lkh7$a;->g:Lic7;

    .line 3
    iget-object p1, p0, Lkh7$a;->e:Lyb7;

    invoke-interface {p1, p0}, Lyb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public clear()V
    .locals 0

    return-void
.end method

.method public isEmpty()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public k()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lkh7$a;->h:Z

    .line 2
    iget-object v0, p0, Lkh7$a;->g:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 3
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Lkh7$a;->g:Lic7;

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkh7$a;->e:Lyb7;

    .line 2
    :try_start_0
    iget-object v1, p0, Lkh7$a;->f:Luc7;

    invoke-interface {v1, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Iterable;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez v1, :cond_0

    .line 4
    invoke-interface {v0}, Lyb7;->a()V

    return-void

    .line 5
    :cond_0
    iget-boolean v1, p0, Lkh7$a;->h:Z

    if-eqz v1, :cond_1

    return-void

    .line 6
    :cond_1
    :try_start_1
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 7
    invoke-interface {v0, v1}, Lyb7;->d(Ljava/lang/Object;)V

    .line 8
    iget-boolean v1, p0, Lkh7$a;->h:Z

    if-eqz v1, :cond_2

    return-void

    .line 9
    :cond_2
    :try_start_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v1, :cond_0

    .line 10
    invoke-interface {v0}, Lyb7;->a()V

    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 12
    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_1
    move-exception p1

    .line 13
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 14
    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_2
    move-exception p1

    .line 15
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, p0, Lkh7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
