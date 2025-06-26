.class public final Lbu2;
.super Lnt2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnt2<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic g:Lcu2;


# direct methods
.method public constructor <init>(Lcu2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lbu2;->g:Lcu2;

    invoke-direct {p0}, Lnt2;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic get(I)Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lbu2;->g:Lcu2;

    .line 2
    iget v0, v0, Lcu2;->j:I

    .line 3
    invoke-static {p1, v0}, Lc50;->F4(II)I

    .line 4
    iget-object v0, p0, Lbu2;->g:Lcu2;

    .line 5
    iget-object v0, v0, Lcu2;->i:[Ljava/lang/Object;

    mul-int/lit8 p1, p1, 0x2

    .line 6
    aget-object v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    .line 7
    aget-object p1, v0, p1

    .line 8
    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, v1, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public final p()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lbu2;->g:Lcu2;

    .line 2
    iget v0, v0, Lcu2;->j:I

    return v0
.end method
