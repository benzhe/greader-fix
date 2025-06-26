.class public final synthetic Luh6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final e:Ljh6;


# direct methods
.method public constructor <init>(Ljh6;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Luh6;->e:Ljh6;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget-object v0, p0, Luh6;->e:Ljh6;

    .line 1
    iget-object v1, v0, Ljh6;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v1

    const/4 v2, 0x0

    if-ltz v1, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 2
    :goto_0
    invoke-static {v3}, Lbi;->l(Z)V

    if-nez v1, :cond_2

    .line 3
    move-object v1, v0

    check-cast v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    .line 4
    iget-object v3, v1, Ljh6;->b:Llh6;

    .line 5
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    iget-object v3, v3, Llh6;->d:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    invoke-static {v3}, Lbi;->l(Z)V

    .line 7
    iget-wide v3, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {v1, v3, v4}, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->nativeDestroy(J)V

    .line 9
    iput-wide v5, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->g:J

    const/4 v3, 0x0

    .line 10
    iput-object v3, v1, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;->f:Ljava/nio/MappedByteBuffer;

    .line 11
    :goto_1
    iget-object v0, v0, Ljh6;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    :cond_2
    return-void
.end method
