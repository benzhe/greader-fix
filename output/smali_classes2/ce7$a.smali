.class public final Lce7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lce7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/atomic/AtomicReference<",
        "Lic7;",
        ">;",
        "Ljb7;",
        "Lic7;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final f:Lzb7;

.field public g:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljb7;Lzb7;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lce7$a;->e:Ljb7;

    .line 3
    iput-object p2, p0, Lce7$a;->f:Lzb7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lce7$a;->f:Lzb7;

    invoke-virtual {v0, p0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object v0

    invoke-static {p0, v0}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lce7$a;->g:Ljava/lang/Throwable;

    .line 2
    iget-object p1, p0, Lce7$a;->f:Lzb7;

    invoke-virtual {p1, p0}, Lzb7;->b(Ljava/lang/Runnable;)Lic7;

    move-result-object p1

    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->w(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lce7$a;->e:Ljb7;

    invoke-interface {p1, p0}, Ljb7;->c(Lic7;)V

    :cond_0
    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method

.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lce7$a;->g:Ljava/lang/Throwable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lce7$a;->g:Ljava/lang/Throwable;

    .line 3
    iget-object v1, p0, Lce7$a;->e:Ljb7;

    invoke-interface {v1, v0}, Ljb7;->b(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lce7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    :goto_0
    return-void
.end method
