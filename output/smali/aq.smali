.class public final Laq;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final l:[C


# instance fields
.field public final a:Lwp;

.field public b:[C

.field public c:I

.field public d:I

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "[C>;"
        }
    .end annotation
.end field

.field public f:Z

.field public g:I

.field public h:[C

.field public i:I

.field public j:Ljava/lang/String;

.field public k:[C


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [C

    .line 1
    sput-object v0, Laq;->l:[C

    return-void
.end method

.method public constructor <init>(Lwp;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Laq;->a:Lwp;

    return-void
.end method


# virtual methods
.method public final a(I)[C
    .locals 2

    .line 1
    iget-object v0, p0, Laq;->a:Lwp;

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1, p1}, Lwp;->a(II)[C

    move-result-object p1

    return-object p1

    :cond_0
    const/16 v0, 0x1f4

    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-array p1, p1, [C

    return-object p1
.end method

.method public final b()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Laq;->f:Z

    .line 2
    iget-object v1, p0, Laq;->e:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 3
    iput v0, p0, Laq;->g:I

    iput v0, p0, Laq;->i:I

    return-void
.end method

.method public c()[C
    .locals 7

    .line 1
    iget-object v0, p0, Laq;->k:[C

    if-nez v0, :cond_7

    .line 2
    iget-object v0, p0, Laq;->j:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    goto :goto_1

    .line 4
    :cond_0
    iget v0, p0, Laq;->c:I

    const/4 v1, 0x1

    if-ltz v0, :cond_3

    .line 5
    iget v2, p0, Laq;->d:I

    if-ge v2, v1, :cond_1

    .line 6
    sget-object v0, Laq;->l:[C

    goto :goto_1

    :cond_1
    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Laq;->b:[C

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v0

    goto :goto_1

    .line 8
    :cond_2
    iget-object v1, p0, Laq;->b:[C

    add-int/2addr v2, v0

    invoke-static {v1, v0, v2}, Ljava/util/Arrays;->copyOfRange([CII)[C

    move-result-object v0

    goto :goto_1

    .line 9
    :cond_3
    invoke-virtual {p0}, Laq;->l()I

    move-result v0

    if-ge v0, v1, :cond_4

    .line 10
    sget-object v0, Laq;->l:[C

    goto :goto_1

    .line 11
    :cond_4
    new-array v0, v0, [C

    .line 12
    iget-object v1, p0, Laq;->e:Ljava/util/ArrayList;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    .line 14
    iget-object v5, p0, Laq;->e:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [C

    .line 15
    array-length v6, v5

    .line 16
    invoke-static {v5, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    .line 17
    :cond_6
    iget-object v1, p0, Laq;->h:[C

    iget v3, p0, Laq;->i:I

    invoke-static {v1, v2, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 18
    :goto_1
    iput-object v0, p0, Laq;->k:[C

    :cond_7
    return-object v0
.end method

.method public d()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Laq;->j:Ljava/lang/String;

    if-nez v0, :cond_6

    .line 2
    iget-object v0, p0, Laq;->k:[C

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Laq;->k:[C

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([C)V

    iput-object v0, p0, Laq;->j:Ljava/lang/String;

    goto :goto_2

    .line 4
    :cond_0
    iget v0, p0, Laq;->c:I

    const-string v1, ""

    if-ltz v0, :cond_2

    .line 5
    iget v0, p0, Laq;->d:I

    const/4 v2, 0x1

    if-ge v0, v2, :cond_1

    .line 6
    iput-object v1, p0, Laq;->j:Ljava/lang/String;

    return-object v1

    .line 7
    :cond_1
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Laq;->b:[C

    iget v2, p0, Laq;->c:I

    iget v3, p0, Laq;->d:I

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    iput-object v0, p0, Laq;->j:Ljava/lang/String;

    goto :goto_2

    .line 8
    :cond_2
    iget v0, p0, Laq;->g:I

    .line 9
    iget v2, p0, Laq;->i:I

    const/4 v3, 0x0

    if-nez v0, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    new-instance v1, Ljava/lang/String;

    iget-object v0, p0, Laq;->h:[C

    invoke-direct {v1, v0, v3, v2}, Ljava/lang/String;-><init>([CII)V

    :goto_0
    iput-object v1, p0, Laq;->j:Ljava/lang/String;

    goto :goto_2

    .line 11
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 12
    iget-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_5

    .line 14
    iget-object v4, p0, Laq;->e:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [C

    .line 15
    array-length v5, v4

    invoke-virtual {v1, v4, v3, v5}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 16
    :cond_5
    iget-object v0, p0, Laq;->h:[C

    iget v2, p0, Laq;->i:I

    invoke-virtual {v1, v0, v3, v2}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Laq;->j:Ljava/lang/String;

    .line 18
    :cond_6
    :goto_2
    iget-object v0, p0, Laq;->j:Ljava/lang/String;

    return-object v0
.end method

.method public e()[C
    .locals 2

    const/4 v0, -0x1

    .line 1
    iput v0, p0, Laq;->c:I

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Laq;->i:I

    .line 3
    iput v0, p0, Laq;->d:I

    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Laq;->b:[C

    .line 5
    iput-object v1, p0, Laq;->j:Ljava/lang/String;

    .line 6
    iput-object v1, p0, Laq;->k:[C

    .line 7
    iget-boolean v1, p0, Laq;->f:Z

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {p0}, Laq;->b()V

    .line 9
    :cond_0
    iget-object v1, p0, Laq;->h:[C

    if-nez v1, :cond_1

    .line 10
    invoke-virtual {p0, v0}, Laq;->a(I)[C

    move-result-object v1

    iput-object v1, p0, Laq;->h:[C

    :cond_1
    return-object v1
.end method

.method public final f()V
    .locals 3

    .line 1
    iget-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    .line 3
    :cond_0
    iget-object v0, p0, Laq;->h:[C

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Laq;->f:Z

    .line 5
    iget-object v1, p0, Laq;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6
    iget v1, p0, Laq;->g:I

    array-length v2, v0

    add-int/2addr v1, v2

    iput v1, p0, Laq;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Laq;->i:I

    .line 8
    array-length v0, v0

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/high16 v0, 0x10000

    .line 9
    :cond_2
    :goto_0
    new-array v0, v0, [C

    .line 10
    iput-object v0, p0, Laq;->h:[C

    return-void
.end method

.method public g()[C
    .locals 3

    .line 1
    iget-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    :cond_0
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Laq;->f:Z

    .line 4
    iget-object v0, p0, Laq;->e:Ljava/util/ArrayList;

    iget-object v1, p0, Laq;->h:[C

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v0, p0, Laq;->h:[C

    array-length v0, v0

    .line 6
    iget v1, p0, Laq;->g:I

    add-int/2addr v1, v0

    iput v1, p0, Laq;->g:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Laq;->i:I

    shr-int/lit8 v1, v0, 0x1

    add-int/2addr v0, v1

    const/high16 v1, 0x10000

    const/16 v2, 0x1f4

    if-ge v0, v2, :cond_1

    const/16 v0, 0x1f4

    goto :goto_0

    :cond_1
    if-le v0, v1, :cond_2

    const/high16 v0, 0x10000

    .line 8
    :cond_2
    :goto_0
    new-array v0, v0, [C

    .line 9
    iput-object v0, p0, Laq;->h:[C

    return-object v0
.end method

.method public h()[C
    .locals 2

    .line 1
    iget v0, p0, Laq;->c:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Laq;->m(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Laq;->h:[C

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p0, v0}, Laq;->a(I)[C

    move-result-object v0

    iput-object v0, p0, Laq;->h:[C

    goto :goto_0

    .line 5
    :cond_1
    iget v1, p0, Laq;->i:I

    array-length v0, v0

    if-lt v1, v0, :cond_2

    .line 6
    invoke-virtual {p0}, Laq;->f()V

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Laq;->h:[C

    return-object v0
.end method

.method public i()[C
    .locals 1

    .line 1
    iget v0, p0, Laq;->c:I

    if-ltz v0, :cond_0

    iget-object v0, p0, Laq;->b:[C

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Laq;->k:[C

    if-eqz v0, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-object v0, p0, Laq;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    iput-object v0, p0, Laq;->k:[C

    return-object v0

    .line 5
    :cond_2
    iget-boolean v0, p0, Laq;->f:Z

    if-nez v0, :cond_4

    .line 6
    iget-object v0, p0, Laq;->h:[C

    if-nez v0, :cond_3

    sget-object v0, Laq;->l:[C

    :cond_3
    return-object v0

    .line 7
    :cond_4
    invoke-virtual {p0}, Laq;->c()[C

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Laq;->c:I

    if-ltz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k([CII)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Laq;->j:Ljava/lang/String;

    .line 2
    iput-object v0, p0, Laq;->k:[C

    .line 3
    iput-object p1, p0, Laq;->b:[C

    .line 4
    iput p2, p0, Laq;->c:I

    .line 5
    iput p3, p0, Laq;->d:I

    .line 6
    iget-boolean p1, p0, Laq;->f:Z

    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p0}, Laq;->b()V

    :cond_0
    return-void
.end method

.method public l()I
    .locals 2

    .line 1
    iget v0, p0, Laq;->c:I

    if-ltz v0, :cond_0

    .line 2
    iget v0, p0, Laq;->d:I

    return v0

    .line 3
    :cond_0
    iget-object v0, p0, Laq;->k:[C

    if-eqz v0, :cond_1

    .line 4
    array-length v0, v0

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Laq;->j:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0

    .line 7
    :cond_2
    iget v0, p0, Laq;->g:I

    iget v1, p0, Laq;->i:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final m(I)V
    .locals 5

    .line 1
    iget v0, p0, Laq;->d:I

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Laq;->d:I

    .line 3
    iget-object v2, p0, Laq;->b:[C

    const/4 v3, 0x0

    .line 4
    iput-object v3, p0, Laq;->b:[C

    .line 5
    iget v3, p0, Laq;->c:I

    const/4 v4, -0x1

    .line 6
    iput v4, p0, Laq;->c:I

    add-int/2addr p1, v0

    .line 7
    iget-object v4, p0, Laq;->h:[C

    if-eqz v4, :cond_0

    array-length v4, v4

    if-le p1, v4, :cond_1

    .line 8
    :cond_0
    invoke-virtual {p0, p1}, Laq;->a(I)[C

    move-result-object p1

    iput-object p1, p0, Laq;->h:[C

    :cond_1
    if-lez v0, :cond_2

    .line 9
    iget-object p1, p0, Laq;->h:[C

    invoke-static {v2, v3, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    :cond_2
    iput v1, p0, Laq;->g:I

    .line 11
    iput v0, p0, Laq;->i:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Laq;->d()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
