.class public Lfr7;
.super Lsp7;
.source "SourceFile"


# instance fields
.field public g:Ldr7;

.field public final h:I

.field public final i:I

.field public final j:J

.field public final k:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;I)V
    .locals 6

    and-int/lit8 p3, p4, 0x1

    if-eqz p3, :cond_0

    .line 1
    sget p1, Lnr7;->b:I

    :cond_0
    move v1, p1

    and-int/lit8 p1, p4, 0x2

    if-eqz p1, :cond_1

    .line 2
    sget p2, Lnr7;->c:I

    :cond_1
    move v2, p2

    and-int/lit8 p1, p4, 0x4

    if-eqz p1, :cond_2

    const-string p1, "DefaultDispatcher"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    move-object v5, p1

    .line 3
    sget-wide v3, Lnr7;->d:J

    .line 4
    invoke-direct {p0}, Lsp7;-><init>()V

    iput v1, p0, Lfr7;->h:I

    iput v2, p0, Lfr7;->i:I

    iput-wide v3, p0, Lfr7;->j:J

    iput-object v5, p0, Lfr7;->k:Ljava/lang/String;

    .line 5
    new-instance p1, Ldr7;

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Ldr7;-><init>(IIJLjava/lang/String;)V

    .line 6
    iput-object p1, p0, Lfr7;->g:Ldr7;

    return-void
.end method


# virtual methods
.method public t(Lrk7;Ljava/lang/Runnable;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object p1, p0, Lfr7;->g:Ldr7;

    .line 2
    sget-object v0, Ldr7;->l:Ljava/util/concurrent/atomic/AtomicLongFieldUpdater;

    .line 3
    sget-object v0, Ljr7;->e:Ljr7;

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Ldr7;->e(Ljava/lang/Runnable;Llr7;Z)V
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    sget-object p1, Lgp7;->m:Lgp7;

    .line 5
    invoke-virtual {p1, p2}, Lop7;->Z(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
