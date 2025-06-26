.class public final Lorg/apache/commons/text/RandomStringGenerator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/text/RandomStringGenerator$Builder;
    }
.end annotation


# instance fields
.field private final characterList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private final inclusivePredicates:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;"
        }
    .end annotation
.end field

.field private final maximumCodePoint:I

.field private final minimumCodePoint:I

.field private final random:Lorg/apache/commons/text/TextRandomProvider;


# direct methods
.method private constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/Set<",
            "Lorg/apache/commons/text/CharacterPredicate;",
            ">;",
            "Lorg/apache/commons/text/TextRandomProvider;",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    .line 4
    iput p2, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    .line 5
    iput-object p3, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    .line 6
    iput-object p4, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    .line 7
    iput-object p5, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    return-void
.end method

.method public synthetic constructor <init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;Lorg/apache/commons/text/RandomStringGenerator$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lorg/apache/commons/text/RandomStringGenerator;-><init>(IILjava/util/Set;Lorg/apache/commons/text/TextRandomProvider;Ljava/util/List;)V

    return-void
.end method

.method private generateRandomNumber(II)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    if-eqz v0, :cond_0

    sub-int/2addr p2, p1

    add-int/lit8 p2, p2, 0x1

    .line 2
    invoke-interface {v0, p2}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result p2

    add-int/2addr p2, p1

    return p2

    .line 3
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result p1

    return p1
.end method

.method private generateRandomNumber(Ljava/util/List;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Character;",
            ">;)I"
        }
    .end annotation

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 5
    iget-object v1, p0, Lorg/apache/commons/text/RandomStringGenerator;->random:Lorg/apache/commons/text/TextRandomProvider;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1, v0}, Lorg/apache/commons/text/TextRandomProvider;->nextInt(I)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    return p1

    .line 7
    :cond_0
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v1

    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ThreadLocalRandom;->nextInt(II)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/String;->codePointAt(I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public generate(I)Ljava/lang/String;
    .locals 7

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p1, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    int-to-long v3, p1

    const-string v5, "Length %d is smaller than zero."

    .line 1
    invoke-static {v2, v5, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3
    :cond_2
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    .line 4
    iget-object p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->characterList:Ljava/util/List;

    invoke-direct {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(Ljava/util/List;)I

    move-result p1

    goto :goto_1

    .line 5
    :cond_3
    iget p1, p0, Lorg/apache/commons/text/RandomStringGenerator;->minimumCodePoint:I

    iget v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->maximumCodePoint:I

    invoke-direct {p0, p1, v5}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result p1

    .line 6
    :goto_1
    invoke-static {p1}, Ljava/lang/Character;->getType(I)I

    move-result v5

    if-eqz v5, :cond_7

    const/16 v6, 0x12

    if-eq v5, v6, :cond_7

    const/16 v6, 0x13

    if-eq v5, v6, :cond_7

    .line 7
    iget-object v5, p0, Lorg/apache/commons/text/RandomStringGenerator;->inclusivePredicates:Ljava/util/Set;

    if-eqz v5, :cond_6

    .line 8
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/commons/text/CharacterPredicate;

    .line 9
    invoke-interface {v6, p1}, Lorg/apache/commons/text/CharacterPredicate;->test(I)Z

    move-result v6

    if-eqz v6, :cond_4

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-nez v5, :cond_6

    goto :goto_3

    .line 10
    :cond_6
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    const-wide/16 v5, 0x1

    sub-long/2addr v3, v5

    :cond_7
    :goto_3
    const-wide/16 v5, 0x0

    cmp-long p1, v3, v5

    if-nez p1, :cond_2

    .line 11
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public generate(II)Ljava/lang/String;
    .locals 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ltz p1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    int-to-long v3, p1

    const-string v5, "Minimum length %d is smaller than zero."

    .line 12
    invoke-static {v2, v5, v3, v4}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;J)V

    if-gt p1, p2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 13
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    const-string v0, "Maximum length %d is smaller than minimum length %d."

    .line 14
    invoke-static {v2, v0, v3}, Lorg/apache/commons/lang3/Validate;->isTrue(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 15
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/text/RandomStringGenerator;->generateRandomNumber(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lorg/apache/commons/text/RandomStringGenerator;->generate(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
