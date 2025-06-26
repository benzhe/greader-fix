.class public Lpk6$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lpk6;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# instance fields
.field public final a:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lqi6;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lpk6$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    return-void
.end method


# virtual methods
.method public final a(Lqi6;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lqi6;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Lqi6;->size()I

    move-result v0

    .line 3
    sget-object v1, Lpk6;->m:[I

    invoke-static {v1, v0}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v0

    if-gez v0, :cond_0

    add-int/lit8 v0, v0, 0x1

    neg-int v0, v0

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v0, 0x1

    .line 4
    invoke-static {v1}, Lpk6;->N(I)I

    move-result v1

    .line 5
    iget-object v2, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    iget-object v2, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqi6;

    invoke-virtual {v2}, Lqi6;->size()I

    move-result v2

    if-lt v2, v1, :cond_1

    goto/16 :goto_2

    .line 6
    :cond_1
    invoke-static {v0}, Lpk6;->N(I)I

    move-result v0

    .line 7
    iget-object v1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqi6;

    .line 8
    :goto_0
    iget-object v2, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqi6;

    invoke-virtual {v2}, Lqi6;->size()I

    move-result v2

    if-ge v2, v0, :cond_2

    .line 9
    iget-object v2, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v2}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lqi6;

    .line 10
    new-instance v3, Lpk6;

    .line 11
    invoke-direct {v3, v2, v1}, Lpk6;-><init>(Lqi6;Lqi6;)V

    move-object v1, v3

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lpk6;

    .line 13
    invoke-direct {v0, v1, p1}, Lpk6;-><init>(Lqi6;Lqi6;)V

    .line 14
    :goto_1
    iget-object p1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget p1, v0, Lpk6;->h:I

    .line 16
    sget-object v1, Lpk6;->m:[I

    invoke-static {v1, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    if-gez p1, :cond_3

    add-int/lit8 p1, p1, 0x1

    neg-int p1, p1

    add-int/lit8 p1, p1, -0x1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    .line 17
    invoke-static {p1}, Lpk6;->N(I)I

    move-result p1

    .line 18
    iget-object v1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v1}, Ljava/util/ArrayDeque;->peek()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lqi6;

    invoke-virtual {v1}, Lqi6;->size()I

    move-result v1

    if-ge v1, p1, :cond_4

    .line 19
    iget-object p1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lqi6;

    .line 20
    new-instance v1, Lpk6;

    .line 21
    invoke-direct {v1, p1, v0}, Lpk6;-><init>(Lqi6;Lqi6;)V

    move-object v0, v1

    goto :goto_1

    .line 22
    :cond_4
    iget-object p1, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {p1, v0}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 23
    :cond_5
    :goto_2
    iget-object v0, p0, Lpk6$b;->a:Ljava/util/ArrayDeque;

    invoke-virtual {v0, p1}, Ljava/util/ArrayDeque;->push(Ljava/lang/Object;)V

    goto :goto_3

    .line 24
    :cond_6
    instance-of v0, p1, Lpk6;

    if-eqz v0, :cond_7

    .line 25
    check-cast p1, Lpk6;

    .line 26
    iget-object v0, p1, Lpk6;->i:Lqi6;

    .line 27
    invoke-virtual {p0, v0}, Lpk6$b;->a(Lqi6;)V

    .line 28
    iget-object p1, p1, Lpk6;->j:Lqi6;

    .line 29
    invoke-virtual {p0, p1}, Lpk6$b;->a(Lqi6;)V

    :goto_3
    return-void

    .line 30
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Has a new type of ByteString been created? Found "

    invoke-static {v1}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 31
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
