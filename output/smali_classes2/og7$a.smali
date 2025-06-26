.class public final Log7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ltb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Log7;
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
        "Ltb7<",
        "TT;>;",
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Ltb7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ltb7<",
            "-TT;>;"
        }
    .end annotation
.end field

.field public final f:Log7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Log7<",
            "TT;>;"
        }
    .end annotation
.end field

.field public g:Lic7;


# direct methods
.method public constructor <init>(Ltb7;Log7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ltb7<",
            "-TT;>;",
            "Log7<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Log7$a;->e:Ltb7;

    .line 3
    iput-object p2, p0, Log7$a;->f:Log7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Log7$a;->g:Lic7;

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Log7$a;->g:Lic7;

    .line 4
    iget-object v0, p0, Log7$a;->e:Ltb7;

    invoke-interface {v0}, Ltb7;->a()V

    .line 5
    invoke-virtual {p0}, Log7$a;->d()V

    return-void

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, v0}, Log7$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Log7$a;->g:Lic7;

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    .line 2
    invoke-static {p1}, Ln56;->z1(Ljava/lang/Throwable;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Log7$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 2

    .line 1
    iget-object v0, p0, Log7$a;->g:Lic7;

    invoke-static {v0, p1}, Lyc7;->x(Lic7;Lic7;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object p1, p0, Log7$a;->g:Lic7;

    .line 4
    iget-object p1, p0, Log7$a;->e:Ltb7;

    invoke-interface {p1, p0}, Ltb7;->c(Lic7;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 6
    invoke-interface {p1}, Lic7;->k()V

    .line 7
    sget-object p1, Lyc7;->e:Lyc7;

    iput-object p1, p0, Log7$a;->g:Lic7;

    .line 8
    iget-object p1, p0, Log7$a;->e:Ltb7;

    .line 9
    sget-object v1, Lzc7;->e:Lzc7;

    invoke-interface {p1, v1}, Ltb7;->c(Lic7;)V

    .line 10
    invoke-interface {p1, v0}, Ltb7;->b(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    invoke-static {v0}, Ln56;->z1(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public e(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    iget-object v0, v0, Log7;->h:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {v0}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 3
    new-instance v1, Lkc7;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Throwable;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object v0, v2, p1

    invoke-direct {v1, v2}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    move-object p1, v1

    .line 4
    :goto_0
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Log7$a;->g:Lic7;

    .line 5
    iget-object v0, p0, Log7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->b(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0}, Log7$a;->d()V

    return-void
.end method

.method public k()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;
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
    iget-object v0, p0, Log7$a;->g:Lic7;

    invoke-interface {v0}, Lic7;->k()V

    .line 5
    sget-object v0, Lyc7;->e:Lyc7;

    iput-object v0, p0, Log7$a;->g:Lic7;

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
    iget-object v0, p0, Log7$a;->g:Lic7;

    sget-object v1, Lyc7;->e:Lyc7;

    if-ne v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Log7$a;->f:Log7;

    iget-object v0, v0, Log7;->g:Ltc7;

    invoke-interface {v0, p1}, Ltc7;->accept(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    iput-object v1, p0, Log7$a;->g:Lic7;

    .line 4
    iget-object v0, p0, Log7$a;->e:Ltb7;

    invoke-interface {v0, p1}, Ltb7;->onSuccess(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {p0}, Log7$a;->d()V

    return-void

    :catchall_0
    move-exception p1

    .line 6
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 7
    invoke-virtual {p0, p1}, Log7$a;->e(Ljava/lang/Throwable;)V

    return-void
.end method
