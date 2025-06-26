.class public Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcd;
.implements Ljava/io/Closeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl$a;
    }
.end annotation


# instance fields
.field public final e:Lai6;

.field public final f:Lfj4;

.field public final g:Ljava/util/concurrent/Executor;

.field public final h:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Lv35;


# direct methods
.method public constructor <init>(Lai6;Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;Lfj4;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->e:Lai6;

    .line 3
    iput-object p3, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->f:Lfj4;

    .line 4
    iput-object p4, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->g:Ljava/util/concurrent/Executor;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    .line 6
    new-instance p1, Lv35;

    invoke-direct {p1}, Lv35;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->i:Lv35;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 4
    .annotation runtime Lkd;
        value = .enum Lad$a;->ON_DESTROY:Lad$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->h:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/mlkit/nl/languageid/internal/LanguageIdentificationJni;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->i:Lv35;

    invoke-virtual {v1}, Lv35;->a()V

    .line 4
    iget-object v1, p0, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->g:Ljava/util/concurrent/Executor;

    .line 5
    iget-object v2, v0, Ljh6;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v2

    if-lez v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-static {v2}, Lbi;->l(Z)V

    .line 6
    iget-object v2, v0, Ljh6;->b:Llh6;

    new-instance v3, Luh6;

    invoke-direct {v3, v0}, Luh6;-><init>(Ljh6;)V

    invoke-virtual {v2, v1, v3}, Llh6;->a(Ljava/util/concurrent/Executor;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final k(JZLxp4$d;Lxp4$c;Lnh4;)V
    .locals 10

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v4, v0, p1

    .line 2
    new-instance v0, Lhi6;

    const/4 v9, 0x0

    move-object v2, v0

    move-object v3, p0

    move v6, p3

    move-object/from16 v7, p6

    move-object v8, p4

    invoke-direct/range {v2 .. v9}, Lhi6;-><init>(Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;JZLnh4;Lxp4$d;Lxp4$c;)V

    move-object v1, p0

    .line 3
    iget-object v2, v1, Lcom/google/mlkit/nl/languageid/LanguageIdentifierImpl;->f:Lfj4;

    sget-object v3, Loh4;->x:Loh4;

    invoke-virtual {v2, v0, v3}, Lfj4;->a(Lfj4$a;Loh4;)V

    return-void
.end method
