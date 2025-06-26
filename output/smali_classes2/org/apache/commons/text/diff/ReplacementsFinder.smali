.class public Lorg/apache/commons/text/diff/ReplacementsFinder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/commons/text/diff/CommandVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/text/diff/CommandVisitor<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final handler:Lorg/apache/commons/text/diff/ReplacementsHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/text/diff/ReplacementsHandler<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingDeletions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final pendingInsertions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end field

.field private skipped:I


# direct methods
.method public constructor <init>(Lorg/apache/commons/text/diff/ReplacementsHandler;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/text/diff/ReplacementsHandler<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    .line 5
    iput-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->handler:Lorg/apache/commons/text/diff/ReplacementsHandler;

    return-void
.end method


# virtual methods
.method public visitDeleteCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitInsertCommand(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public visitKeepCommand(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    add-int/2addr p1, v0

    iput p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->handler:Lorg/apache/commons/text/diff/ReplacementsHandler;

    iget v1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    iget-object v2, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    iget-object v3, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {p1, v1, v2, v3}, Lorg/apache/commons/text/diff/ReplacementsHandler;->handleReplacement(ILjava/util/List;Ljava/util/List;)V

    .line 4
    iget-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingDeletions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 5
    iget-object p1, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->pendingInsertions:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 6
    iput v0, p0, Lorg/apache/commons/text/diff/ReplacementsFinder;->skipped:I

    :goto_0
    return-void
.end method
