.class public final Lzg7;
.super Lwb7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzg7$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lwb7<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final e:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Iterable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lwb7;-><init>()V

    .line 2
    iput-object p1, p0, Lzg7;->e:Ljava/lang/Iterable;

    return-void
.end method


# virtual methods
.method public f(Lyb7;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb7<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    sget-object v0, Lzc7;->e:Lzc7;

    :try_start_0
    iget-object v1, p0, Lzg7;->e:Ljava/lang/Iterable;

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 2
    :try_start_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v2, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 4
    invoke-interface {p1}, Lyb7;->a()V

    return-void

    .line 5
    :cond_0
    new-instance v0, Lzg7$a;

    invoke-direct {v0, p1, v1}, Lzg7$a;-><init>(Lyb7;Ljava/util/Iterator;)V

    .line 6
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 7
    :cond_1
    iget-boolean p1, v0, Lzg7$a;->g:Z

    if-eqz p1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    :try_start_2
    iget-object p1, v0, Lzg7$a;->f:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    const-string v1, "The iterator returned a null value"

    .line 9
    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 10
    iget-object v1, v0, Lzg7$a;->e:Lyb7;

    invoke-interface {v1, p1}, Lyb7;->d(Ljava/lang/Object;)V

    .line 11
    iget-boolean p1, v0, Lzg7$a;->g:Z

    if-eqz p1, :cond_3

    goto :goto_0

    .line 12
    :cond_3
    :try_start_3
    iget-object p1, v0, Lzg7$a;->f:Ljava/util/Iterator;

    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_1

    .line 13
    iget-boolean p1, v0, Lzg7$a;->g:Z

    if-nez p1, :cond_4

    .line 14
    iget-object p1, v0, Lzg7$a;->e:Lyb7;

    invoke-interface {p1}, Lyb7;->a()V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 16
    iget-object v0, v0, Lzg7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    :catchall_1
    move-exception p1

    .line 17
    invoke-static {p1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 18
    iget-object v0, v0, Lzg7$a;->e:Lyb7;

    invoke-interface {v0, p1}, Lyb7;->b(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    return-void

    :catchall_2
    move-exception v1

    .line 19
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 20
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 21
    invoke-interface {p1, v1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void

    :catchall_3
    move-exception v1

    .line 22
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 23
    invoke-interface {p1, v0}, Lyb7;->c(Lic7;)V

    .line 24
    invoke-interface {p1, v1}, Lyb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method
