.class public final Lxn7$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;
.implements Lwm7;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lxn7;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ldn7;",
        ">;",
        "Lwm7;"
    }
.end annotation


# instance fields
.field public e:I

.field public f:I

.field public g:I

.field public h:Ldn7;

.field public i:I

.field public final synthetic j:Lxn7;


# direct methods
.method public constructor <init>(Lxn7;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lxn7$a;->j:Lxn7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lxn7$a;->e:I

    .line 3
    iget v0, p1, Lxn7;->b:I

    .line 4
    iget-object p1, p1, Lxn7;->a:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Len7;->a(III)I

    move-result p1

    iput p1, p0, Lxn7$a;->f:I

    .line 6
    iput p1, p0, Lxn7$a;->g:I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 7

    .line 1
    iget v0, p0, Lxn7$a;->g:I

    const/4 v1, 0x0

    if-gez v0, :cond_0

    .line 2
    iput v1, p0, Lxn7$a;->e:I

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lxn7$a;->h:Ldn7;

    goto/16 :goto_1

    .line 4
    :cond_0
    iget-object v2, p0, Lxn7$a;->j:Lxn7;

    .line 5
    iget v3, v2, Lxn7;->c:I

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-lez v3, :cond_1

    .line 6
    iget v6, p0, Lxn7$a;->i:I

    add-int/2addr v6, v5

    iput v6, p0, Lxn7$a;->i:I

    if-ge v6, v3, :cond_2

    .line 7
    :cond_1
    iget-object v2, v2, Lxn7;->a:Ljava/lang/CharSequence;

    .line 8
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v0, v2, :cond_3

    .line 9
    :cond_2
    iget v0, p0, Lxn7$a;->f:I

    new-instance v1, Ldn7;

    iget-object v2, p0, Lxn7$a;->j:Lxn7;

    .line 10
    iget-object v2, v2, Lxn7;->a:Ljava/lang/CharSequence;

    .line 11
    invoke-static {v2}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ldn7;-><init>(II)V

    iput-object v1, p0, Lxn7$a;->h:Ldn7;

    .line 12
    iput v4, p0, Lxn7$a;->g:I

    goto :goto_0

    .line 13
    :cond_3
    iget-object v0, p0, Lxn7$a;->j:Lxn7;

    .line 14
    iget-object v2, v0, Lxn7;->d:Ltl7;

    .line 15
    iget-object v0, v0, Lxn7;->a:Ljava/lang/CharSequence;

    .line 16
    iget v3, p0, Lxn7$a;->g:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v0, v3}, Ltl7;->b(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrj7;

    if-nez v0, :cond_4

    .line 17
    iget v0, p0, Lxn7$a;->f:I

    new-instance v1, Ldn7;

    iget-object v2, p0, Lxn7$a;->j:Lxn7;

    .line 18
    iget-object v2, v2, Lxn7;->a:Ljava/lang/CharSequence;

    .line 19
    invoke-static {v2}, Lco7;->g(Ljava/lang/CharSequence;)I

    move-result v2

    invoke-direct {v1, v0, v2}, Ldn7;-><init>(II)V

    iput-object v1, p0, Lxn7$a;->h:Ldn7;

    .line 20
    iput v4, p0, Lxn7$a;->g:I

    goto :goto_0

    .line 21
    :cond_4
    iget-object v2, v0, Lrj7;->e:Ljava/lang/Object;

    .line 22
    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 23
    iget-object v0, v0, Lrj7;->f:Ljava/lang/Object;

    .line 24
    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 25
    iget v3, p0, Lxn7$a;->f:I

    invoke-static {v3, v2}, Len7;->d(II)Ldn7;

    move-result-object v3

    iput-object v3, p0, Lxn7$a;->h:Ldn7;

    add-int/2addr v2, v0

    .line 26
    iput v2, p0, Lxn7$a;->f:I

    if-nez v0, :cond_5

    const/4 v1, 0x1

    :cond_5
    add-int/2addr v2, v1

    .line 27
    iput v2, p0, Lxn7$a;->g:I

    .line 28
    :goto_0
    iput v5, p0, Lxn7$a;->e:I

    :goto_1
    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lxn7$a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lxn7$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lxn7$a;->e:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 3

    .line 1
    iget v0, p0, Lxn7$a;->e:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lxn7$a;->a()V

    .line 3
    :cond_0
    iget v0, p0, Lxn7$a;->e:I

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lxn7$a;->h:Ldn7;

    const-string v2, "null cannot be cast to non-null type kotlin.ranges.IntRange"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    iput-object v2, p0, Lxn7$a;->h:Ldn7;

    .line 6
    iput v1, p0, Lxn7$a;->e:I

    return-object v0

    .line 7
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Operation is not supported for read-only collection"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
