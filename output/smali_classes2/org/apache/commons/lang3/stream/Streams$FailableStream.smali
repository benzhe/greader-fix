.class public Lorg/apache/commons/lang3/stream/Streams$FailableStream;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/lang3/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FailableStream"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<O:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private stream:Ljava/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation
.end field

.field private terminated:Z


# direct methods
.method public constructor <init>(Ljava/util/stream/Stream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "TO;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-void
.end method


# virtual methods
.method public allMatch(Lorg/apache/commons/lang3/function/FailablePredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public anyMatch(Lorg/apache/commons/lang3/function/FailablePredicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TO;*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result p1

    return p1
.end method

.method public assertNotTerminated()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->terminated:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "This stream is already terminated."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Supplier<",
            "TR;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;-TO;>;",
            "Ljava/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation

    .line 3
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 4
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljava/util/stream/Stream;->collect(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public collect(Ljava/util/stream/Collector;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Collector<",
            "-TO;TA;TR;>;)TR;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public filter(Lorg/apache/commons/lang3/function/FailablePredicate;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailablePredicate<",
            "TO;*>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TO;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 2
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asPredicate(Lorg/apache/commons/lang3/function/FailablePredicate;)Ljava/util/function/Predicate;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object p0
.end method

.method public forEach(Lorg/apache/commons/lang3/function/FailableConsumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/lang3/function/FailableConsumer<",
            "TO;*>;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asConsumer(Lorg/apache/commons/lang3/function/FailableConsumer;)Ljava/util/function/Consumer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public makeTerminated()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->terminated:Z

    return-void
.end method

.method public map(Lorg/apache/commons/lang3/function/FailableFunction;)Lorg/apache/commons/lang3/stream/Streams$FailableStream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lorg/apache/commons/lang3/function/FailableFunction<",
            "TO;TR;*>;)",
            "Lorg/apache/commons/lang3/stream/Streams$FailableStream<",
            "TR;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->assertNotTerminated()V

    .line 2
    new-instance v0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;

    iget-object v1, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    invoke-static {p1}, Lorg/apache/commons/lang3/function/Failable;->asFunction(Lorg/apache/commons/lang3/function/FailableFunction;)Ljava/util/function/Function;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;-><init>(Ljava/util/stream/Stream;)V

    return-object v0
.end method

.method public reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TO;",
            "Ljava/util/function/BinaryOperator<",
            "TO;>;)TO;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->makeTerminated()V

    .line 2
    invoke-virtual {p0}, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/stream/Stream;->reduce(Ljava/lang/Object;Ljava/util/function/BinaryOperator;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public stream()Ljava/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/stream/Stream<",
            "TO;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/apache/commons/lang3/stream/Streams$FailableStream;->stream:Ljava/util/stream/Stream;

    return-object v0
.end method
