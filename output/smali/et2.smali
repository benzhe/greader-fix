.class public abstract Let2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Let2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/CharSequence;

.field public final h:Lqs2;

.field public i:I

.field public j:I


# direct methods
.method public constructor <init>(Lbt2;Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Let2;->e:I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Let2;->i:I

    .line 4
    iget-object v0, p1, Lbt2;->a:Lqs2;

    .line 5
    iput-object v0, p0, Let2;->h:Lqs2;

    .line 6
    iget p1, p1, Lbt2;->c:I

    .line 7
    iput p1, p0, Let2;->j:I

    .line 8
    iput-object p2, p0, Let2;->g:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public final hasNext()Z
    .locals 9

    .line 1
    iget v0, p0, Let2;->e:I

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    if-eqz v4, :cond_b

    .line 2
    sget-object v4, Los2;->a:[I

    sub-int/2addr v0, v3

    aget v0, v4, v0

    if-eq v0, v3, :cond_a

    const/4 v4, 0x2

    if-eq v0, v4, :cond_9

    .line 3
    iput v1, p0, Let2;->e:I

    .line 4
    iget v0, p0, Let2;->i:I

    .line 5
    :cond_1
    :goto_1
    iget v1, p0, Let2;->i:I

    const/4 v4, 0x3

    const/4 v5, -0x1

    if-eq v1, v5, :cond_8

    .line 6
    move-object v6, p0

    check-cast v6, Lct2;

    .line 7
    iget-object v7, v6, Lct2;->k:Ldt2;

    iget-object v7, v7, Ldt2;->a:Lqs2;

    iget-object v6, v6, Let2;->g:Ljava/lang/CharSequence;

    invoke-virtual {v7, v6, v1}, Lqs2;->a(Ljava/lang/CharSequence;I)I

    move-result v1

    if-ne v1, v5, :cond_2

    .line 8
    iget-object v1, p0, Let2;->g:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 9
    iput v5, p0, Let2;->i:I

    goto :goto_2

    :cond_2
    add-int/lit8 v6, v1, 0x1

    .line 10
    iput v6, p0, Let2;->i:I

    .line 11
    :goto_2
    iget v6, p0, Let2;->i:I

    if-ne v6, v0, :cond_3

    add-int/lit8 v6, v6, 0x1

    .line 12
    iput v6, p0, Let2;->i:I

    .line 13
    iget-object v1, p0, Let2;->g:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-le v6, v1, :cond_1

    .line 14
    iput v5, p0, Let2;->i:I

    goto :goto_1

    :cond_3
    :goto_3
    if-ge v0, v1, :cond_4

    .line 15
    iget-object v6, p0, Let2;->h:Lqs2;

    iget-object v7, p0, Let2;->g:Ljava/lang/CharSequence;

    invoke-interface {v7, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lqs2;->b(C)Z

    move-result v6

    if-eqz v6, :cond_4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    :goto_4
    if-le v1, v0, :cond_5

    .line 16
    iget-object v6, p0, Let2;->h:Lqs2;

    iget-object v7, p0, Let2;->g:Ljava/lang/CharSequence;

    add-int/lit8 v8, v1, -0x1

    invoke-interface {v7, v8}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v6, v7}, Lqs2;->b(C)Z

    move-result v6

    if-eqz v6, :cond_5

    move v1, v8

    goto :goto_4

    .line 17
    :cond_5
    iget v6, p0, Let2;->j:I

    if-ne v6, v3, :cond_6

    .line 18
    iget-object v1, p0, Let2;->g:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    .line 19
    iput v5, p0, Let2;->i:I

    :goto_5
    if-le v1, v0, :cond_7

    .line 20
    iget-object v5, p0, Let2;->h:Lqs2;

    iget-object v6, p0, Let2;->g:Ljava/lang/CharSequence;

    add-int/lit8 v7, v1, -0x1

    invoke-interface {v6, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lqs2;->b(C)Z

    move-result v5

    if-eqz v5, :cond_7

    move v1, v7

    goto :goto_5

    :cond_6
    sub-int/2addr v6, v3

    .line 21
    iput v6, p0, Let2;->j:I

    .line 22
    :cond_7
    iget-object v5, p0, Let2;->g:Ljava/lang/CharSequence;

    invoke-interface {v5, v0, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_6

    .line 23
    :cond_8
    iput v4, p0, Let2;->e:I

    const/4 v0, 0x0

    .line 24
    :goto_6
    iput-object v0, p0, Let2;->f:Ljava/lang/Object;

    .line 25
    iget v0, p0, Let2;->e:I

    if-eq v0, v4, :cond_a

    .line 26
    iput v3, p0, Let2;->e:I

    :cond_9
    const/4 v2, 0x1

    :cond_a
    return v2

    .line 27
    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public final next()Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-virtual {p0}, Let2;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Let2;->e:I

    .line 3
    iget-object v0, p0, Let2;->f:Ljava/lang/Object;

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Let2;->f:Ljava/lang/Object;

    return-object v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public final remove()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
