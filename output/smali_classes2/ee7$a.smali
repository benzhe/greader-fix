.class public final Lee7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lee7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final e:Ljb7;

.field public f:Lic7;

.field public final synthetic g:Lee7;


# direct methods
.method public constructor <init>(Lee7;Ljb7;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lee7$a;->g:Lee7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lee7$a;->e:Ljb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lee7$a;->f:Lic7;

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->d:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V

    .line 3
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->e:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    iget-object v0, p0, Lee7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    .line 5
    :try_start_1
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->f:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 7
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void

    :catchall_1
    move-exception v0

    .line 8
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    iget-object v1, p0, Lee7$a;->e:Ljb7;

    invoke-interface {v1, v0}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lee7$a;->f:Lic7;

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->c:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->e:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 6
    new-instance v1, Lkc7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 7
    :goto_0
    iget-object v0, p0, Lee7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    .line 8
    :try_start_1
    iget-object p1, p0, Lee7$a;->g:Lee7;

    iget-object p1, p1, Lee7;->f:Lqc7;

    invoke-interface {p1}, Lqc7;->run()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 10
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public c(Lic7;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->b:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    iget-object v0, p0, Lee7$a;->f:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iput-object p1, p0, Lee7$a;->f:Lic7;

    .line 4
    iget-object p1, p0, Lee7$a;->e:Ljb7;

    invoke-interface {p1, p0}, Ljb7;->c(Lic7;)V

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lic7;->k()V

    .line 7
    sget-object p1, Lyc7;->e:Lyc7;

    iput-object p1, p0, Lee7$a;->f:Lic7;

    .line 8
    iget-object p1, p0, Lee7$a;->e:Ljb7;

    .line 9
    sget-object v1, Lzc7;->e:Lzc7;

    invoke-interface {p1, v1}, Ljb7;->c(Lic7;)V

    .line 10
    invoke-interface {p1, v0}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lee7$a;->g:Lee7;

    iget-object v0, v0, Lee7;->g:Lqc7;

    invoke-interface {v0}, Lqc7;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lee7$a;->f:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    return-void
.end method
