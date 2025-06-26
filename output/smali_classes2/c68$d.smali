.class public final Lc68$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lc68$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lc68;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# instance fields
.field public final e:[Lc68$e;

.field public final f:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lc68$e;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lc68$e;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lc68$e;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lc68$d;->e:[Lc68$e;

    .line 4
    iput-boolean p2, p0, Lc68$d;->f:Z

    return-void
.end method

.method public constructor <init>([Lc68$e;Z)V
    .locals 0

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    iput-object p1, p0, Lc68$d;->e:[Lc68$e;

    .line 7
    iput-boolean p2, p0, Lc68$d;->f:Z

    return-void
.end method


# virtual methods
.method public i(Le68;Ljava/lang/StringBuilder;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    .line 2
    iget-boolean v1, p0, Lc68$d;->f:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 3
    iget v1, p1, Le68;->d:I

    add-int/2addr v1, v2

    iput v1, p1, Le68;->d:I

    .line 4
    :cond_0
    :try_start_0
    iget-object v1, p0, Lc68$d;->e:[Lc68$e;

    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v1, v4

    .line 5
    invoke-interface {v5, p1, p2}, Lc68$e;->i(Le68;Ljava/lang/StringBuilder;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 6
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-boolean p2, p0, Lc68$d;->f:Z

    if-eqz p2, :cond_1

    .line 8
    invoke-virtual {p1}, Le68;->a()V

    :cond_1
    return v2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_3
    iget-boolean p2, p0, Lc68$d;->f:Z

    if-eqz p2, :cond_4

    .line 10
    invoke-virtual {p1}, Le68;->a()V

    :cond_4
    return v2

    :catchall_0
    move-exception p2

    .line 11
    iget-boolean v0, p0, Lc68$d;->f:Z

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {p1}, Le68;->a()V

    .line 13
    :cond_5
    throw p2
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-object v1, p0, Lc68$d;->e:[Lc68$e;

    if-eqz v1, :cond_3

    .line 3
    iget-boolean v1, p0, Lc68$d;->f:Z

    if-eqz v1, :cond_0

    const-string v1, "["

    goto :goto_0

    :cond_0
    const-string v1, "("

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lc68$d;->e:[Lc68$e;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 5
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 6
    :cond_1
    iget-boolean v1, p0, Lc68$d;->f:Z

    if-eqz v1, :cond_2

    const-string v1, "]"

    goto :goto_2

    :cond_2
    const-string v1, ")"

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
