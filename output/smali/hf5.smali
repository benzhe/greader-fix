.class public final Lhf5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ldf5;


# instance fields
.field public final a:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final b:Lbf5$b;

.field public final c:Lxr4;

.field public final d:Lgf5;


# direct methods
.method public constructor <init>(Lxr4;Lbf5$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lhf5;->b:Lbf5$b;

    iput-object p1, p0, Lhf5;->c:Lxr4;

    new-instance p2, Lgf5;

    .line 1
    invoke-direct {p2, p0}, Lgf5;-><init>(Lhf5;)V

    iput-object p2, p0, Lhf5;->d:Lgf5;

    .line 2
    invoke-virtual {p1, p2}, Lxr4;->a(Lxr4$a;)V

    new-instance p1, Ljava/util/HashSet;

    .line 3
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lhf5;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lhf5;->a:Ljava/util/Set;

    .line 1
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    iget-object v0, p0, Lhf5;->a:Ljava/util/Set;

    new-instance v1, Ljava/util/HashSet;

    .line 2
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 4
    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v3

    const/16 v4, 0x32

    if-lt v3, v4, :cond_1

    goto/16 :goto_9

    .line 5
    :cond_1
    sget-object v3, Lff5;->a:Ljava/util/Set;

    const/16 v3, 0x5f

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v2, :cond_2

    goto :goto_2

    .line 6
    :cond_2
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 8
    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_4

    if-ne v6, v3, :cond_5

    .line 9
    :cond_4
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 10
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    :goto_1
    if-ge v6, v7, :cond_7

    .line 11
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-eq v8, v3, :cond_6

    .line 12
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-eqz v9, :cond_5

    goto :goto_3

    :cond_5
    :goto_2
    const/4 v6, 0x0

    goto :goto_4

    .line 13
    :cond_6
    :goto_3
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_1

    :cond_7
    const/4 v6, 0x1

    :goto_4
    if-eqz v6, :cond_0

    if-nez v2, :cond_8

    goto :goto_6

    .line 14
    :cond_8
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_9

    goto :goto_6

    .line 15
    :cond_9
    invoke-virtual {v2, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v6

    .line 16
    invoke-static {v6}, Ljava/lang/Character;->isLetter(I)Z

    move-result v7

    if-nez v7, :cond_a

    goto :goto_6

    .line 17
    :cond_a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    .line 18
    invoke-static {v6}, Ljava/lang/Character;->charCount(I)I

    move-result v6

    :goto_5
    if-ge v6, v7, :cond_d

    .line 19
    invoke-virtual {v2, v6}, Ljava/lang/String;->codePointAt(I)I

    move-result v8

    if-eq v8, v3, :cond_c

    .line 20
    invoke-static {v8}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v9

    if-eqz v9, :cond_b

    goto :goto_7

    :cond_b
    :goto_6
    const/4 v4, 0x0

    goto :goto_8

    .line 21
    :cond_c
    :goto_7
    invoke-static {v8}, Ljava/lang/Character;->charCount(I)I

    move-result v8

    add-int/2addr v6, v8

    goto :goto_5

    :cond_d
    :goto_8
    if-eqz v4, :cond_0

    .line 22
    invoke-static {v2}, Loy4;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_e

    move-object v2, v3

    .line 23
    :cond_e
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 24
    :cond_f
    :goto_9
    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-void
.end method
