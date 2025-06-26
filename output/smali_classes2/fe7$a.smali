.class public final Lfe7$a;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "SourceFile"

# interfaces
.implements Ljb7;
.implements Lic7;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfe7;
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
        "Lic7;"
    }
.end annotation


# instance fields
.field public final e:Ljb7;

.field public final f:Luc7;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Llb7;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z


# direct methods
.method public constructor <init>(Ljb7;Luc7;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljb7;",
            "Luc7<",
            "-",
            "Ljava/lang/Throwable;",
            "+",
            "Llb7;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 2
    iput-object p1, p0, Lfe7$a;->e:Ljb7;

    .line 3
    iput-object p2, p0, Lfe7$a;->f:Luc7;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lfe7$a;->e:Ljb7;

    invoke-interface {v0}, Ljb7;->a()V

    return-void
.end method

.method public b(Ljava/lang/Throwable;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lfe7$a;->g:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lfe7$a;->e:Ljb7;

    invoke-interface {v0, p1}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lfe7$a;->g:Z

    .line 4
    :try_start_0
    iget-object v1, p0, Lfe7$a;->f:Luc7;

    invoke-interface {v1, p1}, Luc7;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const-string v2, "The errorMapper returned a null CompletableSource"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    check-cast v1, Llb7;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-interface {v1, p0}, Llb7;->a(Ljb7;)V

    return-void

    :catchall_0
    move-exception v1

    .line 8
    invoke-static {v1}, Ln56;->r2(Ljava/lang/Throwable;)V

    .line 9
    iget-object v2, p0, Lfe7$a;->e:Ljb7;

    new-instance v3, Lkc7;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v0

    invoke-direct {v3, v4}, Lkc7;-><init>([Ljava/lang/Throwable;)V

    invoke-interface {v2, v3}, Ljb7;->b(Ljava/lang/Throwable;)V

    return-void
.end method

.method public c(Lic7;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lyc7;->t(Ljava/util/concurrent/atomic/AtomicReference;Lic7;)Z

    return-void
.end method

.method public k()V
    .locals 0

    .line 1
    invoke-static {p0}, Lyc7;->i(Ljava/util/concurrent/atomic/AtomicReference;)Z

    return-void
.end method
