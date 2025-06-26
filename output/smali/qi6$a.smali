.class public Lqi6$a;
.super Lqi6$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lqi6;->z()Lqi6$f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public e:I

.field public final f:I

.field public final synthetic g:Lqi6;


# direct methods
.method public constructor <init>(Lqi6;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lqi6$a;->g:Lqi6;

    invoke-direct {p0}, Lqi6$b;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lqi6$a;->e:I

    .line 3
    invoke-virtual {p1}, Lqi6;->size()I

    move-result p1

    iput p1, p0, Lqi6$a;->f:I

    return-void
.end method


# virtual methods
.method public b()B
    .locals 2

    .line 1
    iget v0, p0, Lqi6$a;->e:I

    .line 2
    iget v1, p0, Lqi6$a;->f:I

    if-ge v0, v1, :cond_0

    add-int/lit8 v1, v0, 0x1

    .line 3
    iput v1, p0, Lqi6$a;->e:I

    .line 4
    iget-object v1, p0, Lqi6$a;->g:Lqi6;

    invoke-virtual {v1, v0}, Lqi6;->u(I)B

    move-result v0

    return v0

    .line 5
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget v0, p0, Lqi6$a;->e:I

    iget v1, p0, Lqi6$a;->f:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
