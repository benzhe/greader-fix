.class public final Lvp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lvp$b;,
        Lvp$a;
    }
.end annotation


# instance fields
.field public final a:Lvp;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lvp$b;",
            ">;"
        }
    .end annotation
.end field

.field public final c:I

.field public final d:I

.field public e:Z

.field public f:[Ljava/lang/String;

.field public g:[Lvp$a;

.field public h:I

.field public i:I

.field public j:I

.field public k:I

.field public l:Z

.field public m:Ljava/util/BitSet;


# direct methods
.method public constructor <init>(I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lvp;->a:Lvp;

    .line 3
    iput p1, p0, Lvp;->c:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lvp;->e:Z

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lvp;->d:I

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lvp;->l:Z

    .line 7
    iput p1, p0, Lvp;->k:I

    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    .line 9
    new-instance v1, Lvp$b;

    const/16 v2, 0x40

    new-array v2, v2, [Ljava/lang/String;

    const/16 v3, 0x20

    new-array v3, v3, [Lvp$a;

    invoke-direct {v1, p1, p1, v2, v3}, Lvp$b;-><init>(II[Ljava/lang/String;[Lvp$a;)V

    .line 10
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lvp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>(Lvp;IILvp$b;)V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lvp;->a:Lvp;

    .line 13
    iput p3, p0, Lvp;->c:I

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lvp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    .line 15
    iput p2, p0, Lvp;->d:I

    .line 16
    sget-object p1, Lwo$a;->g:Lwo$a;

    invoke-virtual {p1, p2}, Lwo$a;->i(I)Z

    move-result p1

    iput-boolean p1, p0, Lvp;->e:Z

    .line 17
    iget-object p1, p4, Lvp$b;->c:[Ljava/lang/String;

    iput-object p1, p0, Lvp;->f:[Ljava/lang/String;

    .line 18
    iget-object p2, p4, Lvp$b;->d:[Lvp$a;

    iput-object p2, p0, Lvp;->g:[Lvp$a;

    .line 19
    iget p2, p4, Lvp$b;->a:I

    iput p2, p0, Lvp;->h:I

    .line 20
    iget p2, p4, Lvp$b;->b:I

    iput p2, p0, Lvp;->k:I

    .line 21
    array-length p1, p1

    shr-int/lit8 p2, p1, 0x2

    sub-int p2, p1, p2

    .line 22
    iput p2, p0, Lvp;->i:I

    const/4 p2, 0x1

    sub-int/2addr p1, p2

    .line 23
    iput p1, p0, Lvp;->j:I

    .line 24
    iput-boolean p2, p0, Lvp;->l:Z

    return-void
.end method


# virtual methods
.method public a(I)I
    .locals 1

    ushr-int/lit8 v0, p1, 0xf

    add-int/2addr p1, v0

    shl-int/lit8 v0, p1, 0x7

    xor-int/2addr p1, v0

    ushr-int/lit8 v0, p1, 0x3

    add-int/2addr p1, v0

    .line 1
    iget v0, p0, Lvp;->j:I

    and-int/2addr p1, v0

    return p1
.end method

.method public b(Ljava/lang/String;)I
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 2
    iget v1, p0, Lvp;->c:I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    mul-int/lit8 v1, v1, 0x21

    .line 3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/2addr v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public c([CIII)Ljava/lang/String;
    .locals 11

    const/4 v0, 0x1

    if-ge p3, v0, :cond_0

    const-string p1, ""

    return-object p1

    .line 1
    :cond_0
    iget-boolean v1, p0, Lvp;->e:Z

    if-nez v1, :cond_1

    .line 2
    new-instance p4, Ljava/lang/String;

    invoke-direct {p4, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    return-object p4

    .line 3
    :cond_1
    invoke-virtual {p0, p4}, Lvp;->a(I)I

    move-result p4

    .line 4
    iget-object v1, p0, Lvp;->f:[Ljava/lang/String;

    aget-object v1, v1, p4

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, p3, :cond_3

    const/4 v3, 0x0

    .line 6
    :cond_2
    invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int v5, p2, v3

    aget-char v5, p1, v5

    if-ne v4, v5, :cond_3

    add-int/lit8 v3, v3, 0x1

    if-ne v3, p3, :cond_2

    return-object v1

    .line 7
    :cond_3
    iget-object v1, p0, Lvp;->g:[Lvp$a;

    shr-int/lit8 v3, p4, 0x1

    aget-object v1, v1, v3

    if-eqz v1, :cond_7

    .line 8
    invoke-virtual {v1, p1, p2, p3}, Lvp$a;->a([CII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    return-object v3

    .line 9
    :cond_4
    iget-object v1, v1, Lvp$a;->b:Lvp$a;

    :goto_0
    if-eqz v1, :cond_6

    .line 10
    invoke-virtual {v1, p1, p2, p3}, Lvp$a;->a([CII)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_5

    goto :goto_1

    .line 11
    :cond_5
    iget-object v1, v1, Lvp$a;->b:Lvp$a;

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_7

    return-object v3

    .line 12
    :cond_7
    iget-boolean v1, p0, Lvp;->l:Z

    if-eqz v1, :cond_8

    .line 13
    iget-object v1, p0, Lvp;->f:[Ljava/lang/String;

    .line 14
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iput-object v1, p0, Lvp;->f:[Ljava/lang/String;

    .line 15
    iget-object v1, p0, Lvp;->g:[Lvp$a;

    .line 16
    array-length v3, v1

    invoke-static {v1, v3}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lvp$a;

    iput-object v1, p0, Lvp;->g:[Lvp$a;

    .line 17
    iput-boolean v2, p0, Lvp;->l:Z

    goto/16 :goto_9

    .line 18
    :cond_8
    iget v1, p0, Lvp;->h:I

    iget v3, p0, Lvp;->i:I

    if-lt v1, v3, :cond_13

    .line 19
    iget-object p4, p0, Lvp;->f:[Ljava/lang/String;

    array-length v1, p4

    add-int v3, v1, v1

    const/high16 v4, 0x10000

    if-le v3, v4, :cond_9

    .line 20
    iput v2, p0, Lvp;->h:I

    .line 21
    iput-boolean v2, p0, Lvp;->e:Z

    const/16 p4, 0x40

    new-array p4, p4, [Ljava/lang/String;

    .line 22
    iput-object p4, p0, Lvp;->f:[Ljava/lang/String;

    const/16 p4, 0x20

    new-array p4, p4, [Lvp$a;

    .line 23
    iput-object p4, p0, Lvp;->g:[Lvp$a;

    const/16 p4, 0x3f

    .line 24
    iput p4, p0, Lvp;->j:I

    .line 25
    iput-boolean v2, p0, Lvp;->l:Z

    goto/16 :goto_7

    .line 26
    :cond_9
    iget-object v2, p0, Lvp;->g:[Lvp$a;

    .line 27
    new-array v4, v3, [Ljava/lang/String;

    iput-object v4, p0, Lvp;->f:[Ljava/lang/String;

    shr-int/lit8 v4, v3, 0x1

    .line 28
    new-array v4, v4, [Lvp$a;

    iput-object v4, p0, Lvp;->g:[Lvp$a;

    add-int/lit8 v4, v3, -0x1

    .line 29
    iput v4, p0, Lvp;->j:I

    shr-int/lit8 v4, v3, 0x2

    sub-int/2addr v3, v4

    .line 30
    iput v3, p0, Lvp;->i:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_2
    if-ge v3, v1, :cond_c

    .line 31
    aget-object v6, p4, v3

    if-eqz v6, :cond_b

    add-int/lit8 v4, v4, 0x1

    .line 32
    invoke-virtual {p0, v6}, Lvp;->b(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lvp;->a(I)I

    move-result v7

    .line 33
    iget-object v8, p0, Lvp;->f:[Ljava/lang/String;

    aget-object v9, v8, v7

    if-nez v9, :cond_a

    .line 34
    aput-object v6, v8, v7

    goto :goto_3

    :cond_a
    shr-int/lit8 v7, v7, 0x1

    .line 35
    new-instance v8, Lvp$a;

    iget-object v9, p0, Lvp;->g:[Lvp$a;

    aget-object v10, v9, v7

    invoke-direct {v8, v6, v10}, Lvp$a;-><init>(Ljava/lang/String;Lvp$a;)V

    .line 36
    aput-object v8, v9, v7

    .line 37
    iget v6, v8, Lvp$a;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_b
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_c
    shr-int/lit8 p4, v1, 0x1

    const/4 v1, 0x0

    :goto_4
    if-ge v1, p4, :cond_f

    .line 38
    aget-object v3, v2, v1

    :goto_5
    if-eqz v3, :cond_e

    add-int/lit8 v4, v4, 0x1

    .line 39
    iget-object v6, v3, Lvp$a;->a:Ljava/lang/String;

    .line 40
    invoke-virtual {p0, v6}, Lvp;->b(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {p0, v7}, Lvp;->a(I)I

    move-result v7

    .line 41
    iget-object v8, p0, Lvp;->f:[Ljava/lang/String;

    aget-object v9, v8, v7

    if-nez v9, :cond_d

    .line 42
    aput-object v6, v8, v7

    goto :goto_6

    :cond_d
    shr-int/lit8 v7, v7, 0x1

    .line 43
    new-instance v8, Lvp$a;

    iget-object v9, p0, Lvp;->g:[Lvp$a;

    aget-object v10, v9, v7

    invoke-direct {v8, v6, v10}, Lvp$a;-><init>(Ljava/lang/String;Lvp$a;)V

    .line 44
    aput-object v8, v9, v7

    .line 45
    iget v6, v8, Lvp$a;->c:I

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 46
    :goto_6
    iget-object v3, v3, Lvp$a;->b:Lvp$a;

    goto :goto_5

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 47
    :cond_f
    iput v5, p0, Lvp;->k:I

    const/4 p4, 0x0

    .line 48
    iput-object p4, p0, Lvp;->m:Ljava/util/BitSet;

    .line 49
    iget p4, p0, Lvp;->h:I

    if-ne v4, p4, :cond_12

    .line 50
    :goto_7
    iget p4, p0, Lvp;->c:I

    add-int v1, p3, p2

    move v2, p2

    :goto_8
    if-ge v2, v1, :cond_10

    mul-int/lit8 p4, p4, 0x21

    .line 51
    aget-char v3, p1, v2

    add-int/2addr p4, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_10
    if-nez p4, :cond_11

    const/4 p4, 0x1

    .line 52
    :cond_11
    invoke-virtual {p0, p4}, Lvp;->a(I)I

    move-result p4

    goto :goto_9

    .line 53
    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 p2, 0x2

    new-array p2, p2, [Ljava/lang/Object;

    iget p3, p0, Lvp;->h:I

    .line 54
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    const/4 p4, 0x0

    aput-object p3, p2, p4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, p2, v0

    const-string p3, "Internal error on SymbolTable.rehash(): had %d entries; now have %d"

    .line 55
    invoke-static {p3, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 56
    :cond_13
    :goto_9
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 57
    sget-object p1, Lwo$a;->f:Lwo$a;

    iget p2, p0, Lvp;->d:I

    invoke-virtual {p1, p2}, Lwo$a;->i(I)Z

    move-result p1

    if-eqz p1, :cond_17

    .line 58
    sget-object p1, Lzp;->f:Lzp;

    .line 59
    invoke-virtual {p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    if-eqz p2, :cond_14

    :goto_a
    move-object v1, p2

    goto :goto_c

    .line 60
    :cond_14
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result p2

    const/16 p3, 0xb4

    if-lt p2, p3, :cond_16

    .line 61
    iget-object p2, p1, Lzp;->e:Ljava/lang/Object;

    monitor-enter p2

    .line 62
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    move-result v2

    if-lt v2, p3, :cond_15

    .line 63
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 64
    :cond_15
    monitor-exit p2

    goto :goto_b

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 65
    :cond_16
    :goto_b
    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object p2

    .line 66
    invoke-virtual {p1, p2, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    .line 67
    :cond_17
    :goto_c
    iget p1, p0, Lvp;->h:I

    add-int/2addr p1, v0

    iput p1, p0, Lvp;->h:I

    .line 68
    iget-object p1, p0, Lvp;->f:[Ljava/lang/String;

    aget-object p2, p1, p4

    if-nez p2, :cond_18

    .line 69
    aput-object v1, p1, p4

    goto/16 :goto_e

    :cond_18
    shr-int/lit8 p1, p4, 0x1

    .line 70
    new-instance p2, Lvp$a;

    iget-object p3, p0, Lvp;->g:[Lvp$a;

    aget-object v0, p3, p1

    invoke-direct {p2, v1, v0}, Lvp$a;-><init>(Ljava/lang/String;Lvp$a;)V

    .line 71
    iget v0, p2, Lvp$a;->c:I

    const/16 v2, 0x64

    if-le v0, v2, :cond_1c

    .line 72
    iget-object p3, p0, Lvp;->m:Ljava/util/BitSet;

    if-nez p3, :cond_19

    .line 73
    new-instance p3, Ljava/util/BitSet;

    invoke-direct {p3}, Ljava/util/BitSet;-><init>()V

    iput-object p3, p0, Lvp;->m:Ljava/util/BitSet;

    .line 74
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    goto :goto_d

    .line 75
    :cond_19
    invoke-virtual {p3, p1}, Ljava/util/BitSet;->get(I)Z

    move-result p3

    if-eqz p3, :cond_1b

    .line 76
    sget-object p3, Lwo$a;->h:Lwo$a;

    iget v0, p0, Lvp;->d:I

    invoke-virtual {p3, v0}, Lwo$a;->i(I)Z

    move-result p3

    if-nez p3, :cond_1a

    const/4 p3, 0x0

    .line 77
    iput-boolean p3, p0, Lvp;->e:Z

    goto :goto_d

    .line 78
    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Longest collision chain in symbol table (of size "

    invoke-static {p2}, Ljo;->z(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget p3, p0, Lvp;->h:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ") now exceeds maximum, "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " -- suspect a DoS attack based on hash collisions"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 79
    :cond_1b
    iget-object p3, p0, Lvp;->m:Ljava/util/BitSet;

    invoke-virtual {p3, p1}, Ljava/util/BitSet;->set(I)V

    .line 80
    :goto_d
    iget-object p3, p0, Lvp;->f:[Ljava/lang/String;

    iget-object v0, p2, Lvp$a;->a:Ljava/lang/String;

    aput-object v0, p3, p4

    .line 81
    iget-object p3, p0, Lvp;->g:[Lvp$a;

    const/4 p4, 0x0

    aput-object p4, p3, p1

    .line 82
    iget p1, p0, Lvp;->h:I

    iget p2, p2, Lvp$a;->c:I

    sub-int/2addr p1, p2

    iput p1, p0, Lvp;->h:I

    const/4 p1, -0x1

    .line 83
    iput p1, p0, Lvp;->k:I

    goto :goto_e

    .line 84
    :cond_1c
    aput-object p2, p3, p1

    .line 85
    iget p1, p0, Lvp;->k:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lvp;->k:I

    :goto_e
    return-object v1
.end method
