.class public Lgn5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:I

.field public final synthetic g:Z

.field public final synthetic h:Lhn5;


# direct methods
.method public constructor <init>(Lhn5;IZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lgn5;->h:Lhn5;

    iput p2, p0, Lgn5;->f:I

    iput-boolean p3, p0, Lgn5;->g:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Lgn5;->e:I

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .line 1
    iget-boolean v0, p0, Lgn5;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lgn5;->e:I

    if-ltz v0, :cond_1

    goto :goto_0

    :cond_0
    iget v0, p0, Lgn5;->e:I

    iget-object v1, p0, Lgn5;->h:Lhn5;

    .line 2
    iget-object v1, v1, Lhn5;->e:[Ljava/lang/Object;

    .line 3
    array-length v1, v1

    if-ge v0, v1, :cond_1

    :goto_0
    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lgn5;->h:Lhn5;

    .line 2
    iget-object v1, v0, Lhn5;->e:[Ljava/lang/Object;

    .line 3
    iget v2, p0, Lgn5;->e:I

    aget-object v1, v1, v2

    .line 4
    iget-object v0, v0, Lhn5;->f:[Ljava/lang/Object;

    .line 5
    aget-object v0, v0, v2

    .line 6
    iget-boolean v3, p0, Lgn5;->g:Z

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    :goto_0
    iput v2, p0, Lgn5;->e:I

    .line 7
    new-instance v2, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v2, v1, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Can\'t remove elements from ImmutableSortedMap"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
